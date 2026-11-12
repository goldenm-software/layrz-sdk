part of '../locator.dart';

/// Mutable input data for creating or updating a [Locator].
///
/// When [id] is null, [save] creates a new locator; otherwise it updates the existing one.
@unfreezed
abstract class LocatorInput with _$LocatorInput {
  /// Private constructor used by the code generator.
  const LocatorInput._();

  /// Constructs a mutable [LocatorInput].
  factory LocatorInput({
    /// Is the UUIDv4 identifier of the locator, or null when creating a new one.
    String? id,

    /// Is the list of asset IDs associated with the locator.
    @Default([]) List<String> assetsIds,

    /// Is the list of geofence IDs associated with the locator.
    @Default([]) List<String> geofencesIds,

    /// Is the list of trigger IDs associated with the locator.
    @Default([]) List<String> triggersIds,

    /// Is the expiration date of the locator, null for non-expiring locators.
    @TimestampOrNullConverter() DateTime? expiresAt,

    /// Is the ID of the registered app that acts as a customization for this locator.
    String? customizationId,

    /// Is the list of point of interest IDs associated with the locator.
    @Default([]) List<String> poisIds,

    /// Is the ID of the map layer used by this locator.
    String? mapLayerId,

    /// Indicates if the sidebar is enabled for this locator.
    @Default(true) bool enableSidebar,

    /// Indicates if the asset label overlays are visible for this locator.
    @Default(false) bool showAssetsLabels,

    /// Indicates if the geofence label overlays are visible for this locator.
    @Default(false) bool showGeofencesLabels,

    /// Indicates if the point of interest label overlays are visible for this locator.
    @Default(false) bool showPoisLabels,

    /// Indicates if the asset trail lines are visible for this locator.
    @Default(true) bool showAssetsTrails,

    /// Is the geographic bounding box of the locator.
    LocatorBoundaryInput? boundary,

    /// Is the description of the locator.
    String? description,
  }) = _LocatorInput;

  /// Deserializes a [LocatorInput] from a JSON map.
  factory LocatorInput.fromJson(Map<String, dynamic> json) => _$LocatorInputFromJson(json);

  /// Simulated public URL of this locator, using a placeholder token. Uses the host of the web instance of
  /// [customization] when available, otherwise the default Layrz locator host.
  String simulateLink({RegisteredApp? customization}) {
    const token = 'SIMULATED_TOKEN';
    final webInstance = customization?.instances?.firstWhereOrNull((e) => e.platform == AppPlatform.web);
    final webHost = webInstance?.host ?? '';
    if (webHost.isNotEmpty) return 'https://$webHost/#/$token';
    return 'https://find.layrz.com/#/$token';
  }

  // coverage:ignore-start
  /// Creates or updates this locator on the server.
  ///
  /// Sends `addLocator` when [id] is null, or `editLocator` when [id] is set, with this input serialized as
  /// the `LocatorInput` GraphQL input type. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, Locator?)`: on an internal error,
  /// `(ApiStatus.internalError, null, null)`; on any other non-ok status, `(status, errors, null)`; on
  /// success, `(status, errors, savedLocator)`.
  Future<StandardResponse<Locator>> save({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when it is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addLocator' : 'editLocator';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'LocatorInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: Locator.fragment)),
        ),
        _locatorDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status);
        return (ApiStatus.internalError, null, null);
      }

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, response.errors, response.result);
    } catch (e, stack) {
      Log.critical("layrz_sdk/LocatorInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
