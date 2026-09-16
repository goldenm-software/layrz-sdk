part of '../employee.dart';

/// Decodes a single-object `result` payload into an [Employee]. Used by
/// [EmployeeInput.save].
Employee _employeeDecoder(Object? json) => Employee.fromJson(Map<String, dynamic>.from(json as Map));

/// Mutable input model for creating or updating employee records in the Layrz
/// platform.
///
/// [EmployeeInput] is used in mutations to define or modify user data. Unlike
/// the immutable [Employee] model, [EmployeeInput] fields are mutable. Most
/// string fields default to empty strings; use null values only where the field
/// supports nullability.
@unfreezed
abstract class EmployeeInput with _$EmployeeInput {
  const EmployeeInput._();

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

  // coverage:ignore-start
  /// Creates or updates this employee on the server.
  ///
  /// Sends `addGoldenmEmployee` when [id] is null, or `editGoldenmEmployee`
  /// when [id] is set, both with this input serialized as the `EmployeeInput`
  /// GraphQL input type. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, Employee?)`:
  /// on an internal error, `(ApiStatus.internalError, null, null)`; on any
  /// other non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedEmployee)`.
  Future<StandardResponse<Employee>> save({
    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addGoldenmEmployee' : 'editGoldenmEmployee';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'GoldenmEmployeeInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: Employee.fragment)),
        ),
        _employeeDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status);
        return (ApiStatus.internalError, null, null);
      }

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, response.errors, response.result);
    } catch (e, stack) {
      Log.critical("layrz_sdk/EmployeeInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
