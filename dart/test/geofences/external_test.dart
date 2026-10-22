import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

/// Answers every GraphQL request with [respond] and records the bodies.
class _FakeServer {
  _FakeServer(this._server);

  final HttpServer _server;
  final List<Map<String, dynamic>> requests = [];
  Map<String, dynamic> Function(Map<String, dynamic> body) respond = (_) => {};

  Uri get uri => Uri.parse('http://${_server.address.host}:${_server.port}/graphql');

  static Future<_FakeServer> start() async {
    final fake = _FakeServer(await HttpServer.bind(InternetAddress.loopbackIPv4, 0));
    fake._server.listen((request) async {
      final body = jsonDecode(await utf8.decoder.bind(request).join()) as Map<String, dynamic>;
      fake.requests.add(body);
      request.response
        ..headers.contentType = ContentType.json
        ..write(jsonEncode(fake.respond(body)));
      await request.response.close();
    });
    return fake;
  }

  Future<void> close() => _server.close(force: true);
}

String _query(Map<String, dynamic> body) => (body['query'] as String).replaceAll(RegExp(r'\s+'), ' ').trim();

void main() {
  group('ExternalResource / ExternalGeofence models', () {
    test('ExternalResource JSON round trip', () {
      const resource = ExternalResource(wialonId: '10', name: 'Fleet');
      expect(ExternalResource.fromJson(resource.toJson()), resource);
      expect(resource.toJson(), {'wialonId': '10', 'name': 'Fleet'});
    });

    test('ExternalGeofence JSON round trip', () {
      const geofence = ExternalGeofence(wialonId: '20', name: 'Depot');
      expect(ExternalGeofence.fromJson(geofence.toJson()), geofence);
      expect(geofence.toJson(), {'wialonId': '20', 'name': 'Depot'});
    });
  });

  group('reverseGeocodeAddressesDecoder', () {
    test('keeps only non-empty GeocodeResult addresses', () {
      final addresses = reverseGeocodeAddressesDecoder([
        {'__typename': 'GeocodeResult', 'address': 'Calle 50, Panama'},
        {'__typename': 'Geofence', 'address': 'ignored'},
        {'__typename': 'GeocodeResult', 'address': ''},
        {'__typename': 'GeocodeResult'},
      ]);

      expect(addresses, ['Calle 50, Panama']);
    });

    test('a null result decodes to an empty list', () {
      expect(reverseGeocodeAddressesDecoder(null), isEmpty);
    });
  });

  group('requests', () {
    late _FakeServer server;

    setUp(() async {
      HttpOverrides.global = null;
      server = await _FakeServer.start();
    });

    tearDown(() => server.close());

    test('ExternalResource.fetchAll sends the account id and decodes the result', () async {
      server.respond = (_) => {
        'data': {
          'externalResources': {
            'status': 'OK',
            'result': [
              {'wialonId': '10', 'name': 'Fleet'},
            ],
          },
        },
      };

      final resources = await ExternalResource.fetchAll(externalAccountId: 'a1', apiToken: 'token', uri: server.uri);

      expect(resources, [const ExternalResource(wialonId: '10', name: 'Fleet')]);
      expect(_query(server.requests.single), contains('externalResources(externalAccountId: \$externalAccountId)'));
      expect(_query(server.requests.single), isNot(contains('apiToken')));
      expect(server.requests.single['variables'], {'externalAccountId': 'a1'});
    });

    test('ExternalGeofence.fetchAll sends the account and resource ids', () async {
      server.respond = (_) => {
        'data': {
          'externalGeofences': {
            'status': 'OK',
            'result': [
              {'wialonId': '20', 'name': 'Depot'},
            ],
          },
        },
      };

      final geofences = await ExternalGeofence.fetchAll(
        externalAccountId: 'a1',
        wialonResourceId: '10',
        apiToken: 'token',
        uri: server.uri,
      );

      expect(geofences, [const ExternalGeofence(wialonId: '20', name: 'Depot')]);
      expect(
        _query(server.requests.single),
        contains('externalGeofences(externalAccountId: \$externalAccountId, resourceId: \$resourceId)'),
      );
      expect(server.requests.single['variables'], {'externalAccountId': 'a1', 'resourceId': '10'});
    });

    test('ExternalGeofence.import sends the WialonGeofenceInput payload', () async {
      server.respond = (_) => {
        'data': {
          'importGeofencesFromExternal': {'status': 'OK'},
        },
      };

      final (status, errors, _) = await ExternalGeofence.import(
        externalAccountId: 'a1',
        wialonResourceId: '10',
        wialonGeofenceIds: ['20', '21'],
        createAsTag: true,
        apiToken: 'token',
        uri: server.uri,
      );

      expect(status, ApiStatus.ok);
      expect(errors, isNull);
      expect(_query(server.requests.single), contains('importGeofencesFromExternal(data: \$data)'));
      expect(server.requests.single['variables'], {
        'data': {
          'externalAccountId': 'a1',
          'resourceId': '10',
          'geofencesIds': ['20', '21'],
          'createResourceAsTag': true,
        },
      });
    });

    test('a failing status is reported and returns the empty value', () async {
      server.respond = (_) => {
        'data': {
          'importGeofencesFromExternal': {'status': 'UNAUTHORIZED'},
          'externalResources': {'status': 'UNAUTHORIZED'},
          'reverseGeocode': {'status': 'UNAUTHORIZED'},
        },
      };
      final reported = <ApiStatus>[];

      final (importStatus, _, _) = await ExternalGeofence.import(
        externalAccountId: 'a1',
        wialonResourceId: '10',
        wialonGeofenceIds: const [],
        createAsTag: false,
        apiToken: 'token',
        uri: server.uri,
        onResponse: reported.add,
      );
      final resources = await ExternalResource.fetchAll(
        externalAccountId: 'a1',
        apiToken: 'token',
        uri: server.uri,
        onResponse: reported.add,
      );
      final addresses = await ReverseGeocode.fetchAddresses(
        latitude: 1,
        longitude: 2,
        apiToken: 'token',
        uri: server.uri,
        onResponse: reported.add,
      );

      expect(importStatus, ApiStatus.unauthorized);
      expect(resources, isEmpty);
      expect(addresses, isEmpty);
      expect(reported, [ApiStatus.unauthorized, ApiStatus.unauthorized, ApiStatus.unauthorized]);
    });

    test('ExternalGeofence.import returns the field errors of a rejected request', () async {
      server.respond = (_) => {
        'data': {
          'importGeofencesFromExternal': {
            'status': 'BAD_REQUEST',
            'errors': {
              'geofencesIds': ['required'],
            },
          },
        },
      };

      final (status, errors, _) = await ExternalGeofence.import(
        externalAccountId: 'a1',
        wialonResourceId: '10',
        wialonGeofenceIds: const [],
        createAsTag: false,
        apiToken: 'token',
        uri: server.uri,
      );

      expect(status, ApiStatus.badRequest);
      expect(errors, {
        'geofencesIds': ['required'],
      });
    });

    test('ReverseGeocode.fetchAddresses sends the coordinates and reads the union', () async {
      server.respond = (_) => {
        'data': {
          'reverseGeocode': {
            'status': 'OK',
            'result': [
              {'__typename': 'GeocodeResult', 'address': 'Calle 50, Panama'},
            ],
          },
        },
      };

      final addresses = await ReverseGeocode.fetchAddresses(
        latitude: 8.9,
        longitude: -79.5,
        apiToken: 'token',
        uri: server.uri,
      );

      expect(addresses, ['Calle 50, Panama']);
      final query = _query(server.requests.single);
      expect(query, contains('reverseGeocode(coordinates: \$coordinates)'));
      expect(query, contains('... on GeocodeResult { address }'));
      expect(server.requests.single['variables'], {
        'coordinates': {'latitude': 8.9, 'longitude': -79.5},
      });
    });
  });
}
