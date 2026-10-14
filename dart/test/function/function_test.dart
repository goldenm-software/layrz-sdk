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
        'port': '21',
        'username': 'user',
        'password': 'pass',
      };

      final ftp = FtpAccount.fromJson(json);
      expect(ftp.host, 'ftp.example.com');
      expect(ftp.port, '21');
      expect(ftp.username, 'user');
      expect(ftp.password, 'pass');

      final restored = ftp.toJson();
      expect(restored['host'], 'ftp.example.com');
      expect(restored['port'], '21');
      expect(restored['port'], isA<String>());
    });

    test('port is null when absent or null', () {
      expect(FtpAccount.fromJson({'host': 'h'}).port, isNull);
      expect(FtpAccount.fromJson({'host': 'h', 'port': null}).port, isNull);
      expect(FtpAccount(host: 'h').toJson()['port'], isNull);
    });

    test('copyWith updates fields', () {
      final ftp = FtpAccount(host: 'a');
      final updated = ftp.copyWith(host: 'b', port: '2121');

      expect(updated.host, 'b');
      expect(updated.port, '2121');
    });

    test('equality', () {
      final a = FtpAccount(host: 'a', port: '21');
      final b = FtpAccount(host: 'a', port: '21');
      final c = FtpAccount(host: 'c', port: '22');

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
      final a = Algorithm(
        id: 'x',
        name: 'X',
        color: const Color(0xFF000000),
        isEnabled: true,
      );
      final b = Algorithm(
        id: 'x',
        name: 'X',
        color: const Color(0xFF000000),
        isEnabled: true,
      );

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
        'ftp': {'host': 'ftp.example.com', 'port': '21'},
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

    test('fromJson decodes a full fetch payload with nested objects', () {
      final json = {
        'id': 'fn-4',
        'name': 'Nested Function',
        'ownerId': 'owner-1',
        'isEnabled': true,
        'algorithmId': 'alg-1',
        'maximumTime': 10,
        'minutesDelta': 2,
        'externalIdentifiers': ['ext-1'],
        'assetsIds': ['asset-1'],
        'assets': [
          {
            'id': 'asset-1',
            'name': 'Truck A',
            'mode': 'SINGLE',
            'dynamicIcon': {'type': 'EMOJI', 'emoji': 'x'},
          },
        ],
        'groupsIds': ['tag-1'],
        'groups': [
          {
            'id': 'tag-1',
            'name': 'Trucks',
            'color': '#00FF00',
            'dynamicIcon': {
              'type': 'URL',
              'url': 'https://example.com/icon.png',
            },
          },
        ],
        'credentials': {'key': 'value'},
        'ftp': {
          'host': 'ftp.example.com',
          'port': '21',
          'username': 'user',
          'password': 'pass',
        },
        'token': 'tok',
        'access': [
          {
            'id': '1',
            'read': true,
            'write': false,
            'manage': false,
            'userId': 'user-1',
            'module': 'UNKNOWN',
          },
        ],
      };

      final function = LayrzFunction.fromJson(json);
      expect(function.ownerId, 'owner-1');
      expect(function.isEnabled, isTrue);
      expect(function.maximumTime, 10.0);
      expect(function.assets, hasLength(1));
      expect(function.assets!.first.mode, AssetMode.single);
      expect(function.assets!.first.dynamicIcon?.type, AvatarType.emoji);
      expect(function.assets!.first.dynamicIcon?.emoji, 'x');
      expect(function.groups, hasLength(1));
      expect(function.groups!.first.dynamicIcon?.type, AvatarType.url);
      expect(
        function.groups!.first.dynamicIcon?.url,
        'https://example.com/icon.png',
      );
      expect(function.ftp?.host, 'ftp.example.com');
      expect(function.ftp?.port, '21');
      expect(function.ftp?.username, 'user');
      expect(function.ftp?.password, 'pass');
      expect(function.access, hasLength(1));
      expect(function.access!.first.userId, 'user-1');
      expect(function.access!.first.read, isTrue);
      expect(function.token, 'tok');
    });

    test('ownerId and isEnabled are null by default', () {
      final function = LayrzFunction(id: 'a', name: 'A');
      expect(function.ownerId, isNull);
      expect(function.isEnabled, isNull);
    });

    test('fragment selects ownerId and isEnabled', () {
      final fragment = LayrzFunction.fragment;
      expect(fragment.onType, 'Function');
      expect(fragment.fields.map((f) => f.name), containsAll(['ownerId', 'isEnabled']));
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

  group('LayrzFunctionInput Tests', () {
    test('constructs with defaults', () {
      final input = LayrzFunctionInput();

      expect(input.id, isNull);
      expect(input.name, '');
      expect(input.algorithmId, isNull);
      expect(input.maximumTime, isNull);
      expect(input.minutesDelta, isNull);
      expect(input.minimumLevel, isNull);
      expect(input.externalIdentifiers, isEmpty);
      expect(input.credentials, isEmpty);
      expect(input.groupsIds, isEmpty);
      expect(input.assetsIds, isEmpty);
    });

    test('fromJson/toJson roundtrip', () {
      final json = {
        'id': 'fn-1',
        'name': 'Input',
        'algorithmId': 'alg-1',
        'maximumTime': 15.5,
        'minutesDelta': 3.0,
        'minimumLevel': 12.5,
        'externalIdentifiers': ['ext-1'],
        'credentials': {'key': 'value'},
        'groupsIds': ['tag-1'],
        'assetsIds': ['asset-1'],
      };

      final input = LayrzFunctionInput.fromJson(json);
      expect(input.id, 'fn-1');
      expect(input.name, 'Input');
      expect(input.algorithmId, 'alg-1');
      expect(input.maximumTime, 15.5);
      expect(input.minutesDelta, 3.0);
      expect(input.minimumLevel, 12.5);
      expect(input.externalIdentifiers, ['ext-1']);
      expect(input.credentials, {'key': 'value'});
      expect(input.groupsIds, ['tag-1']);
      expect(input.assetsIds, ['asset-1']);

      final restored = input.toJson();
      expect(restored['id'], 'fn-1');
      expect(restored['maximumTime'], 15.5);
      expect(restored['minutesDelta'], 3.0);
      expect(restored['minimumLevel'], 12.5);
      expect(restored['credentials'], {'key': 'value'});
      expect(restored['assetsIds'], ['asset-1']);
    });

    test('copyWith updates fields', () {
      final input = LayrzFunctionInput(name: 'A');
      final updated = input.copyWith(
        name: 'B',
        maximumTime: 9,
        minimumLevel: 4.5,
        assetsIds: ['a'],
      );

      expect(updated.name, 'B');
      expect(updated.maximumTime, 9);
      expect(updated.minimumLevel, 4.5);
      expect(updated.minutesDelta, isNull);
      expect(updated.assetsIds, ['a']);
    });

    test('roundtrip without optional values keeps them null', () {
      final input = LayrzFunctionInput.fromJson({'name': 'Plain'});

      expect(input.maximumTime, isNull);
      expect(input.minutesDelta, isNull);
      expect(input.minimumLevel, isNull);
      expect(input.toJson()['minimumLevel'], isNull);
    });

    test('is mutable', () {
      final input = LayrzFunctionInput();
      input.name = 'Changed';
      input.id = 'fn-9';

      expect(input.name, 'Changed');
      expect(input.id, 'fn-9');
    });
  });
}
