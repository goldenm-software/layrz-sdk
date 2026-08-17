part of '../department.dart';

/// Immutable department data for organizational structures.
///
/// [Department] represents a department or organizational unit within Layrz,
/// identified by a unique [id] and [name]. The optional [permissions] field
/// specifies module-level access rights for users in this department via
/// [GenericPermission].
@freezed
abstract class Department with _$Department {
  /// Constructs an immutable [Department].
  const factory Department({
    /// Unique identifier for this department.
    required String id,

    /// Human-readable name of the department.
    required String name,

    /// Module-level permissions assigned to this department, or null if not set.
    /// When present, users in this department inherit these access rights.
    GenericPermission? permissions,
  }) = _Department;

  /// Deserializes a [Department] from a JSON map.
  factory Department.fromJson(Map<String, dynamic> json) => _$DepartmentFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying department fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'departmentFragment',
    onType: 'Department',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'permissions', fragment: GenericPermission.fragment),
    ],
  );
  // coverage:ignore-end
}
