part of '../outbound.dart';

/// [OutboundProtocol] describes an outbound integration protocol available in the Layrz platform,
/// used to configure an [OutboundService].
@freezed
abstract class OutboundProtocol with _$OutboundProtocol {
  /// Private constructor used by the code generator.
  const OutboundProtocol._();

  const factory OutboundProtocol({
    /// [id] is the protocol ID, this ID is unique for each protocol.
    required String id,

    /// [name] is the name of the protocol.
    /// This name is a translation key, so, check the translation messages to get the name,
    /// the key is composed by `protocols.outbound.{name}`.
    required String name,

    /// [color] is the color assigned to the protocol.
    @ColorConverter() required Color color,

    /// [isEnabled] indicates if the protocol is enabled and available for use, or disabled and not available for use.
    required bool isEnabled,

    /// [categoriesIds] is the list of categories IDs that the protocol belongs to.
    @Default([]) List<String> categoriesIds,

    /// [hasFtp] indicates if the protocol has support for FTP.
    bool? hasFtp,

    /// [isConsumpted] indicates if the protocol is consumpted.
    bool? isConsumpted,

    /// [mqttTopic] is the MQTT topic of the protocol.
    String? mqttTopic,

    /// [isAsync] indicates if the protocol is asynchronous.
    bool? isAsync,

    /// [requiredFields] is the list of required fields for the protocol.
    @Default([]) List<CredentialField> requiredFields,

    /// [dynamicIcon] is the icon of the inbound protocol.
    /// This is the new schema of the icon
    Avatar? dynamicIcon,

    /// [usage] is the usage of the protocol. This field shuld be only used to show the popularity of the protocol.
    /// For marketing purposes.
    int? usage,
  }) = _OutboundProtocol;

  /// [fromJson] builds an [OutboundProtocol] from a decoded JSON [json] map.
  factory OutboundProtocol.fromJson(Map<String, dynamic> json) => _$OutboundProtocolFromJson(json);

  // coverage:ignore-start
  /// [fragment] is the GraphQL fragment definition for querying outbound protocol fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'outboundProtocolFragment',
    onType: 'OutboundProtocol',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'color'),
      GqlField(name: 'isEnabled'),
      GqlField(name: 'categoriesIds'),
      GqlField(name: 'hasFtp'),
      GqlField(name: 'isConsumpted'),
      GqlField(name: 'mqttTopic'),
      GqlField(name: 'isAsync'),
      GqlField(name: 'requiredFields', fragment: CredentialField.fragment),
      GqlField(name: 'dynamicIcon', fragment: Avatar.fragment),
      GqlField(name: 'usage'),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all outbound protocols available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`outboundProtocols`) to retrieve every
  /// [OutboundProtocol] visible to the user. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called once per invocation,
  /// regardless of success or failure. This allows the caller to observe success or error states
  /// without relying on the return value alone.
  ///
  /// Returns an empty list on any error (network failure, authentication failure, or server error).
  /// Errors are logged internally.
  static Future<List<OutboundProtocol>> fetchAll({
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
        GqlQuery(name: 'outboundProtocols')..add(
          GqlField(name: 'outboundProtocols')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _outboundProtocolListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/OutboundProtocol/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single outbound protocol by its [id].
  ///
  /// Makes an authenticated GraphQL query (`outboundProtocols`) filtered by [id]. The backend
  /// always returns `result` as a list, even when filtered down to a single entity, so the first
  /// element (if any) is returned. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called once per invocation,
  /// regardless of success or failure.
  ///
  /// Returns `null` on any error (network failure, authentication failure, server error, or no
  /// matching protocol). Errors are logged internally.
  static Future<OutboundProtocol?> fetch({
    /// [id] is the ID of the [OutboundProtocol] to fetch.
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
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: 'outboundProtocols',
        )..add(
          GqlField(name: 'outboundProtocols', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/OutboundProtocol/fetch(): No result in list");
            return null;
          }
          return OutboundProtocol.fromJson(Map<String, dynamic>.from(resultList.first as Map));
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/OutboundProtocol/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end
}

/// [_outboundProtocolDecoder] decodes a single-object `result` payload into an [OutboundProtocol].
/// Used by result-bearing mutations (add/edit-style).
OutboundProtocol _outboundProtocolDecoder(Object? json) {
  return OutboundProtocol.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_outboundProtocolListDecoder] decodes a raw listing `result` payload into a list of
/// [OutboundProtocol]. Used by listing queries (fetchAll).
List<OutboundProtocol> _outboundProtocolListDecoder(Object? json) {
  return List<OutboundProtocol>.from(
    (json as List? ?? []).map((e) => OutboundProtocol.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}
