import 'package:flutter_test/flutter_test.dart';
import 'package:layrz_sdk/layrz_sdk.dart';

void main() {
  group('DepartmentInput Tests', () {
    test('DepartmentInput with required name only', () {
      final input = DepartmentInput(name: 'Engineering');

      expect(input.name, 'Engineering');
      expect(input.id, isNull);
      expect(input.permissions, isNull);
    });

    test('DepartmentInput with all fields populated', () {
      final input = DepartmentInput(
        id: 'dept_input_001',
        name: 'Sales',
        permissions: GenericPermissionInput(
          apps: GenericPermissionItemInput(read: true),
          users: GenericPermissionItemInput(write: true),
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

      expect(input.id, 'dept_input_001');
      expect(input.name, 'Sales');
      expect(input.permissions, isNotNull);
      expect(input.permissions!.apps.read, true);
      expect(input.permissions!.users.write, true);
    });

    test('DepartmentInput.fromJson() with minimal fields', () {
      final json = <String, dynamic>{
        'name': 'Marketing',
      };

      final input = DepartmentInput.fromJson(json);

      expect(input.name, 'Marketing');
      expect(input.id, isNull);
      expect(input.permissions, isNull);
    });

    test('DepartmentInput.fromJson() with all fields', () {
      final json = <String, dynamic>{
        'id': 'dept_input_002',
        'name': 'Operations',
        'permissions': {
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

      final input = DepartmentInput.fromJson(json);

      expect(input.id, 'dept_input_002');
      expect(input.name, 'Operations');
      expect(input.permissions, isNotNull);
      expect(input.permissions!.apps.read, true);
      expect(input.permissions!.users.write, true);
    });

    test('DepartmentInput.toJson() and fromJson() roundtrip', () {
      final original = DepartmentInput(
        id: 'dept_input_003',
        name: 'Support',
        permissions: GenericPermissionInput(
          apps: GenericPermissionItemInput(read: true, write: true),
          users: GenericPermissionItemInput(read: true),
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
      final restored = DepartmentInput.fromJson(json);

      expect(restored.id, original.id);
      expect(restored.name, original.name);
      expect(restored.permissions!.apps.read, original.permissions!.apps.read);
      expect(restored.permissions!.apps.write, original.permissions!.apps.write);
    });

    test('DepartmentInput mutability with direct field assignment', () {
      final input = DepartmentInput(name: 'Finance');

      input.id = 'dept_input_004';
      expect(input.id, 'dept_input_004');

      input.name = 'Accounting';
      expect(input.name, 'Accounting');
    });

    test('DepartmentInput mutability with copyWith', () {
      final original = DepartmentInput(
        id: 'dept_input_005',
        name: 'HR',
      );

      final modified = original.copyWith(
        name: 'Human Resources',
      );

      expect(modified.name, 'Human Resources');
      expect(modified.id, original.id);
    });

    test('DepartmentInput with empty permissions', () {
      final input = DepartmentInput(
        name: 'Legal',
        permissions: GenericPermissionInput(
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

      expect(input.permissions, isNotNull);
      expect(input.permissions!.apps.read, false);
      expect(input.permissions!.users.write, false);
      expect(input.permissions!.firmwares.create, false);
    });

    test('DepartmentInput toJson preserves all fields', () {
      final input = DepartmentInput(
        id: 'dept_input_006',
        name: 'Security',
        permissions: GenericPermissionInput(
          apps: GenericPermissionItemInput(read: true, write: true, create: true),
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

      expect(json['id'], 'dept_input_006');
      expect(json['name'], 'Security');
      expect(json['permissions'], isA<Map>());
      expect(json['permissions']['apps'], isA<Map>());
    });

    test('DepartmentInput fromJson with partial permissions', () {
      final json = <String, dynamic>{
        'name': 'Quality Assurance',
        'permissions': {
          'apps': {
            'read': true,
            'write': true,
            'create': false,
            'delete': false,
            'plan': false,
            'loginas': false,
            'suspend': false,
          },
          'users': {
            'read': false,
            'write': false,
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

      final input = DepartmentInput.fromJson(json);

      expect(input.name, 'Quality Assurance');
      expect(input.id, isNull);
      expect(input.permissions, isNotNull);
      expect(input.permissions!.apps.read, true);
      expect(input.permissions!.apps.write, true);
    });

    test('DepartmentInput with permissions having all permission flags set', () {
      final input = DepartmentInput(
        id: 'dept_input_007',
        name: 'Admin',
        permissions: GenericPermissionInput(
          apps: GenericPermissionItemInput(
            read: true,
            write: true,
            create: true,
            delete: true,
            plan: true,
            loginas: true,
            suspend: true,
          ),
          users: GenericPermissionItemInput(
            read: true,
            write: true,
            create: true,
            delete: true,
            plan: true,
            loginas: true,
            suspend: true,
          ),
          firmwares: GenericPermissionItemInput(
            read: true,
            write: true,
            create: true,
            delete: true,
            plan: true,
            loginas: true,
            suspend: true,
          ),
          employees: GenericPermissionItemInput(
            read: true,
            write: true,
            create: true,
            delete: true,
            plan: true,
            loginas: true,
            suspend: true,
          ),
          languages: GenericPermissionItemInput(
            read: true,
            write: true,
            create: true,
            delete: true,
            plan: true,
            loginas: true,
            suspend: true,
          ),
          categories: GenericPermissionItemInput(
            read: true,
            write: true,
            create: true,
            delete: true,
            plan: true,
            loginas: true,
            suspend: true,
          ),
          departments: GenericPermissionItemInput(
            read: true,
            write: true,
            create: true,
            delete: true,
            plan: true,
            loginas: true,
            suspend: true,
          ),
          protocols: GenericPermissionItemInput(
            read: true,
            write: true,
            create: true,
            delete: true,
            plan: true,
            loginas: true,
            suspend: true,
          ),
          billing: GenericPermissionItemInput(
            read: true,
            write: true,
            create: true,
            delete: true,
            plan: true,
            loginas: true,
            suspend: true,
          ),
          cycles: GenericPermissionItemInput(
            read: true,
            write: true,
            create: true,
            delete: true,
            plan: true,
            loginas: true,
            suspend: true,
          ),
          shortcuts: GenericPermissionItemInput(
            read: true,
            write: true,
            create: true,
            delete: true,
            plan: true,
            loginas: true,
            suspend: true,
          ),
          layers: GenericPermissionItemInput(
            read: true,
            write: true,
            create: true,
            delete: true,
            plan: true,
            loginas: true,
            suspend: true,
          ),
        ),
      );

      expect(input.permissions!.apps.read, true);
      expect(input.permissions!.apps.write, true);
      expect(input.permissions!.apps.create, true);
      expect(input.permissions!.apps.delete, true);
      expect(input.permissions!.apps.plan, true);
      expect(input.permissions!.apps.loginas, true);
      expect(input.permissions!.apps.suspend, true);
    });
  });
}
