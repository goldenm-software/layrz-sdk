part of '../vision_profile.dart';

/// Immutable Layrz Vision profile configuration.
///
/// [VisionProfile] binds a [protocol] configuration ([config]) to a set of
/// granted [access] entries, and exposes the [lastMeasurement] recorded for
/// the profile, when available.
@freezed
abstract class VisionProfile with _$VisionProfile {
  /// Constructs an immutable [VisionProfile].
  const factory VisionProfile({
    /// Unique identifier of the profile.
    required String id,

    /// Name of the profile.
    required String name,

    /// ID of the protocol used by this profile.
    String? protocolId,

    /// The protocol used by this profile.
    VisionProtocol? protocol,

    /// The configuration of the profile.
    Map<String, dynamic>? config,

    /// The list of granted access entries for this vision profile.
    List<Access>? access,

    /// The last measurement of the profile, or null if there is no
    /// measurement yet.
    VisionGaugeResult? lastMeasurement,
  }) = _VisionProfile;

  /// Deserializes a [VisionProfile] from a JSON map.
  factory VisionProfile.fromJson(Map<String, dynamic> json) => _$VisionProfileFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying vision profile fields.
  ///
  /// Only [id], [name], [protocolId], [config], and [access] are selected.
  /// The heavier nested [protocol] and [lastMeasurement] fields are
  /// intentionally omitted; fetch a single [VisionProfile] separately when
  /// that detail is required.
  static GqlFragment get fragment => GqlFragment(
    name: 'visionProfileFragment',
    onType: 'VisionProfile',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'protocolId'),
      GqlField(name: 'config'),
      GqlField(name: 'access', fragment: Access.idFragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// GraphQL fragment definition for querying a vision profile together with its [protocol].
  ///
  /// Selects everything in [fragment] plus the nested [protocol] (including its `requiredFields`),
  /// which forms need to render the protocol-specific configuration. Used by [fetch] and [fetchAll].
  static GqlFragment get fullFragment => GqlFragment(
    name: 'visionProfileFullFragment',
    onType: 'VisionProfile',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'protocolId'),
      GqlField(name: 'config'),
      GqlField(name: 'protocol', fragment: VisionProtocol.fragment),
      GqlField(name: 'access', fragment: Access.idFragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all vision profiles available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`visionProfiles`) to retrieve
  /// every [VisionProfile] visible to the user, including its [protocol]
  /// (see [fullFragment]). Authentication is carried
  /// solely via the connector's `Authorization` header, built from
  /// [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns an empty list on any error (network failure, authentication
  /// failure, or server error). Errors are logged internally.
  static Future<List<VisionProfile>> fetchAll({
    /// [apiToken] is the API token for authentication. Obtain via the
    /// `login` mutation on the GraphQL API.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint (e.g.
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// [onResponse] is an optional callback invoked with the [ApiStatus] of
    /// the response. Called once per invocation, regardless of success or
    /// failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'visionProfiles')..add(
          GqlField(name: 'visionProfiles')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fullFragment)),
        ),
        _visionProfileListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical('layrz_sdk/VisionProfile/fetchAll(): General exception => $e\n$stack');
      return [];
    }
  }
  // coverage:ignore-end
  // coverage:ignore-start
  /// Fetches a single vision profile by its [id].
  ///
  /// Makes an authenticated GraphQL query (`visionProfiles`) filtered by [id], selecting
  /// [fullFragment] (including the nested [protocol] and its required fields). The backend always
  /// returns `result` as a list, even when filtered down to a single entity, so the first element
  /// (if any) is returned. Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Returns `null` on any error (network failure, authentication failure, server error, or no
  /// matching profile). Errors are logged internally.
  static Future<VisionProfile?> fetch({
    /// [id] is the ID of the [VisionProfile] to fetch.
    required String id,

    /// [apiToken] is the API token for authentication. Obtain via the `login` mutation on the
    /// GraphQL API.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint (e.g. `https://api.example.com/graphql`).
    required Uri uri,

    /// [onResponse] is an optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'visionProfiles',
          variables: [GqlVariable(name: 'id', type: .id, isRequired: true, value: id)],
        )..add(
          GqlField(name: 'visionProfiles', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fullFragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning('layrz_sdk/VisionProfile/fetch(): No result in list');
            return null;
          }
          return VisionProfile.fromJson(Map<String, dynamic>.from(resultList.first as Map));
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical('layrz_sdk/VisionProfile/fetch(): General exception => $e\n$stack');
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes multiple vision profiles by their [ids].
  ///
  /// Sends the `deleteVisionProfiles` mutation. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns the [ApiStatus] of the operation ([ApiStatus.ok] on success, [ApiStatus.internalError]
  /// on any unexpected failure). The backend does not report which IDs were deleted.
  static Future<ApiStatus> deleteMultiple({
    /// [ids] is the list of vision profile IDs to delete.
    required List<String> ids,

    /// [apiToken] is the API token for authentication. Obtain via the `login` mutation on the
    /// GraphQL API.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint (e.g. `https://api.example.com/graphql`).
    required Uri uri,

    /// [onResponse] is an optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'deleteVisionProfiles',
          variables: [
            GqlVariable(name: 'ids', type: .list(of: .id), isRequired: true, value: ids),
          ],
        )..add(
          GqlField(name: 'deleteVisionProfiles', args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        Log.error('layrz_sdk/VisionProfile/deleteMultiple(): ${response.status} => ${response.errors}');
        return response.status;
      }

      return response.status;
    } catch (e, stack) {
      Log.critical('layrz_sdk/VisionProfile/deleteMultiple(): General exception => $e\n$stack');
      return ApiStatus.internalError;
    }
  }
  // coverage:ignore-end
}

/// [_visionProfileDecoder] decodes a single-object `result` payload into a [VisionProfile].
/// Used by result-bearing mutations (add/edit-style).
VisionProfile _visionProfileDecoder(Object? json) {
  return VisionProfile.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_visionProfileListDecoder] decodes a raw listing `result` payload into a
/// list of [VisionProfile]. Used by listing queries (fetchAll).
List<VisionProfile> _visionProfileListDecoder(Object? json) {
  return List<VisionProfile>.from(
    (json as List? ?? []).map((e) => VisionProfile.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}
