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

    /// [implementations] is the list of implementations of the app.
    List<RegisteredApp>? implementations,
  }) = _AvailableApp;

  /// Deserializes an [AvailableApp] from a JSON map.
  factory AvailableApp.fromJson(Map<String, dynamic> json) =>
      _$AvailableAppFromJson(json);

  // coverage:ignore-start
  /// [fetchAll] fetches all available apps from the server
  /// It returns a list of [AvailableApp] with the required contextual information
  static Future<List<AvailableApp>> fetchAll({
    /// [apiToken] is the API token to use for authentication. You can get one using the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use
    required Uri uri,

    /// [onResponse] is the callback to call when the response is received
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(
              name: 'apiToken',
              value: apiToken,
              type: .string,
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: 'availableApps', args: {'apiToken': 'apiToken'})
            ..add(GqlField(name: 'status'))
            ..add(
              GqlField(name: 'result')
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
                ..add(
                  GqlField(
                    name: 'legalInformation',
                    fragment: AppLegal.fragment,
                  ),
                )
                ..add(
                  GqlField(
                    name: 'designInformation',
                    fragment: AppDesign.fragment,
                  ),
                ),
            ),
        ),
        (json) => List<AvailableApp>.from(
          (json as List).map(
            (e) => AvailableApp.fromJson(e as Map<String, dynamic>),
          ),
        ),
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
}

/// Mutable available-app input used to create or update an [AvailableApp].
@unfreezed
abstract class AvailableAppInput with _$AvailableAppInput {
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
}
