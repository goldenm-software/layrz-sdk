part of '../exchange.dart';

/// Immutable definition of a data-exchange protocol an [ExchangeService] can be driven by.
@freezed
abstract class ExchangeProtocol with _$ExchangeProtocol {
  /// Private constructor used by the code generator.
  const ExchangeProtocol._();

  /// Constructs an immutable [ExchangeProtocol].
  const factory ExchangeProtocol({
    /// Is the protocol ID, unique for each protocol.
    required String id,

    /// Is the name of the protocol. This name is a translation key, so check the translation
    /// messages to get the display name; the key is composed as `protocols.exchange.{name}`.
    required String name,

    /// Is the color assigned to the protocol.
    @ColorConverter() required Color color,

    /// Is the icon of the protocol, in its new schema.
    Avatar? dynamicIcon,

    /// Is the list of required fields for the protocol. Defaults to an empty list.
    @Default([]) List<CredentialField> requiredFields,

    /// Indicates if the protocol is enabled and available for use, or disabled and not
    /// available for use.
    required bool isEnabled,

    /// Indicates if the protocol requires a Flespi token to work.
    bool? requiresFlespiToken,

    /// Is the ACL for the Flespi token generation.
    List<FlespiAcl>? flespiAcl,

    /// Is the usage of the protocol. This field should only be used to show the popularity of
    /// the protocol, for marketing purposes.
    int? usage,

    /// Indicates if the protocol requires assets to work.
    bool? requiresAssets,

    /// Indicates if the protocol requires geofences to work.
    bool? requiresGeofences,
  }) = _ExchangeProtocol;

  /// Deserializes an [ExchangeProtocol] from a JSON map.
  factory ExchangeProtocol.fromJson(Map<String, dynamic> json) => _$ExchangeProtocolFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying exchange protocol fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'exchangeProtocolFragment',
    onType: 'ExchangeProtocol',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'color'),
      GqlField(name: 'dynamicIcon', fragment: Avatar.fragment),
      GqlField(name: 'requiredFields', fragment: CredentialField.fragment),
      GqlField(name: 'isEnabled'),
      GqlField(name: 'requiresFlespiToken'),
      GqlField(name: 'flespiAcl', fragment: FlespiAcl.fragment),
      GqlField(name: 'usage'),
      GqlField(name: 'requiresAssets'),
      GqlField(name: 'requiresGeofences'),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all exchange protocols available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`exchangeProtocols`) to retrieve
  /// every [ExchangeProtocol] visible to the user. Authentication is carried
  /// solely via the connector's `Authorization` header, built from
  /// [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure. This allows the
  /// caller to observe success or error states without relying on the return
  /// value alone.
  ///
  /// Returns an empty list on any error (network failure, authentication
  /// failure, or server error). Errors are logged internally.
  static Future<List<ExchangeProtocol>> fetchAll({
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
        GqlQuery(name: 'exchangeProtocols')..add(
          GqlField(name: 'exchangeProtocols')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _exchangeProtocolListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/ExchangeProtocol/fetchAll(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single exchange protocol by its [id].
  ///
  /// Makes an authenticated GraphQL query (`exchangeProtocols`) filtered by
  /// [id]. The backend always returns `result` as a list, even when filtered
  /// down to a single entity, so the first element (if any) is returned.
  /// Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns `null` on any error (network failure, authentication failure,
  /// server error, or no matching protocol). Errors are logged internally.
  static Future<ExchangeProtocol?> fetch({
    /// The ID of the [ExchangeProtocol] to fetch.
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
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: 'exchangeProtocols',
        )..add(
          GqlField(
              name: 'exchangeProtocols',
              args: {'id': 'id'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/ExchangeProtocol/fetch(): No result in list");
            return null;
          }
          return ExchangeProtocol.fromJson(
            Map<String, dynamic>.from(resultList.first as Map),
          );
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/ExchangeProtocol/fetch(): General exception => $e\n$stack",
      );
      return null;
    }
  }
  // coverage:ignore-end
}

/// [_exchangeProtocolDecoder] decodes a single-object `result` payload into
/// an [ExchangeProtocol]. Used by result-bearing mutations (add/edit-style).
ExchangeProtocol _exchangeProtocolDecoder(Object? json) {
  return ExchangeProtocol.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_exchangeProtocolListDecoder] decodes a raw listing `result` payload into
/// a list of [ExchangeProtocol]. Used by listing queries (fetchAll).
List<ExchangeProtocol> _exchangeProtocolListDecoder(Object? json) {
  return List<ExchangeProtocol>.from(
    (json as List? ?? []).map(
      (e) => ExchangeProtocol.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}
