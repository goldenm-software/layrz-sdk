part of '../permissions.dart';

/// Immutable module-level permissions for all 12 Layrz platform areas.
///
/// [GenericPermission] aggregates fine-grained permissions for 12 distinct
/// Layrz platform modules via 12 nullable [GenericPermissionItem] slots. Each
/// slot holds access control for one module area. All fields are nullable,
/// allowing partial permission sets where some modules may not have assigned
/// permissions.
///
/// Use [GenericPermissionInput] for creating or updating permissions.
@freezed
abstract class GenericPermission with _$GenericPermission {
  /// Internal constructor used by freezed.
  const GenericPermission._();

  /// Constructs an immutable [GenericPermission] with optional module slots.
  const factory GenericPermission({
    /// Permission item for the apps module, or null if not assigned.
    GenericPermissionItem? apps,

    /// Permission item for the users module, or null if not assigned.
    GenericPermissionItem? users,

    /// Permission item for the firmwares module, or null if not assigned.
    GenericPermissionItem? firmwares,

    /// Permission item for the employees module, or null if not assigned.
    GenericPermissionItem? employees,

    /// Permission item for the languages module, or null if not assigned.
    GenericPermissionItem? languages,

    /// Permission item for the categories module, or null if not assigned.
    GenericPermissionItem? categories,

    /// Permission item for the departments module, or null if not assigned.
    GenericPermissionItem? departments,

    /// Permission item for the protocols module, or null if not assigned.
    GenericPermissionItem? protocols,

    /// Permission item for the billing module, or null if not assigned.
    GenericPermissionItem? billing,

    /// Permission item for the cycles module, or null if not assigned.
    GenericPermissionItem? cycles,

    /// Permission item for the shortcuts module, or null if not assigned.
    GenericPermissionItem? shortcuts,

    /// Permission item for the layers module, or null if not assigned.
    GenericPermissionItem? layers,
  }) = _GenericPermission;

  /// Deserializes a [GenericPermission] from a JSON map.
  factory GenericPermission.fromJson(Map<String, dynamic> json) => _$GenericPermissionFromJson(json);

  // coverage:ignore-start
  /// [fragment] is the GraphQL fragment string for [GenericPermission].
  static GqlFragment get fragment => GqlFragment(
    name: 'permissionFragment',
    onType: 'Permission',
    fields: [
      GqlField(
        name: 'apps',
        fields: [
          GqlField(name: 'read'),
          GqlField(name: 'write'),
        ],
      ),
      GqlField(
        name: 'users',
        fields: [
          GqlField(name: 'read'),
          GqlField(name: 'write'),
          GqlField(name: 'delete'),
          GqlField(name: 'plan'),
          GqlField(name: 'loginAs'),
        ],
      ),
      GqlField(
        name: 'firmwares',
        fields: [
          GqlField(name: 'read'),
          GqlField(name: 'write'),
          GqlField(name: 'delete'),
        ],
      ),
      GqlField(
        name: 'employees',
        fields: [
          GqlField(name: 'read'),
          GqlField(name: 'write'),
          GqlField(name: 'delete'),
        ],
      ),
      GqlField(
        name: 'languages',
        fields: [
          GqlField(name: 'read'),
          GqlField(name: 'write'),
          GqlField(name: 'approve'),
        ],
      ),
      GqlField(
        name: 'categories',
        fields: [
          GqlField(name: 'read'),
          GqlField(name: 'write'),
        ],
      ),
      GqlField(
        name: 'departments',
        fields: [
          GqlField(name: 'read'),
          GqlField(name: 'write'),
        ],
      ),
      GqlField(
        name: 'protocols',
        fields: [
          GqlField(name: 'read'),
          GqlField(name: 'write'),
          GqlField(name: 'delete'),
        ],
      ),
      GqlField(
        name: 'billing',
        fields: [
          GqlField(name: 'read'),
          GqlField(name: 'write'),
          GqlField(name: 'suspend'),
        ],
      ),
      GqlField(
        name: 'cycles',
        fields: [
          GqlField(name: 'read'),
          GqlField(name: 'write'),
          GqlField(name: 'delete'),
        ],
      ),
      GqlField(
        name: 'shortcuts',
        fields: [
          GqlField(name: 'read'),
          GqlField(name: 'write'),
          GqlField(name: 'delete'),
        ],
      ),
      GqlField(
        name: 'layers',
        fields: [
          GqlField(name: 'read'),
          GqlField(name: 'write'),
          GqlField(name: 'delete'),
        ],
      ),
    ],
  );
  // coverage:ignore-end
}
