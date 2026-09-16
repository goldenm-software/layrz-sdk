part of '../employee.dart';

/// Decodes a raw listing `result` payload into a list of [Employee].
/// Used by [Employee.fetchAll] and [Employee.fetch].
List<Employee> _employeeListDecoder(Object? json) {
  return List<Employee>.from(
    (json as List? ?? []).map((e) => Employee.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

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
    onType: 'GoldenmEmployee',
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

  // coverage:ignore-start
  /// [reducedFragment] is the GqlFragment for an employee.
  static GqlFragment get reducedFragment => GqlFragment(
    name: 'employeeFragment',
    onType: 'GoldenmEmployee',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'email'),
      GqlField(name: 'username'),
      GqlField(name: 'dynamicAvatar', fragment: Avatar.fragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all employees visible to the user.
  ///
  /// Sends the `goldenmEmployees` query with no `id` argument, returning every
  /// employee the caller can see with the fields covered by [fragment].
  /// Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Returns an empty list on any non-ok status or exception.
  static Future<List<Employee>> fetchAll({
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
    try {
      final response = await connector.query(
        GqlQuery(variables: [])..add(
          GqlField(name: 'goldenmEmployees', args: {})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _employeeListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        Log.error("layrz_sdk/Employee/fetchAll(): ${response.status} => ${response.errors}");
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/Employee/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single employee from the server by its [id].
  ///
  /// Sends the `goldenmEmployees` query with the `id` argument set. The query
  /// returns a list, so the first matching [Employee] with the fields covered
  /// by [fragment] is returned, or `null` when it cannot be found.
  /// Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  static Future<Employee?> fetch({
    /// The id of the employee to fetch.
    required String id,

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
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [GqlVariable(name: 'id', type: .id, isRequired: true, value: id)],
        )..add(
          GqlField(name: 'goldenmEmployees', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _employeeListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        Log.error("layrz_sdk/Employee/fetch(): ${response.status} => ${response.errors}");
        return null;
      }

      final results = response.result ?? [];
      if (results.isEmpty) {
        Log.warning("layrz_sdk/Employee/fetch(): No result in list");
        return null;
      }

      return results.first;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Employee/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the employees identified by [ids] from the server.
  ///
  /// Makes an authenticated GraphQL mutation (`deleteGoldenmEmployees`).
  /// Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken]. The mutation returns only `status` and
  /// `errors` on the wire (no per-item result payload), so the
  /// [StandardResponse] result slot is a plain `bool`: `true` on success,
  /// `false` otherwise.
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, bool)`: on an
  /// internal error, `(ApiStatus.internalError, null, false)`; on any other
  /// non-ok status, `(status, errors, false)`; on success, `(status, errors, true)`.
  static Future<StandardResponse<bool>> deleteMany({
    /// The unique identifiers of the [Employee] entries to delete.
    required List<String> ids,

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
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'ids',
              type: GqlVariableType.list(of: .id),
              isRequired: true,
              value: ids,
            ),
          ],
          name: 'deleteGoldenmEmployees',
        )..add(
          GqlField(name: 'deleteGoldenmEmployees', args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status);
        return (ApiStatus.internalError, null, false);
      }

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, false);
      }

      return (response.status, response.errors, true);
    } catch (e, stack) {
      Log.critical("layrz_sdk/Employee/deleteMany(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, false);
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Sends a password reset request for this employee.
  ///
  /// Makes an authenticated GraphQL mutation (`resetGoldenmEmployeePassword`)
  /// using this employee's [id] as the `employeeId` argument. Authentication
  /// is carried solely via the connector's `Authorization` header, built from
  /// [apiToken]. The mutation returns only `status` and `errors` on the wire.
  ///
  /// Returns `true` on success, `false` on any non-ok status or exception.
  Future<bool> resetPassword({
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
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(name: 'employeeId', type: .id, isRequired: true, value: id),
          ],
          name: 'resetGoldenmEmployeePassword',
        )..add(
          GqlField(name: 'resetGoldenmEmployeePassword', args: {'employeeId': 'employeeId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        Log.error("layrz_sdk/Employee/resetPassword(): ${response.status} => ${response.errors}");
        return false;
      }
      return true;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Employee/resetPassword(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}
