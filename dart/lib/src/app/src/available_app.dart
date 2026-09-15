part of '../app.dart';

/// Immutable catalog entry for an app that can be registered by a workspace.
@freezed
abstract class AvailableApp with _$AvailableApp {
  const AvailableApp._();

  /// Constructs an immutable [AvailableApp].
  const factory AvailableApp({
    /// [id] is the unique identifier of the app.
    required String id,

    /// [name] is the name of the app. It's a fixed name, not a translation key
    required String name,

    /// [technology] is the technology of the app.
    @JsonKey(unknownEnumValue: AppTechnology.flutter)
    @Default(AppTechnology.flutter)
    AppTechnology technology,

    /// [legalInformation] is the legal information of the app.
    AppLegal? legalInformation,

    /// [designInformation] is the design information of the app.
    AppDesign? designInformation,

    /// [appId] is the unique identifier of the app, like "com.layrz.launchpad".
    required String appId,

    /// [appType] is the type of the app.
    @JsonKey(unknownEnumValue: AppType.public)
    @Default(AppType.public)
    AppType appType,

    /// [supportedPlatforms] is the list of supported platforms of the App, depends of the technology.
    @JsonKey(unknownEnumValue: AppPlatform.web)
    List<AppPlatform>? supportedPlatforms,

    /// [onlyCustomized] is true if the app only can be register with customization.
    required bool onlyCustomized,

    /// [hasImport] is true if the app has import feature.
    bool? hasImport,

    /// [hasKeychain] is true if the app has keychain feature.
    bool? hasKeychain,

    /// [serverFolder] is the server folder of the app.
    String? serverFolder,

    /// [s3Folder] is the s3 folder of the app.
    String? s3Folder,

    /// [versions] is the list of versions of the app.
    List<AppVersion>? versions,

    /// [implementations] is the list of implementations of the app. Only
    /// populated when fetched via [fetchAll]/[fetch] with `isGoldenm: true`.
    List<InternalRegisteredApp>? implementations,
  }) = _AvailableApp;

