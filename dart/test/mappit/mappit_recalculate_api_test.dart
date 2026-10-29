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

  final recalculate = {
    'id': '6f1c2b8e-3d7a-4c55-9a1e-2b4f8c9d0e11',
    'assetId': '120',
    'asset': {
      'id': '120',
      'name': 'Seller 01',
      'mode': 'SINGLE',
      'dynamicIcon': {'type': 'EMOJI', 'emoji': '🚚', 'url': null},
    },
    'requestedById': '7',
    'requestedBy': {
      'id': '7',
      'name': 'Admin',
      'dynamicAvatar': {'type': 'URL', 'url': 'https://cdn.example.com/a.png', 'emoji': null},
    },
    'requestedAt': 1761609600.5,
    'requestedByIp': '10.0.0.1',
    'recalcStartAt': 1761523200,
    'recalcEndAt': 1761609599,
    'status': 'RUNNING',
  };

  group('MappitRecalculate.fetchAll', () {
    test('sends mappitRecalculates with limit and decodes the result', () async {
      payload = {
        'mappitRecalculates': {
          'status': 'OK',
          'errors': null,
          'result': [recalculate],
        },
      };
      ApiStatus? status;

      final items = await MappitRecalculate.fetchAll(
        apiToken: 'token',
        uri: uri(),
        limit: 1000,
        onResponse: (s) => status = s,
      );

      expect(status, isNull);
      expect(items, hasLength(1));
      final item = items.first;
      expect(item.id, '6f1c2b8e-3d7a-4c55-9a1e-2b4f8c9d0e11');
      expect(item.asset?.name, 'Seller 01');
      expect(item.asset?.dynamicIcon?.emoji, '🚚');
      expect(item.requestedBy?.name, 'Admin');
      expect(item.status, MappitRecalculateStatus.processing);
      expect(item.recalcStartAt, DateTime.fromMillisecondsSinceEpoch(1761523200000));

      final query = lastRequest['query'] as String;
      expect(query, contains(r'mappitRecalculates(limit: $limit)'));
      expect(query, contains(r'$limit: Int'));
      expect(query, contains('requestedByIp'));
      expect(query, contains('dynamicAvatar'));
      expect(lastRequest['variables'], {'limit': 1000});
    });

    test('omits limit and offset when not given', () async {
      payload = {
        'mappitRecalculates': {'status': 'OK', 'errors': null, 'result': []},
      };

      final items = await MappitRecalculate.fetchAll(apiToken: 'token', uri: uri());

      expect(items, isEmpty);
      expect((lastRequest['variables'] as Map?) ?? {}, isEmpty);
    });

    test('reports the status and returns an empty list on failure', () async {
      payload = {
        'mappitRecalculates': {'status': 'ACCESS_DENIED', 'errors': null, 'result': null},
      };
      ApiStatus? status;

      final items = await MappitRecalculate.fetchAll(apiToken: 'token', uri: uri(), onResponse: (s) => status = s);

      expect(items, isEmpty);
      expect(status, ApiStatus.accessDenied);
    });
  });

  group('MappitRecalculate.request', () {
    test('sends requestMappitRecalc with unix dates', () async {
      payload = {
        'requestMappitRecalc': {'status': 'OK', 'errors': null},
      };

      final (status, errors, _) = await MappitRecalculate.request(
        apiToken: 'token',
        uri: uri(),
        assetId: '120',
        startAt: DateTime.fromMillisecondsSinceEpoch(1761523200000),
        endAt: DateTime.fromMillisecondsSinceEpoch(1761609599000),
      );

      expect(status, ApiStatus.ok);
      expect(errors, isNull);
      final query = lastRequest['query'] as String;
      expect(query, contains(r'requestMappitRecalc(assetId: $assetId, startAt: $startAt, endAt: $endAt)'));
      expect(query, contains(r'$assetId: ID!'));
      expect(query, contains(r'$startAt: Unix!'));
      expect(query, contains(r'$endAt: Unix!'));
      expect(lastRequest['variables'], {'assetId': '120', 'startAt': 1761523200, 'endAt': 1761609599});
    });

    test('returns the field errors of a rejected request', () async {
      payload = {
        'requestMappitRecalc': {
          'status': 'BAD_REQUEST',
          'errors': {
            'startAt': [
              {'code': 'outsideRange'},
            ],
          },
        },
      };
      ApiStatus? reported;

      final (status, errors, _) = await MappitRecalculate.request(
        apiToken: 'token',
        uri: uri(),
        assetId: '120',
        startAt: DateTime(2026, 10, 2),
        endAt: DateTime(2026, 10, 1),
        onResponse: (s) => reported = s,
      );

      expect(reported, ApiStatus.badRequest);
      expect(status, ApiStatus.badRequest);
      expect(errors, contains('startAt'));
    });
  });
}
