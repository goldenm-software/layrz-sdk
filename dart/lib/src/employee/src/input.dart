part of '../employee.dart';

/// Mutable input model for creating or updating employee records in the Layrz
/// platform.
///
/// [EmployeeInput] is used in mutations to define or modify user data. Unlike
/// the immutable [Employee] model, [EmployeeInput] fields are mutable. Most
/// string fields default to empty strings; use null values only where the field
/// supports nullability.
@unfreezed
abstract class EmployeeInput with _$EmployeeInput {
  /// Constructs a mutable [EmployeeInput] for employee creation or update
  /// mutations.
  ///
  /// [name], [email], and [username] default to empty strings. The
  /// [customPermissions] is required and must be a valid
  /// [GenericPermissionInput]. Fields [id] and [departmentId] are optional.
  factory EmployeeInput({
    /// The unique identifier for the user, optional (system-assigned on create).
    String? id,

    /// The display name of the user. Defaults to empty string.
    @Default('') String name,

    /// The email address for the user. Defaults to empty string.
    @Default('') String email,

    /// The username (login handle) for the user. Defaults to empty string.
    @Default('') String username,

    /// The unique identifier of the department to assign to this user, or null
    /// if not assigning a department.
    String? departmentId,

    /// The avatar (profile picture) for the user via [AvatarInput], or null if
    /// not setting an avatar.
    AvatarInput? dynamicAvatar,

    /// Required custom role-based permissions for platform modules. Must be a
    /// fully populated [GenericPermissionInput].
    required GenericPermissionInput customPermissions,
  }) = _EmployeeInput;

  /// Deserializes an [EmployeeInput] from a JSON map.
  factory EmployeeInput.fromJson(Map<String, dynamic> json) =>
      _$EmployeeInputFromJson(json);
}