  /// Deserializes an [AvailableApp] from a JSON map.
  factory AvailableApp.fromJson(Map<String, dynamic> json) =>
      _$AvailableAppFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying the full set of available-app
  /// fields, shared by [fetchAll], [fetch], and [AvailableAppInput.save].
  static GqlFragment get fragment =>
      GqlFragment(name: 'availableAppFragment', onType: 'AvailableApp')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'appId'))
        ..add(GqlField(name: 'appType'))
        ..add(GqlField(name: 'technology'))
        ..add(GqlField(name: 'onlyCustomized'))
        ..add(GqlField(name: 'supportedPlatforms'))
        ..add(GqlField(name: 'supportedCustomizationPlatforms'))
        ..add(GqlField(name: 'hasImport'))
        ..add(GqlField(name: 'hasKeychain'))
        ..add(GqlField(name: 'canMapLayers'))
        ..add(GqlField(name: 'legalInformation', fragment: AppLegal.fragment))
        ..add(
          GqlField(name: 'designInformation', fragment: AppDesign.fragment),
        );
  // coverage:ignore-end

  // coverage:ignore-start
  /// GraphQL fragment definition for querying available-app fields in the
  /// goldenm/admin context, via the `internalAvailableApps` query.
  ///
  /// Extends [fragment] with [versions] and [implementations], which are
  /// only exposed on the `InternalAvailableApp`-shaped response and would be
  /// invalid to select against the plain `availableApps` query.
  static GqlFragment get goldenmFragment =>
      GqlFragment(name: 'internalAvailableAppFragment', onType: 'AvailableApp')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'appId'))
        ..add(GqlField(name: 'appType'))
        ..add(GqlField(name: 'technology'))
        ..add(GqlField(name: 'onlyCustomized'))
        ..add(GqlField(name: 'supportedPlatforms'))
        ..add(GqlField(name: 'supportedCustomizationPlatforms'))
        ..add(GqlField(name: 'hasImport'))
        ..add(GqlField(name: 'hasKeychain'))
        ..add(GqlField(name: 'canMapLayers'))
        ..add(GqlField(name: 'legalInformation', fragment: AppLegal.fragment))
        ..add(
          GqlField(name: 'designInformation', fragment: AppDesign.fragment),
        )
        ..add(GqlField(name: 'versions', fragment: AppVersion.fragment))
        ..add(
          GqlField(name: 'implementations', fragment: InternalRegisteredApp.fragment),
        );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all available apps from the server.
  ///
  /// Makes an authenticated GraphQL query (`availableApps`) to retrieve
  /// every [AvailableApp] in the catalog. Authentication is carried solely
  /// via the connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// When [isGoldenm] is `true`, queries `internalAvailableApps` instead of
  /// `availableApps` (goldenm/admin context) using [goldenmFragment], which
  /// additionally populates [versions] and [implementations].
  /// [internalIdentifier] is then required, since the underlying query
  /// filters by it; an [ArgumentError] is thrown when it is missing.
  ///
  /// Returns an empty list on any error (network failure, authentication
  /// failure, or server error). Errors are logged internally.
  static Future<List<AvailableApp>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Whether to query `internalAvailableApps` (goldenm/admin context)
    /// instead of the customer/public `availableApps` query. When `true`,
    /// [internalIdentifier] is required.
    bool isGoldenm = false,

    /// The internal identifier to filter by when [isGoldenm] is `true`.
    /// Required in that case; ignored otherwise.
    AppInternalIdentifier? internalIdentifier,

    /// Optional callback invoked with the status code of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,
  }) async {
    if (isGoldenm && internalIdentifier == null) {
      throw ArgumentError.notNull('internalIdentifier');
    }

    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final queryName = isGoldenm ? 'internalAvailableApps' : 'availableApps';
    try {
      final response = await connector.query(
        GqlQuery(
          name: queryName,
          variables: isGoldenm
              ? [
                  GqlVariable(
                    name: 'internalIdentifier',
                    type: .enum_(of: 'InternalIdentifier'),
                    isRequired: true,
                    value: internalIdentifier!.toJson(),
                  ),
                ]
              : [],
        )..add(
          GqlField(
            name: queryName,
            args: isGoldenm ? {'internalIdentifier': 'internalIdentifier'} : {},
          )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fragment: isGoldenm ? goldenmFragment : fragment,
              ),
            ),
        ),
        _availableAppListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/AvailableApp/fetchAll(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single available app by its [id].
  ///
  /// Makes an authenticated GraphQL query (`availableApps`) filtered by
  /// [id]. The backend always returns `result` as a list, even when
  /// filtered down to a single entity, so the first element (if any) is
  /// returned. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// When [isGoldenm] is `true`, queries `internalAvailableApps` instead of
  /// `availableApps` (goldenm/admin context) using [goldenmFragment], which
  /// additionally populates [versions] and [implementations].
  /// [internalIdentifier] is then required, since the underlying query
  /// filters by it; an [ArgumentError] is thrown when it is missing.
  ///
  /// Returns `null` on any error (network failure, authentication failure,
  /// server error, or no matching app). Errors are logged internally.
  static Future<AvailableApp?> fetch({
    /// The ID of the [AvailableApp] to fetch.
    required String id,

    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Whether to query `internalAvailableApps` (goldenm/admin context)
    /// instead of the customer/public `availableApps` query. When `true`,
    /// [internalIdentifier] is required.
    bool isGoldenm = false,

    /// The internal identifier to filter by when [isGoldenm] is `true`.
    /// Required in that case; ignored otherwise.
    AppInternalIdentifier? internalIdentifier,

    /// Optional callback invoked with the status code of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,
  }) async {
    if (isGoldenm && internalIdentifier == null) {
      throw ArgumentError.notNull('internalIdentifier');
    }

    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final queryName = isGoldenm ? 'internalAvailableApps' : 'availableApps';
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
            if (isGoldenm)
              GqlVariable(
                name: 'internalIdentifier',
                type: .enum_(of: 'InternalIdentifier'),
                isRequired: true,
                value: internalIdentifier!.toJson(),
              ),
          ],
          name: queryName,
        )..add(
          GqlField(
            name: queryName,
            args: {
              'id': 'id',
              if (isGoldenm) 'internalIdentifier': 'internalIdentifier',
            },
          )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fragment: isGoldenm ? goldenmFragment : fragment,
              ),
            ),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/AvailableApp/fetch(): No result in list");
            return null;
          }
          return AvailableApp.fromJson(
            Map<String, dynamic>.from(resultList.first as Map),
          );
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/AvailableApp/fetch(): General exception => $e\n$stack",
      );
      return null;
    }
  }
  // coverage:ignore-end
}

