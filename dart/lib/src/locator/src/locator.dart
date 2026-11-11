part of '../locator.dart';

/// Immutable representation of a locator: a shareable, expirable link that exposes assets, geofences and
/// points of interest on a map.
@freezed
abstract class Locator with _$Locator {
  /// Private constructor used by the code generator.
  const Locator._();

  /// Constructs an immutable [Locator].
  const factory Locator({
    /// Is the UUIDv4 identifier of the locator.
    required String id,

    /// Is the token used to access the locator.
    required String token,

    /// Is the MQTT configuration of the locator.
    LocatorMqttConfig? mqttConfig,

    /// Is the list of assets associated with the locator.
    List<Asset>? assets,

    /// Is the list of asset IDs associated with the locator.
    List<String>? assetsIds,

    /// Is the list of geofences associated with the locator.
    List<Geofence>? geofences,

    /// Is the list of geofence IDs associated with the locator.
    List<String>? geofencesIds,

    /// Is the list of triggers associated with the locator.
    List<Trigger>? triggers,

    /// Is the list of trigger IDs associated with the locator.
    List<String>? triggersIds,

    /// Is the expiration date of the locator, null for non-expiring locators.
    @TimestampOrNullConverter() DateTime? expiresAt,

    /// Is the user who expired the locator, null if not expired.
    User? expiredBy,

    /// Is the ID of the user who expired the locator, null if not expired.
    String? expiredById,

    /// Indicates if the locator is expired.
    bool? isExpired,

    /// Is the creation date of the locator.
    @TimestampOrNullConverter() DateTime? createdAt,

    /// Is the user who created the locator.
    User? createdBy,

    /// Is the ID of the user who created the locator.
    String? createdById,

    /// Is the last update date of the locator.
    @TimestampOrNullConverter() DateTime? updatedAt,

    /// Is the user who last updated the locator.
    User? updatedBy,

    /// Is the ID of the user who last updated the locator.
    String? updatedById,

    /// Is the registered app that acts as a customization for this locator.
    RegisteredApp? customization,

    /// Is the ID of the registered app that acts as a customization for this locator.
    String? customizationId,

    /// Is the ID of the map layer used by this locator.
    String? mapLayerId,

    /// Is the map layer used by this locator.
    MapLayer? mapLayer,

    /// Is the list of points of interest associated with the locator.
    List<Poi>? pois,

    /// Is the list of point of interest IDs associated with the locator.
    List<String>? poisIds,

    /// Indicates if the sidebar is enabled for this locator.
    bool? enableSidebar,

    /// Indicates if the asset label overlays are visible for this locator.
    bool? showAssetsLabels,

    /// Indicates if the geofence label overlays are visible for this locator.
    bool? showGeofencesLabels,

    /// Indicates if the point of interest label overlays are visible for this locator.
    bool? showPoisLabels,

    /// Indicates if the asset trail lines are visible for this locator.
    bool? showAssetsTrails,

    /// Is the geographic bounding box of the locator.
    LocatorBoundary? boundary,

    /// Is the description of the locator.
    String? description,
  }) = _Locator;

  /// Deserializes a [Locator] from a JSON map.
  factory Locator.fromJson(Map<String, dynamic> json) => _$LocatorFromJson(json);

  /// Public URL of the locator. Uses the host of the web instance of [customization] when available,
  /// otherwise the default Layrz locator host.
  String get link {
    final webInstance = customization?.instances?.firstWhereOrNull((e) => e.platform == AppPlatform.web);
    final webHost = webInstance?.host ?? '';
    if (webHost.isNotEmpty) return 'https://$webHost/#/$token';
    return 'https://find.layrz.com/#/$token';
  }

