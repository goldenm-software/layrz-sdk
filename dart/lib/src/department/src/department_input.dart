part of '../department.dart';

/// Decodes a single-object `result` payload into a [Department]. Used by
/// [DepartmentInput.save].
Department _departmentDecoder(Object? json) => Department.fromJson(Map<String, dynamic>.from(json as Map));

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

  // coverage:ignore-start
  /// Creates or updates this department on the server.
  ///
  /// Sends `addDepartment` when [id] is null, or `editDepartment` when [id]
  /// is set, both with this input serialized as the `DepartmentInput`
  /// GraphQL input type. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, Department?)`:
  /// on an internal error, `(ApiStatus.internalError, null, null)`; on any
  /// other non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedDepartment)`.
  Future<StandardResponse<Department>> save({
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
    final operation = id == null ? 'addDepartment' : 'editDepartment';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'DepartmentInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: Department.fragment)),
        ),
        _departmentDecoder,
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
      Log.critical("layrz_sdk/DepartmentInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
