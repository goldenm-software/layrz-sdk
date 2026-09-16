part of '../department.dart';

/// Decodes a raw listing `result` payload into a list of [Department].
/// Used by [Department.fetchAll].
List<Department> _departmentListDecoder(Object? json) {
  return List<Department>.from(
    (json as List? ?? []).map((e) => Department.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

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
    onType: 'GoldenmDepartment',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'permissions', fragment: GenericPermission.fragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all departments visible to the user.
  ///
  /// Sends the `departments` query with no `id` argument, returning every
  /// department the caller can see with the fields covered by [fragment].
  static Future<List<Department>> fetchAll({
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
          GqlField(name: 'goldenmDepartments', args: {})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _departmentListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        Log.error("layrz_sdk/Department/fetchAll(): ${response.status} => ${response.errors}");
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/Department/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single department from the server by its [id].
  ///
  /// Sends the `goldenmDepartments` query with the `id` argument set, returning the
  /// matching [Department] with the fields covered by [fragment], or `null`
  /// when it cannot be found.
  static Future<Department?> fetch({
    /// The id of the department to fetch.
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
          GqlField(name: 'goldenmDepartments', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _departmentListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        Log.error("layrz_sdk/Department/fetch(): ${response.status} => ${response.errors}");
        return null;
      }

      final results = response.result ?? [];
      if (results.isEmpty) {
        Log.warning("layrz_sdk/Department/fetch(): No result in list");
        return null;
      }

      return results.first;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Department/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end
}