  // coverage:ignore-start
  /// Lightweight GraphQL fragment for listings: omits assets, geofences, triggers, points of interest,
  /// boundary, map layer and MQTT configuration.
  static GqlFragment get lightFragment => GqlFragment(
    name: 'locatorLightFragment',
    onType: 'Locator',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'token'),
      GqlField(name: 'description'),
      GqlField(name: 'isExpired'),
      GqlField(name: 'expiresAt'),
      GqlField(name: 'expiredBy', fragment: _userFragment),
      GqlField(name: 'expiredById'),
      GqlField(name: 'createdAt'),
      GqlField(name: 'createdBy', fragment: _userFragment),
      GqlField(name: 'createdById'),
      GqlField(name: 'updatedAt'),
      GqlField(name: 'updatedBy', fragment: _userFragment),
      GqlField(name: 'updatedById'),
      GqlField(name: 'customizationId'),
      GqlField(name: 'customization')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'nickname'))
        ..add(GqlField(name: 'technology'))
        ..add(GqlField(name: 'sourceId'))
        ..add(
          GqlField(name: 'instances')
            ..add(GqlField(name: 'id'))
            ..add(GqlField(name: 'appId'))
            ..add(GqlField(name: 'platform'))
            ..add(GqlField(name: 'host')),
        ),
    ],
  );

  /// Complete GraphQL fragment, including nested associations. Used by [fetch] and by the `save` caller of
  /// [LocatorInput].
  ///
  /// Points of interest select only `id`, `name`, `latitude` and `longitude`; do not add `access` there.
  static GqlFragment get fragment => GqlFragment(
    name: 'locatorFragment',
    onType: 'Locator',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'token'),
      GqlField(name: 'mqttConfig')
        ..add(GqlField(name: 'host'))
        ..add(GqlField(name: 'port'))
        ..add(GqlField(name: 'username'))
        ..add(GqlField(name: 'password'))
        ..add(GqlField(name: 'topic')),
      GqlField(name: 'customization')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'nickname'))
        ..add(GqlField(name: 'technology'))
        ..add(GqlField(name: 'sourceId'))
        ..add(
          GqlField(name: 'instances')
            ..add(GqlField(name: 'id'))
            ..add(GqlField(name: 'appId'))
            ..add(GqlField(name: 'platform'))
            ..add(GqlField(name: 'host')),
        ),
      GqlField(name: 'assets')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'mode'))
        ..add(GqlField(name: 'dynamicIcon', fragment: Avatar.fragment)),
      GqlField(name: 'assetsIds'),
      GqlField(name: 'geofences')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'mode'))
        ..add(GqlField(name: 'color')),
      GqlField(name: 'geofencesIds'),
      GqlField(name: 'triggers')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'code'))
        ..add(GqlField(name: 'color'))
        ..add(GqlField(name: 'kind')),
      GqlField(name: 'triggersIds'),
      GqlField(name: 'mapLayerId'),
      GqlField(name: 'mapLayer')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'source')),
      GqlField(name: 'poisIds'),
      GqlField(name: 'pois')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'latitude'))
        ..add(GqlField(name: 'longitude')),
      GqlField(name: 'enableSidebar'),
      GqlField(name: 'showAssetsLabels'),
      GqlField(name: 'showGeofencesLabels'),
      GqlField(name: 'showPoisLabels'),
      GqlField(name: 'showAssetsTrails'),
      GqlField(name: 'boundary')
        ..add(
          GqlField(name: 'topleft')
            ..add(GqlField(name: 'latitude'))
            ..add(GqlField(name: 'longitude')),
        )
        ..add(
          GqlField(name: 'bottomright')
            ..add(GqlField(name: 'latitude'))
            ..add(GqlField(name: 'longitude')),
        ),
      GqlField(name: 'description'),
      GqlField(name: 'isExpired'),
      GqlField(name: 'expiresAt'),
      GqlField(name: 'expiredBy', fragment: _userFragment),
      GqlField(name: 'expiredById'),
      GqlField(name: 'createdAt'),
      GqlField(name: 'createdBy', fragment: _userFragment),
      GqlField(name: 'createdById'),
      GqlField(name: 'updatedAt'),
      GqlField(name: 'updatedBy', fragment: _userFragment),
      GqlField(name: 'updatedById'),
      GqlField(name: 'customizationId'),
    ],
  );

  /// Lightweight user reference fragment shared by the locator fragments.
  static GqlFragment get _userFragment => GqlFragment(
    name: 'locatorUserFields',
    onType: 'User',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'dynamicAvatar', fragment: Avatar.fragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all non-expired locators available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`locators`) using [lightFragment]. Authentication is carried
  /// solely via the connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns an empty list on any error. Errors are logged internally.
  static Future<List<Locator>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [],
          name: 'fetchLocators',
        )..add(
          GqlField(name: 'locators')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: lightFragment)),
        ),
        _locatorListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/Locator/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single locator by its [id], using the complete [fragment].
  ///
  /// The backend always returns `result` as a list, so the first element (if any) is returned.
  /// Authentication is carried solely via the connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns `null` on any error or when no locator matches.
  static Future<Locator?> fetch({
    /// The ID of the [Locator] to fetch.
    required String id,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: false, value: id),
          ],
          name: 'fetchLocators',
        )..add(
          GqlField(name: 'locators', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/Locator/fetch(): No result in list");
            return null;
          }
          return _locatorDecoder(resultList.first);
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Locator/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Expires this locator. Locators are never deleted, they are expired.
  ///
  /// Sends the `expireLocators` mutation with this locator's [id]. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Returns `true` on success, `false` on any error. Errors are logged internally.
  Future<bool> expire({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) {
    return expireMultiple(ids: [id], apiToken: apiToken, uri: uri, onResponse: onResponse);
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Expires multiple locators by their [ids]. Locators are never deleted, they are expired.
  ///
  /// Sends the `expireLocators` mutation. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Returns `true` on success, `false` on any error. Errors are logged internally.
  static Future<bool> expireMultiple({
    /// The IDs of the locators to expire.
    required List<String> ids,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'ids',
              type: .list(of: .id),
              isRequired: true,
              value: ids,
            ),
          ],
          name: 'expireLocators',
        )..add(
          GqlField(name: 'expireLocators', args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Locator/expireMultiple(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}

/// [_locatorDecoder] decodes a single-object `result` payload into a [Locator].
/// Used by result-bearing mutations and single-item fetches.
Locator _locatorDecoder(Object? json) {
  return Locator.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_locatorListDecoder] decodes a raw listing `result` payload into a list of [Locator].
/// Used by listing queries (fetchAll).
List<Locator> _locatorListDecoder(Object? json) {
  return List<Locator>.from(
    (json as List? ?? []).map((e) => Locator.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}
