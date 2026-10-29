import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  late HttpServer server;
  late Map<String, dynamic> payload;
  late Map<String, dynamic> lastRequest;

  setUp(() async {
    HttpOverrides.global = null;
    server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    server.listen((request) async {
      lastRequest = jsonDecode(await utf8.decodeStream(request)) as Map<String, dynamic>;
      request.response
        ..headers.contentType = ContentType.json
        ..write(jsonEncode({'data': payload}));
      await request.response.close();
    });
  });

  tearDown(() => server.close(force: true));

  Uri uri() => Uri.parse('http://127.0.0.1:${server.port}/mappit/graphql');

  Map<String, dynamic> ok(String name) => {
    name: {'status': 'OK', 'errors': null},
  };

  Map<String, dynamic> denied(String name) => {
    name: {'status': 'ACCESS_DENIED', 'errors': null},
  };

  void expectListAssign(String mutation, String listArg) {
    final query = lastRequest['query'] as String;
    expect(query, startsWith('mutation'));
    expect(query, contains('$mutation($listArg: \$$listArg, userId: \$userId)'));
    expect(query, contains('\$$listArg: [ID]!'));
    expect(query, contains(r'$userId: ID!'));
    expect(lastRequest['variables'], {
      listArg: ['1', '2'],
      'userId': '9',
    });
  }

  group('Asset.assignToMappitUser', () {
    test('sends mappitAssignAssetsToUser', () async {
      payload = ok('mappitAssignAssetsToUser');
      final result = await Asset.assignToMappitUser(apiToken: 't', uri: uri(), assetsIds: ['1', '2'], userId: '9');
      expect(result, isTrue);
      expectListAssign('mappitAssignAssetsToUser', 'assetsIds');
    });

    test('reports the status on failure', () async {
      payload = denied('mappitAssignAssetsToUser');
      ApiStatus? status;
      final result = await Asset.assignToMappitUser(
        apiToken: 't',
        uri: uri(),
        assetsIds: ['1'],
        userId: '9',
        onResponse: (s) => status = s,
      );
      expect(result, isFalse);
      expect(status, ApiStatus.accessDenied);
    });
  });

  group('Tag.assignToMappitUser', () {
    test('sends assignMappitTagsToUser', () async {
      payload = ok('assignMappitTagsToUser');
      final result = await Tag.assignToMappitUser(apiToken: 't', uri: uri(), tagsIds: ['1', '2'], userId: '9');
      expect(result, isTrue);
      expectListAssign('assignMappitTagsToUser', 'tagsIds');
    });

    test('returns false on failure', () async {
      payload = denied('assignMappitTagsToUser');
      expect(await Tag.assignToMappitUser(apiToken: 't', uri: uri(), tagsIds: ['1'], userId: '9'), isFalse);
    });
  });

  group('Geofence.assignToMappitUser', () {
    test('sends assignMappitGeofencesToUser', () async {
      payload = ok('assignMappitGeofencesToUser');
      final result = await Geofence.assignToMappitUser(
        apiToken: 't',
        uri: uri(),
        geofencesIds: ['1', '2'],
        userId: '9',
      );
      expect(result, isTrue);
      expectListAssign('assignMappitGeofencesToUser', 'geofencesIds');
    });

    test('returns false on failure', () async {
      payload = denied('assignMappitGeofencesToUser');
      expect(
        await Geofence.assignToMappitUser(apiToken: 't', uri: uri(), geofencesIds: ['1'], userId: '9'),
        isFalse,
      );
    });
  });

  group('MappitRoute.assignToUser', () {
    test('sends assignMappitRoutesToUser', () async {
      payload = ok('assignMappitRoutesToUser');
      final result = await MappitRoute.assignToUser(apiToken: 't', uri: uri(), routesIds: ['1', '2'], userId: '9');
      expect(result, isTrue);
      expectListAssign('assignMappitRoutesToUser', 'routesIds');
    });

    test('returns false on failure', () async {
      payload = denied('assignMappitRoutesToUser');
      expect(await MappitRoute.assignToUser(apiToken: 't', uri: uri(), routesIds: ['1'], userId: '9'), isFalse);
    });
  });

  group('MappitRoute.assignToSeller', () {
    test('sends assignMappitRouteToSeller with the route', () async {
      payload = ok('assignMappitRouteToSeller');
      final result = await MappitRoute.assignToSeller(apiToken: 't', uri: uri(), sellerId: '5', routeId: '3');
      expect(result, isTrue);
      final query = lastRequest['query'] as String;
      expect(query, contains(r'assignMappitRouteToSeller(sellerId: $sellerId, routeId: $routeId)'));
      expect(query, contains(r'$sellerId: ID!'));
      expect(query, contains(r'$routeId: ID'));
      expect(query, isNot(contains(r'$routeId: ID!')));
      expect(lastRequest['variables'], {'sellerId': '5', 'routeId': '3'});
    });

    test('omits the route to unassign it', () async {
      payload = ok('assignMappitRouteToSeller');
      final result = await MappitRoute.assignToSeller(apiToken: 't', uri: uri(), sellerId: '5');
      expect(result, isTrue);
      expect(lastRequest['variables'], {'sellerId': '5'});
    });

    test('reports the status on failure', () async {
      payload = denied('assignMappitRouteToSeller');
      ApiStatus? status;
      final result = await MappitRoute.assignToSeller(
        apiToken: 't',
        uri: uri(),
        sellerId: '5',
        onResponse: (s) => status = s,
      );
      expect(result, isFalse);
      expect(status, ApiStatus.accessDenied);
    });
  });
}
