part of '../department.dart';

/// Immutable department data for organizational structures.
///
/// [Department] represents a department or organizational unit within Layrz,
/// identified by a unique [id] and [name]. The optional [permissions] field
/// specifies module-level access rights for users in this department via
/// [GenericPermission].
@unfreezed
abstract class DepartmentInput with _$DepartmentInput {
  const DepartmentInput._();

  /// Constructs an immutable [DepartmentInput].
  factory DepartmentInput({
    /// Unique identifier for this department.
    String? id,

    /// Human-readable name of the department.
    required String name,

    /// Module-level permissions assigned to this department, or null if not set.
    /// When present, users in this department inherit these access rights.
    GenericPermissionInput? permissions,
  }) = _DepartmentInput;

  /// Deserializes a [DepartmentInput] from a JSON map.
  factory DepartmentInput.fromJson(Map<String, dynamic> json) => _$DepartmentInputFromJson(json);
}
