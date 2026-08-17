part of '../employee.dart';

/// Immutable representation of an authenticated user in the Layrz platform.
///
/// [Employee] aggregates all user-related data including authentication credentials,
/// permissions, MFA configuration, department membership, and security settings.
/// This is an immutable model; use [EmployeeInput] for mutations.
@freezed
abstract class Employee with _$Employee {
  /// Constructs an immutable [Employee] with required and optional fields.
  ///
  /// The [id] and [name] are required identifiers. MFA-related fields
  /// ([mfaEnabled], [mfaMethods], [passkeys]) default to false and empty lists
  /// respectively.
  const factory Employee({
    /// The unique identifier for this user.
    required String id,

    /// The display name of the user.
    required String name,

    /// The email address associated with the user account, or null if not set.
    String? email,

    /// The username (login handle) for the user, or null if not set.
    String? username,

    /// The user's [Department] object, or null if no department is assigned.
    Department? department,

    /// The unique identifier of the user's department, or null if not assigned.
    String? departmentId,

    /// The user's [Avatar] (profile picture), or null if not configured.
    Avatar? dynamicAvatar,

    /// The user's authentication [Token], or null if not applicable.
    Token? token,

    /// System-assigned permissions for platform modules via [GenericPermission],
    /// or null if not configured.
    GenericPermission? permissions,

    /// Custom role-based permissions for platform modules via [GenericPermission],
    /// or null if not configured.
    GenericPermission? customPermissions,

    /// Whether multi-factor authentication (MFA) is enabled for this user.
    /// Defaults to false.
    @Default(false) bool mfaEnabled,

    /// List of [MfaMethod] instances registered for this user.
    /// Defaults to an empty list.
    @Default([]) List<MfaMethod> mfaMethods,

    /// User-specific preferences (theme, language, accessibility settings) via
    /// [UserPreferences], or null if not configured.
    UserPreferences? preferences,

    /// List of [Passkey] (WebAuthn/FIDO2) credentials registered for this user.
    /// Defaults to an empty list.
    @Default([]) List<Passkey> passkeys,
  }) = _Employee;

  /// Deserializes an [Employee] from a JSON map.
  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);

  // coverage:ignore-start
  /// [fragment] is the GqlFragment for an employee.
  static GqlFragment get fragment => GqlFragment(
    name: 'employeeFragment',
    onType: 'Employee',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'email'),
      GqlField(name: 'username'),
      GqlField(name: 'department', fragment: Department.fragment),
      GqlField(name: 'departmentId'),
      GqlField(name: 'dynamicAvatar', fragment: Avatar.fragment),
    ],
  );
  // coverage:ignore-end
}
