part of '../access.dart';

/// Mutable input data for creating, updating, or deleting an [Access] grant.
///
/// [AccessInput] mirrors the fields of [Access] but is mutable and provides
/// sensible defaults, making it suitable for form binding before submission
/// via [save] or [delete]. When [id] is null, [save] creates a new access
/// grant; otherwise it updates the existing one.
@unfreezed
abstract class AccessInput with _$AccessInput {
  /// Private constructor used by the code generator.
  const AccessInput._();

  /// Constructs a mutable [AccessInput].
  factory AccessInput({
    /// Unique identifier for this access grant, or null when creating a new
    /// one.
    String? id,

    /// Whether the grantee has read permission. Defaults to false.
    @Default(false) bool read,

    /// Whether the grantee has write permission. Defaults to false.
    @Default(false) bool write,

    /// Whether the grantee has manage permission. Defaults to false.
    @Default(false) bool manage,

    /// The ID of the entity this access grant applies to.
    String? objectId,

    /// The ID of the user this access grant applies to.
    String? userId,

    /// The platform module this access grant applies to.
    @JsonKey(unknownEnumValue: AccessModule.unknown) required AccessModule module,
  }) = _AccessInput;

  /// Deserializes an [AccessInput] from a JSON map.
  factory AccessInput.fromJson(Map<String, dynamic> json) => _$AccessInputFromJson(json);

  // coverage:ignore-start
  /// Saves this access input to the server (creates when [id] is null,
  /// otherwise updates).
  ///
  /// Returns `true` when the save succeeded, `false` on any error (network
  /// failure, authentication failure, or server error). Errors are logged
  /// internally.
  Future<bool> save({
    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,

    /// Whether to use the UUID-keyed variant of the access mutation.
    bool useUuid = false,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final isNew = id == null;
    final opName = isNew
        ? (useUuid ? 'addAccessPermissionUuid' : 'addAccessPermission')
        : (useUuid ? 'editAccessPermissionUuid' : 'editAccessPermission');
    final inputName = useUuid ? 'AccessPermissionUuidInput' : 'AccessPermissionInput';
    try {
      final response = await connector.perform(
        GqlMutation(
          variables: [
            GqlVariable(name: 'apiToken', type: .string, isRequired: true, value: apiToken),
            GqlVariable(
              name: 'data',
              type: .input(of: inputName),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: opName,
        )..add(
          GqlField(name: opName, args: {'apiToken': 'apiToken', 'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      final data = response.data;
      if (data == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/AccessInput/save(): No response from server");
        return false;
      }

      final result = data['data'][opName];
      if (result == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/AccessInput/save(): No result from server");
        return false;
      }

      final status = ApiStatus.fromJson(result['status']);
      if (status != ApiStatus.ok) {
        onResponse?.call(status.toJson());
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_models/AccessInput/save(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the access permission identified by this input from the server.
  ///
  /// Returns `true` when the delete succeeded, `false` on any error (network
  /// failure, authentication failure, or server error). Errors are logged
  /// internally.
  Future<bool> delete({
    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,

    /// Whether to use the UUID-keyed variant of the access mutation.
    bool useUuid = false,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final opName = useUuid ? 'deleteAccessPermissionUuid' : 'deleteAccessPermission';
    final inputName = useUuid ? 'AccessPermissionUuidInput' : 'AccessPermissionInput';

    try {
      final response = await connector.perform(
        GqlMutation(
          variables: [
            GqlVariable(name: 'apiToken', type: .string, isRequired: true, value: apiToken),
            GqlVariable(
              name: 'data',
              type: .input(of: inputName),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: opName,
        )..add(
          GqlField(name: opName, args: {'apiToken': 'apiToken', 'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      final data = response.data;
      if (data == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/Access/delete(): No response from server");
        return false;
      }

      final result = data['data'][opName];
      if (result == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/Access/delete(): No result from server");
        return false;
      }

      final status = ApiStatus.fromJson(result['status']);
      if (status != ApiStatus.ok) {
        onResponse?.call(status.toJson());
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_models/Access/delete(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}
