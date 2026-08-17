import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('EmployeeInput Tests', () {
    test('EmployeeInput with all required fields and defaults', () {
      final input = EmployeeInput(
        id: 'emp_input_001',
        name: 'John Doe',
        email: 'john@example.com',
        username: 'johndoe',
        customPermissions: GenericPermissionInput(
          apps: GenericPermissionItemInput(),
          users: GenericPermissionItemInput(),
          firmwares: GenericPermissionItemInput(),
          employees: GenericPermissionItemInput(),
          languages: GenericPermissionItemInput(),
          categories: GenericPermissionItemInput(),
          departments: GenericPermissionItemInput(),
          protocols: GenericPermissionItemInput(),
          billing: GenericPermissionItemInput(),
          cycles: GenericPermissionItemInput(),
          shortcuts: GenericPermissionItemInput(),
          layers: GenericPermissionItemInput(),
        ),
      );

      expect(input.id, 'emp_input_001');
      expect(input.name, 'John Doe');
      expect(input.email, 'john@example.com');
      expect(input.username, 'johndoe');
      expect(input.customPermissions, isNotNull);
      expect(input.departmentId, isNull);
      expect(input.dynamicAvatar, isNull);
    });

    test('EmployeeInput with empty defaults (no id, no department, no avatar)', () {
      final input = EmployeeInput(
        customPermissions: GenericPermissionInput(
          apps: GenericPermissionItemInput(),
          users: GenericPermissionItemInput(),
          firmwares: GenericPermissionItemInput(),
          employees: GenericPermissionItemInput(),
          languages: GenericPermissionItemInput(),
          categories: GenericPermissionItemInput(),
          departments: GenericPermissionItemInput(),
          protocols: GenericPermissionItemInput(),
          billing: GenericPermissionItemInput(),
          cycles: GenericPermissionItemInput(),
          shortcuts: GenericPermissionItemInput(),
          layers: GenericPermissionItemInput(),
        ),
      );

      expect(input.id, isNull);
      expect(input.name, '');
      expect(input.email, '');
      expect(input.username, '');
      expect(input.departmentId, isNull);
      expect(input.dynamicAvatar, isNull);
      expect(input.customPermissions.apps, isNotNull);
    });

    test('EmployeeInput.fromJson() with all fields', () {
      final json = <String, dynamic>{
        'id': 'emp_input_002',
        'name': 'Jane Smith',
        'email': 'jane@example.com',
        'username': 'janesmith',
        'departmentId': 'dept_001',
        'dynamicAvatar': {
          'type': 'EMOJI',
          'emoji': '😀',
        },
        'customPermissions': {
          'apps': {
            'read': true,
            'write': false,
            'create': false,
            'delete': false,
            'plan': false,
            'loginas': false,
            'suspend': false,
          },
          'users': {
            'read': true,
            'write': true,
            'create': false,
            'delete': false,
            'plan': false,
            'loginas': false,
            'suspend': false,
          },
          'firmwares': {
            'read': false,
            'write': false,
            'create': false,
            'delete': false,
            'plan': false,
            'loginas': false,
            'suspend': false,
          },
          'employees': {
            'read': false,
            'write': false,
            'create': false,
            'delete': false,
            'plan': false,
            'loginas': false,
            'suspend': false,
          },
          'languages': {
            'read': false,
            'write': false,
            'create': false,
            'delete': false,
            'plan': false,
            'loginas': false,
            'suspend': false,
          },
          'categories': {
            'read': false,
            'write': false,
            'create': false,
            'delete': false,
            'plan': false,
            'loginas': false,
            'suspend': false,
          },
          'departments': {
            'read': false,
            'write': false,
            'create': false,
            'delete': false,
            'plan': false,
            'loginas': false,
            'suspend': false,
          },
          'protocols': {
            'read': false,
            'write': false,
            'create': false,
            'delete': false,
            'plan': false,
            'loginas': false,
            'suspend': false,
          },
          'billing': {
            'read': false,
            'write': false,
            'create': false,
            'delete': false,
            'plan': false,
            'loginas': false,
            'suspend': false,
          },
          'cycles': {
            'read': false,
            'write': false,
            'create': false,
            'delete': false,
            'plan': false,
            'loginas': false,
            'suspend': false,
          },
          'shortcuts': {
            'read': false,
            'write': false,
            'create': false,
            'delete': false,
            'plan': false,
            'loginas': false,
            'suspend': false,
          },
          'layers': {
            'read': false,
            'write': false,
            'create': false,
            'delete': false,
            'plan': false,
            'loginas': false,
            'suspend': false,
          },
        },
      };

      final input = EmployeeInput.fromJson(json);

      expect(input.id, 'emp_input_002');
      expect(input.name, 'Jane Smith');
      expect(input.email, 'jane@example.com');
      expect(input.username, 'janesmith');
      expect(input.departmentId, 'dept_001');
      expect(input.dynamicAvatar, isNotNull);
      expect(input.dynamicAvatar!.type, AvatarType.emoji);
      expect(input.customPermissions, isNotNull);
      expect(input.customPermissions.apps.read, true);
      expect(input.customPermissions.users.write, true);
    });

    test('EmployeeInput.toJson() and fromJson() roundtrip', () {
      final original = EmployeeInput(
        id: 'emp_input_003',
        name: 'Bob Johnson',
        email: 'bob@example.com',
        username: 'bobjohnson',
        departmentId: 'dept_002',
        customPermissions: GenericPermissionInput(
          apps: GenericPermissionItemInput(read: true),
          users: GenericPermissionItemInput(read: true, write: true),
          firmwares: GenericPermissionItemInput(),
          employees: GenericPermissionItemInput(),
          languages: GenericPermissionItemInput(),
          categories: GenericPermissionItemInput(),
          departments: GenericPermissionItemInput(),
          protocols: GenericPermissionItemInput(),
          billing: GenericPermissionItemInput(),
          cycles: GenericPermissionItemInput(),
          shortcuts: GenericPermissionItemInput(),
          layers: GenericPermissionItemInput(),
        ),
      );

      final json = original.toJson();
      final restored = EmployeeInput.fromJson(json);

      expect(restored.id, original.id);
      expect(restored.name, original.name);
      expect(restored.email, original.email);
      expect(restored.username, original.username);
      expect(restored.departmentId, original.departmentId);
    });

    test('EmployeeInput mutability with copyWith', () {
      final original = EmployeeInput(
        id: 'emp_input_004',
        name: 'Alice Brown',
        email: 'alice@example.com',
        customPermissions: GenericPermissionInput(
          apps: GenericPermissionItemInput(),
          users: GenericPermissionItemInput(),
          firmwares: GenericPermissionItemInput(),
          employees: GenericPermissionItemInput(),
          languages: GenericPermissionItemInput(),
          categories: GenericPermissionItemInput(),
          departments: GenericPermissionItemInput(),
          protocols: GenericPermissionItemInput(),
          billing: GenericPermissionItemInput(),
          cycles: GenericPermissionItemInput(),
          shortcuts: GenericPermissionItemInput(),
          layers: GenericPermissionItemInput(),
        ),
      );

      final modified = original.copyWith(
        name: 'Alice Blue',
        email: 'alice.blue@example.com',
      );

      expect(modified.name, 'Alice Blue');
      expect(modified.email, 'alice.blue@example.com');
      expect(modified.id, original.id);
    });

    test('EmployeeInput field mutation directly', () {
      final input = EmployeeInput(
        name: 'Charlie Davis',
        customPermissions: GenericPermissionInput(
          apps: GenericPermissionItemInput(),
          users: GenericPermissionItemInput(),
          firmwares: GenericPermissionItemInput(),
          employees: GenericPermissionItemInput(),
          languages: GenericPermissionItemInput(),
          categories: GenericPermissionItemInput(),
          departments: GenericPermissionItemInput(),
          protocols: GenericPermissionItemInput(),
          billing: GenericPermissionItemInput(),
          cycles: GenericPermissionItemInput(),
          shortcuts: GenericPermissionItemInput(),
          layers: GenericPermissionItemInput(),
        ),
      );

      input.name = 'Charles Davis';
      expect(input.name, 'Charles Davis');

      input.email = 'charlie@example.com';
      expect(input.email, 'charlie@example.com');

      input.username = 'charliedavis';
      expect(input.username, 'charliedavis');
    });

    test('EmployeeInput with avatar input full details', () {
      final input = EmployeeInput(
        id: 'emp_input_005',
        name: 'Diana Evans',
        email: 'diana@example.com',
        departmentId: 'dept_003',
        dynamicAvatar: AvatarInput(
          type: AvatarType.url,
          url: 'https://example.com/avatar.png',
        ),
        customPermissions: GenericPermissionInput(
          apps: GenericPermissionItemInput(),
          users: GenericPermissionItemInput(),
          firmwares: GenericPermissionItemInput(),
          employees: GenericPermissionItemInput(),
          languages: GenericPermissionItemInput(),
          categories: GenericPermissionItemInput(),
          departments: GenericPermissionItemInput(),
          protocols: GenericPermissionItemInput(),
          billing: GenericPermissionItemInput(),
          cycles: GenericPermissionItemInput(),
          shortcuts: GenericPermissionItemInput(),
          layers: GenericPermissionItemInput(),
        ),
      );

      expect(input.dynamicAvatar, isNotNull);
      expect(input.dynamicAvatar!.type, AvatarType.url);
      expect(input.dynamicAvatar!.url, 'https://example.com/avatar.png');
    });

    test('EmployeeInput defaults string fields to empty', () {
      final input = EmployeeInput(
        customPermissions: GenericPermissionInput(
          apps: GenericPermissionItemInput(),
          users: GenericPermissionItemInput(),
          firmwares: GenericPermissionItemInput(),
          employees: GenericPermissionItemInput(),
          languages: GenericPermissionItemInput(),
          categories: GenericPermissionItemInput(),
          departments: GenericPermissionItemInput(),
          protocols: GenericPermissionItemInput(),
          billing: GenericPermissionItemInput(),
          cycles: GenericPermissionItemInput(),
          shortcuts: GenericPermissionItemInput(),
          layers: GenericPermissionItemInput(),
        ),
      );

      expect(input.name, '');
      expect(input.email, '');
      expect(input.username, '');
    });

    test('EmployeeInput toJson preserves all fields', () {
      final input = EmployeeInput(
        id: 'emp_input_006',
        name: 'Emma Foster',
        email: 'emma@example.com',
        username: 'emmafoster',
        departmentId: 'dept_004',
        customPermissions: GenericPermissionInput(
          apps: GenericPermissionItemInput(read: true, write: true),
          users: GenericPermissionItemInput(),
          firmwares: GenericPermissionItemInput(),
          employees: GenericPermissionItemInput(),
          languages: GenericPermissionItemInput(),
          categories: GenericPermissionItemInput(),
          departments: GenericPermissionItemInput(),
          protocols: GenericPermissionItemInput(),
          billing: GenericPermissionItemInput(),
          cycles: GenericPermissionItemInput(),
          shortcuts: GenericPermissionItemInput(),
          layers: GenericPermissionItemInput(),
        ),
      );

      final json = input.toJson();

      expect(json['id'], 'emp_input_006');
      expect(json['name'], 'Emma Foster');
      expect(json['email'], 'emma@example.com');
      expect(json['username'], 'emmafoster');
      expect(json['departmentId'], 'dept_004');
      expect(json['customPermissions'], isA<Map>());
    });

    test('EmployeeInput with permissions having all modules populated', () {
      final input = EmployeeInput(
        name: 'Frank Green',
        customPermissions: GenericPermissionInput(
          apps: GenericPermissionItemInput(read: true),
          users: GenericPermissionItemInput(write: true),
          firmwares: GenericPermissionItemInput(create: true),
          employees: GenericPermissionItemInput(delete: true),
          languages: GenericPermissionItemInput(plan: true),
          categories: GenericPermissionItemInput(loginas: true),
          departments: GenericPermissionItemInput(suspend: true),
          protocols: GenericPermissionItemInput(read: true, write: true),
          billing: GenericPermissionItemInput(read: false),
          cycles: GenericPermissionItemInput(write: false),
          shortcuts: GenericPermissionItemInput(create: false),
          layers: GenericPermissionItemInput(delete: false),
        ),
      );

      expect(input.customPermissions.apps.read, true);
      expect(input.customPermissions.users.write, true);
      expect(input.customPermissions.firmwares.create, true);
      expect(input.customPermissions.employees.delete, true);
      expect(input.customPermissions.languages.plan, true);
      expect(input.customPermissions.categories.loginas, true);
      expect(input.customPermissions.departments.suspend, true);
      expect(input.customPermissions.protocols.read, true);
    });
  });
}
