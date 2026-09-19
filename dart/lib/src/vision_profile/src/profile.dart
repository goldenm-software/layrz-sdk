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
  /// Fetches all vision profiles available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`visionProfiles`) to retrieve
  /// every [VisionProfile] visible to the user. Authentication is carried
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
            ..add(GqlField(name: 'result', fragment: fragment)),
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
}

/// [_visionProfileListDecoder] decodes a raw listing `result` payload into a
/// list of [VisionProfile]. Used by listing queries (fetchAll).
List<VisionProfile> _visionProfileListDecoder(Object? json) {
  return List<VisionProfile>.from(
    (json as List? ?? []).map((e) => VisionProfile.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}