/// [_availableAppDecoder] decodes a single-object `result` payload into an
/// [AvailableApp]. Used by result-bearing mutations (add/edit-style).
AvailableApp _availableAppDecoder(Object? json) {
  return AvailableApp.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_availableAppListDecoder] decodes a raw listing `result` payload into a
/// list of [AvailableApp]. Used by listing queries (fetchAll, fetch).
List<AvailableApp> _availableAppListDecoder(Object? json) {
  return List<AvailableApp>.from(
    (json as List? ?? []).map(
      (e) => AvailableApp.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}

/// Mutable available-app input used to create or update an [AvailableApp].
@unfreezed
abstract class AvailableAppInput with _$AvailableAppInput {
  /// Private constructor used by the code generator.
  const AvailableAppInput._();

  /// Constructs a mutable [AvailableAppInput].
  factory AvailableAppInput({
    /// [id] is the unique identifier of the app.
    String? id,

    /// [name] is the name of the app. It's a fixed name, not a translation key
    @Default('') String name,

    /// [appId] is the unique identifier of the app, like "com.layrz.launchpad".
    @Default('') String appId,

    /// [technology] is the technology of the app.
    @JsonKey(unknownEnumValue: AppTechnology.flutter)
    @Default(AppTechnology.flutter)
    AppTechnology technology,

    /// [legalInformation] is the legal information of the app.
    required AppLegalInput legalInformation,

    /// [designInformation] is the design information of the app.
    required AppDesignInput designInformation,

    /// [supportedPlatforms] is the list of supported platforms of the App, depends of the technology.
    @JsonKey(unknownEnumValue: AppPlatform.web)
    @Default([])
    List<AppPlatform> supportedPlatforms,

    /// [onlyCustomized] is true if the app only can be register with customization.
    @Default(false) bool onlyCustomized,

    /// [hasImport] is true if the app has import feature.
    @Default(true) bool hasImport,

    /// [hasKeychain] is true if the app has keychain feature.
    @Default(true) bool hasKeychain,
  }) = _AvailableAppInput;

  /// Deserializes an [AvailableAppInput] from a JSON map.
  factory AvailableAppInput.fromJson(Map<String, dynamic> json) =>
      _$AvailableAppInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this available app on the server.
  ///
  /// Sends `addAvailableApp` when [id] is null, or `editAvailableApp` when
  /// [id] is set, both with this input serialized as the
  /// `AvailableAppInput` GraphQL input type. Authentication is carried
  /// solely via the connector's `Authorization` header, built from
  /// [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors,
  /// AvailableApp?)`: on an internal error, `(ApiStatus.internalError,
  /// null, null)`; on any other non-ok status, `(status, errors, null)`;
  /// on success, `(status, errors, savedApp)`.
  Future<StandardResponse<AvailableApp>> save({
    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the status code of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addAvailableApp' : 'editAvailableApp';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'AvailableAppInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: AvailableApp.fragment)),
        ),
        _availableAppDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status.toJson());
        return (ApiStatus.internalError, null, null);
      }

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return (response.status, response.errors, null);
      }

      return (response.status, response.errors, response.result);
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/AvailableAppInput/save(): General exception => $e\n$stack",
      );
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
