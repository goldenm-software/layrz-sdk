import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('FtpAccount Tests', () {
    test('constructs with all-null fields by default', () {
      final ftp = FtpAccount();

      expect(ftp.host, isNull);
      expect(ftp.port, isNull);
      expect(ftp.username, isNull);
      expect(ftp.password, isNull);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'host': 'ftp.example.com',
        'port': 21,
        'username': 'user',
        'password': 'pass',
      };

      final ftp = FtpAccount.fromJson(json);
      expect(ftp.host, 'ftp.example.com');
      expect(ftp.port, 21);
      expect(ftp.username, 'user');
      expect(ftp.password, 'pass');

      final restored = ftp.toJson();
      expect(restored['host'], 'ftp.example.com');
      expect(restored['port'], 21);
    });

    test('copyWith updates fields', () {
      final ftp = FtpAccount(host: 'a');
      final updated = ftp.copyWith(host: 'b', port: 2121);

      expect(updated.host, 'b');
      expect(updated.port, 2121);
    });

    test('equality', () {
      final a = FtpAccount(host: 'a', port: 21);
      final b = FtpAccount(host: 'a', port: 21);
      final c = FtpAccount(host: 'c', port: 22);

      expect(a, b);
      expect(a, isNot(c));
    });
  });

  group('Algorithm Tests', () {
    test('constructs with required fields', () {
      final algorithm = Algorithm(
        id: 'alg-1',
        name: 'Webhook',
        color: const Color(0xFF2196F3),
        isEnabled: true,
      );

      expect(algorithm.id, 'alg-1');
      expect(algorithm.name, 'Webhook');
      expect(algorithm.color, const Color(0xFF2196F3));
      expect(algorithm.isEnabled, isTrue);
      expect(algorithm.icon, isNull);
      expect(algorithm.categoriesIds, isEmpty);
      expect(algorithm.canBeInSensors, isFalse);
      expect(algorithm.hasHttp, isFalse);
      expect(algorithm.hasFtp, isFalse);
      expect(algorithm.requiredFields, isEmpty);
      expect(algorithm.usage, isNull);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'id': 'alg-2',
        'name': 'FTP Sync',
        'color': '#FF5733',
        'isEnabled': false,
        'categoriesIds': ['cat-1'],
        'canBeInSensors': true,
        'hasHttp': false,
        'hasFtp': true,
        'requiredFields': [
          {'field': 'host', 'type': 'STRING'},
        ],
        'usage': 42,
      };

      final algorithm = Algorithm.fromJson(json);
      expect(algorithm.id, 'alg-2');
      expect(algorithm.name, 'FTP Sync');
      expect(algorithm.isEnabled, isFalse);
      expect(algorithm.categoriesIds, ['cat-1']);
      expect(algorithm.canBeInSensors, isTrue);
      expect(algorithm.hasFtp, isTrue);
      expect(algorithm.requiredFields, hasLength(1));
      expect(algorithm.requiredFields.first.field, 'host');
      expect(algorithm.requiredFields.first.type, CredentialFieldType.string);
      expect(algorithm.usage, 42);

      final restored = algorithm.toJson();
      expect(restored['id'], 'alg-2');
      expect(restored['hasFtp'], true);
    });

    test('copyWith updates fields', () {
      final algorithm = Algorithm(
        id: 'a',
        name: 'A',
        color: const Color(0xFF000000),
        isEnabled: true,
      );
      final updated = algorithm.copyWith(name: 'B', isEnabled: false);

      expect(updated.name, 'B');
      expect(updated.isEnabled, isFalse);
    });

    test('equality', () {
      final a = Algorithm(id: 'x', name: 'X', color: const Color(0xFF000000), isEnabled: true);
      final b = Algorithm(id: 'x', name: 'X', color: const Color(0xFF000000), isEnabled: true);

      expect(a, b);
    });
  });

  group('LayrzFunction Tests', () {
    test('constructs with required fields', () {
      final function = LayrzFunction(id: 'fn-1', name: 'My Function');

      expect(function.id, 'fn-1');
      expect(function.name, 'My Function');
      expect(function.algorithmId, isNull);
      expect(function.algorithm, isNull);
      expect(function.maximumTime, isNull);
      expect(function.minutesDelta, isNull);
      expect(function.externalIdentifiers, isNull);
      expect(function.token, isNull);
      expect(function.credentials, isNull);
      expect(function.ftp, isNull);
      expect(function.groupsIds, isNull);
      expect(function.groups, isNull);
      expect(function.assetsIds, isNull);
      expect(function.assets, isNull);
      expect(function.access, isNull);
    });

    test('fromJson/toJson roundtrip with nested objects', () {
      final json = {
        'id': 'fn-2',
        'name': 'Full Function',
        'algorithmId': 'alg-1',
        'algorithm': {
          'id': 'alg-1',
          'name': 'Webhook',
          'color': '#FF0000',
          'isEnabled': true,
        },
        'maximumTime': 30.0,
        'minutesDelta': 5.0,
        'externalIdentifiers': ['ext-1', 'ext-2'],
        'token': 'tok-123',
        'credentials': {'key': 'value'},
        'ftp': {'host': 'ftp.example.com', 'port': 21},
        'groupsIds': ['tag-1'],
        'assetsIds': ['asset-1'],
      };

      final function = LayrzFunction.fromJson(json);
      expect(function.id, 'fn-2');
      expect(function.algorithmId, 'alg-1');
      expect(function.algorithm, isNotNull);
      expect(function.algorithm!.name, 'Webhook');
      expect(function.maximumTime, 30.0);
      expect(function.minutesDelta, 5.0);
      expect(function.externalIdentifiers, ['ext-1', 'ext-2']);
      expect(function.token, 'tok-123');
      expect(function.credentials, {'key': 'value'});
      expect(function.ftp, isNotNull);
      expect(function.ftp!.host, 'ftp.example.com');
      expect(function.groupsIds, ['tag-1']);
      expect(function.assetsIds, ['asset-1']);

      final restored = function.toJson();
      expect(restored['id'], 'fn-2');
      expect(restored['name'], 'Full Function');
      expect(restored['token'], 'tok-123');
    });

    test('fromJson with groups and assets objects', () {
      final json = {
        'id': 'fn-3',
        'name': 'Grouped Function',
        'groups': [
          {'id': 'tag-1', 'name': 'Trucks', 'color': '#00FF00'},
        ],
        'assets': [
          {'id': 'asset-1', 'name': 'Truck A'},
        ],
      };

      final function = LayrzFunction.fromJson(json);
      expect(function.groups, hasLength(1));
      expect(function.groups!.first.name, 'Trucks');
      expect(function.assets, hasLength(1));
      expect(function.assets!.first.name, 'Truck A');
    });

    test('copyWith updates fields', () {
      final function = LayrzFunction(id: 'a', name: 'A');
      final updated = function.copyWith(name: 'B', token: 'new-token');

      expect(updated.name, 'B');
      expect(updated.token, 'new-token');
    });

    test('equality', () {
      final a = LayrzFunction(id: 'x', name: 'X');
      final b = LayrzFunction(id: 'x', name: 'X');
      final c = LayrzFunction(id: 'y', name: 'Y');

      expect(a, b);
      expect(a, isNot(c));
    });
  });
}
