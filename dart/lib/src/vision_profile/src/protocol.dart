part of '../vision_profile.dart';

/// Immutable definition of a Layrz Vision protocol.
///
/// [VisionProtocol] is the entity that defines the structure of the configuration of the vision
/// profile service.
@freezed
abstract class VisionProtocol with _$VisionProtocol {
  /// Constructs an immutable [VisionProtocol].
  const factory VisionProtocol({
    /// [id] is the ID of the entity. This ID is unique.
    required String id,

    /// [name] is the protocol name.
    required String name,

    /// [color] is the color of the protocol.
    @ColorConverter() required Color color,

    /// [isEnabled] is the current status of the protocol.
    required bool isEnabled,

    /// [requiredFields] is the list of required fields for the protocol.
    @Default([]) List<CredentialField> requiredFields,

    /// [usage] is the usage of the protocol. This field should be only used to show the
    /// popularity of the protocol. For marketing purposes.
    int? usage,

    /// [dynamicIcon] is the icon of the protocol.
    Avatar? dynamicIcon,
  }) = _VisionProtocol;

  /// Deserializes a [VisionProtocol] from a JSON map.
  factory VisionProtocol.fromJson(Map<String, dynamic> json) => _$VisionProtocolFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying vision protocol fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'visionProtocolFragment',
    onType: 'VisionProtocol',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'color'),
      GqlField(name: 'isEnabled'),
      GqlField(name: 'dynamicIcon', fragment: Avatar.fragment),
      GqlField(name: 'requiredFields', fragment: CredentialField.fragment),
      GqlField(name: 'usage'),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all vision protocols available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`visionProtocols`) to retrieve every [VisionProtocol]
  /// visible to the user. Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called once per invocation,
  /// regardless of success or failure.
  ///
  /// Returns an empty list on any error (network failure, authentication failure, or server
  /// error). Errors are logged internally.
  static Future<List<VisionProtocol>> fetchAll({
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
        GqlQuery(name: 'visionProtocols')..add(
          GqlField(name: 'visionProtocols')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _visionProtocolListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical('layrz_sdk/VisionProtocol/fetchAll(): General exception => $e\n$stack');
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single vision protocol by its [id].
  ///
  /// Makes an authenticated GraphQL query (`visionProtocols`) filtered by [id]. The backend
  /// always returns `result` as a list, even when filtered down to a single entity, so the first
  /// element (if any) is returned. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called once per invocation,
  /// regardless of success or failure.
  ///
  /// Returns `null` on any error (network failure, authentication failure, server error, or no
  /// matching protocol). Errors are logged internally.
  static Future<VisionProtocol?> fetch({
    /// [id] is the ID of the [VisionProtocol] to fetch.
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
          name: 'visionProtocols',
          variables: [GqlVariable(name: 'id', type: .id, isRequired: true, value: id)],
        )..add(
          GqlField(name: 'visionProtocols', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning('layrz_sdk/VisionProtocol/fetch(): No result in list');
            return null;
          }
          return VisionProtocol.fromJson(Map<String, dynamic>.from(resultList.first as Map));
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical('layrz_sdk/VisionProtocol/fetch(): General exception => $e\n$stack');
      return null;
    }
  }
  // coverage:ignore-end
}

/// [_visionProtocolDecoder] decodes a single-object `result` payload into a [VisionProtocol].
/// Used by result-bearing mutations (add/edit-style).
VisionProtocol _visionProtocolDecoder(Object? json) {
  return VisionProtocol.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_visionProtocolListDecoder] decodes a raw listing `result` payload into a list of
/// [VisionProtocol]. Used by listing queries (fetchAll).
List<VisionProtocol> _visionProtocolListDecoder(Object? json) {
  return List<VisionProtocol>.from(
    (json as List? ?? []).map((e) => VisionProtocol.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}
