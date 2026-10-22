part of '../app.dart';

/// Mutable payload of the `AppInstanceInput` GraphQL input, used to request a new [AppInstance].
@unfreezed
abstract class AppInstanceInput with _$AppInstanceInput {
  AppInstanceInput._();

  /// Constructs a mutable [AppInstanceInput].
  factory AppInstanceInput({
    /// The ID of the instance, `null` when requesting a new one.
    String? id,

    /// The ID of the [RegisteredApp] that owns the instance.
    required String appId,

    /// The platform of the instance.
    @JsonKey(unknownEnumValue: AppPlatform.web) required AppPlatform platform,

    /// The app identifier (bundle or package id). Ignored for [AppPlatform.web].
    @Default('') String appIdentifier,

    /// The developer name. Only used for [AppPlatform.windows].
    @Default('') String developerName,

    /// The developer identifier. Only used for [AppPlatform.windows].
    @Default('') String developerIdentifier,

    /// The host of the instance. Only used for [AppPlatform.web].
    @Default('') String host,
  }) = _AppInstanceInput;

  /// Deserializes an [AppInstanceInput] from a JSON map.
  factory AppInstanceInput.fromJson(Map<String, dynamic> json) => _$AppInstanceInputFromJson(json);

  // coverage:ignore-start
  /// Requests the instance with `requestInstance`.
  ///
  /// The API does not return the instance, so the result is `true` on success. Returns the [ApiStatus],
  /// the field errors (if any) and whether the request succeeded.
  Future<StandardResponse<bool>> save({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(apiToken: apiToken, uri: uri);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'requestInstance',
          variables: [
            GqlVariable(
              name: 'data',
              value: toJson(),
              type: .input(of: 'AppInstanceInput'),
              isRequired: true,
            ),
          ],
          fields: [
            GqlField(name: 'requestInstance', args: {'data': 'data'})
              ..add(GqlField(name: 'status'))
              ..add(GqlField(name: 'errors')),
          ],
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, false);
      }

      return (response.status, null, true);
    } catch (err, stack) {
      Log.critical("layrz_sdk/AppInstanceInput/save(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, false);
    }
  }

  // coverage:ignore-end
}
