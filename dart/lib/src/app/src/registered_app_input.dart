part of '../app.dart';

/// Mutable payload of the `AppInput` GraphQL input, used to register a customized app
/// (`registerAppWithCustomization`) and to edit any app (`editApp`).
@unfreezed
abstract class RegisteredAppInput with _$RegisteredAppInput {
  RegisteredAppInput._();

  /// Constructs a mutable [RegisteredAppInput].
  factory RegisteredAppInput({
    /// The ID of the registered app, `null` when registering a new one.
    String? id,

    /// The name of the app.
    @Default('') String name,

    /// The nickname of the app.
    @Default('') String nickname,

    /// The ID of the [AvailableApp] this app is based on.
    required String sourceId,

    /// Whether the app is customized. UI only, never sent to the API.
    @JsonKey(includeToJson: false) @Default(false) bool isCustomized,

    /// The legal information of the app.
    required AppLegalInput legalInformation,

    /// The design information of the app.
    required AppDesignInput designInformation,

    /// The instances requested on registration. Never sent when editing.
    @Default([]) List<AppInstanceInput> instances,
  }) = _RegisteredAppInput;

  /// Deserializes a [RegisteredAppInput] from a JSON map.
  factory RegisteredAppInput.fromJson(Map<String, dynamic> json) => _$RegisteredAppInputFromJson(json);

  /// Builds the editable copy of [app], filling every missing nested value with the backend defaults.
  ///
  /// Pass the full record from [RegisteredApp.fetch]. The instances are never copied.
  factory RegisteredAppInput.fromApp(RegisteredApp app) {
    return RegisteredAppInput(
      id: app.id,
      name: app.name,
      nickname: app.nickname,
      sourceId: app.sourceId,
      isCustomized: app.isCustomized ?? false,
      legalInformation: AppLegalInput.fromLegal(app.legalInformation),
      designInformation: AppDesignInput.fromDesign(app.designInformation),
    );
  }

  /// Builds a blank customized registration of [source].
  factory RegisteredAppInput.fromAvailable(AvailableApp source) {
    return RegisteredAppInput(
      sourceId: source.id,
      isCustomized: true,
      legalInformation: AppLegalInput.fromLegal(source.legalInformation),
      designInformation: AppDesignInput.fromDesign(source.designInformation),
    );
  }

  /// Returns a deep copy of this input, keeping [isCustomized].
  RegisteredAppInput clone() => RegisteredAppInput.fromJson(toJson())..isCustomized = isCustomized;

  /// The payload sent to the API: editing never sends [instances].
  Map<String, dynamic> toPayload() {
    final payload = toJson();
    if (id != null) payload.remove('instances');
    return payload;
  }

  // coverage:ignore-start
  /// Edits the app with `editApp` when [id] is set, otherwise registers it with
  /// `registerAppWithCustomization`.
  ///
  /// Returns the [ApiStatus], the field errors (if any) and the saved [RegisteredApp].
  Future<StandardResponse<RegisteredApp>> save({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) {
    return _saveApp(
      mutationName: id == null ? 'registerAppWithCustomization' : 'editApp',
      inputType: 'AppInput',
      data: toPayload(),
      apiToken: apiToken,
      uri: uri,
      onResponse: onResponse,
      caller: 'RegisteredAppInput/save()',
    );
  }

  // coverage:ignore-end
}

/// Mutable payload of the `AppWithoutCustomizationInput` GraphQL input.
@unfreezed
abstract class AppWithoutCustomizationInput with _$AppWithoutCustomizationInput {
  AppWithoutCustomizationInput._();

  /// Constructs a mutable [AppWithoutCustomizationInput].
  factory AppWithoutCustomizationInput({
    /// The ID of the registered app, `null` when registering a new one.
    String? id,

    /// The ID of the [AvailableApp] this app is based on.
    required String sourceId,

    /// The nickname of the app.
    @Default('') String nickname,

    /// The subdomain of the web instance.
    @Default('') String subdomain,

    /// The domain of the web instance. Defaults to `layrz.app`.
    @Default('layrz.app') String domain,
  }) = _AppWithoutCustomizationInput;

  /// Deserializes an [AppWithoutCustomizationInput] from a JSON map.
  factory AppWithoutCustomizationInput.fromJson(Map<String, dynamic> json) =>
      _$AppWithoutCustomizationInputFromJson(json);

  // coverage:ignore-start
  /// Registers the app with `registerAppWithoutCustomization`.
  ///
  /// Returns the [ApiStatus], the field errors (if any) and the registered [RegisteredApp].
  Future<StandardResponse<RegisteredApp>> save({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) {
    return _saveApp(
      mutationName: 'registerAppWithoutCustomization',
      inputType: 'AppWithoutCustomizationInput',
      data: toJson(),
      apiToken: apiToken,
      uri: uri,
      onResponse: onResponse,
      caller: 'AppWithoutCustomizationInput/save()',
    );
  }

  // coverage:ignore-end
}

// coverage:ignore-start
Future<StandardResponse<RegisteredApp>> _saveApp({
  required String mutationName,
  required String inputType,
  required Map<String, dynamic> data,
  required String apiToken,
  required Uri uri,
  required String caller,
  ValueChanged<ApiStatus>? onResponse,
}) async {
  final connector = LayrzConnector(apiToken: apiToken, uri: uri);
  try {
    final response = await connector.mutate(
      GqlMutation(
        name: mutationName,
        variables: [
          GqlVariable(
            name: 'data',
            value: data,
            type: .input(of: inputType),
            isRequired: true,
          ),
        ],
        fields: [
          GqlField(name: mutationName, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: RegisteredApp.fragment)),
        ],
      ),
      _registeredAppDecoder,
    );

    if (response.status != .ok) {
      onResponse?.call(response.status);
      return (response.status, response.errors, null);
    }

    return (response.status, null, response.result);
  } catch (err, stack) {
    Log.critical("layrz_sdk/$caller: General exception => $err\n$stack");
    onResponse?.call(.internalError);
    return (ApiStatus.internalError, null, null);
  }
}

// coverage:ignore-end
