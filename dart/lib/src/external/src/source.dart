part of '../external.dart';

/// [ExternalSource] represents a supported external integration source/protocol in Layrz.
///
/// External sources define the available platforms (e.g., Wialon, GPS trackers) that can be
/// connected to Layrz. Each source has its own configuration requirements and visual identity.
@freezed
abstract class ExternalSource with _$ExternalSource {
  /// Private constructor used by the code generator.
  const ExternalSource._();

  /// Constructs an immutable [ExternalSource].
  const factory ExternalSource({
    /// [id] is the unique database identifier for this external source.
    required String id,

    /// [name] is the display name of the external source/protocol.
    required String name,

    /// [color] is the brand or theme color associated with this external source.
    @ColorConverter() required Color color,

    /// [isEnabled] indicates whether this external source is currently active and available for use.
    required bool isEnabled,

    /// [requiredFields] is the list of credential fields required to authenticate with this external source.
    @Default([]) List<CredentialField> requiredFields,
  }) = _ExternalSource;

  /// Creates an [ExternalSource] from a JSON map.
  factory ExternalSource.fromJson(Map<String, dynamic> json) => _$ExternalSourceFromJson(json);

  /// [fragment] is the GqlFragment for an external source, including its required credential fields.
  static GqlFragment get fragment => GqlFragment(name: 'externalSourceFragment', onType: 'ExternalSource')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'color'))
    ..add(GqlField(name: 'isEnabled'))
    ..add(GqlField(name: 'requiredFields', fragment: CredentialField.fragment));

  // coverage:ignore-start
  /// [fetchAll] fetches every external source available for the authenticated user.
  ///
  /// Sends the `externalSources` query. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Returns the list of sources, or an empty list on any error. Errors are logged internally.
  static Future<List<ExternalSource>> fetchAll({
    /// [apiToken] is the API token to use for authentication
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use
    required Uri uri,

    /// [onResponse] is the callback invoked with the [ApiStatus] of the response when it is not ok
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [],
          name: 'fetchExternalSources',
        )..add(
          GqlField(name: 'externalSources')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _externalSourceListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        Log.error("layrz_sdk/ExternalSource/fetchAll(): ${response.status} => ${response.errors}");
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/ExternalSource/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end
}
