part of '../external.dart';

/// [WialonAccountsInput] is the input model to import Wialon accounts into Layrz.
///
/// It selects, through [wialonIds], which accounts of the Wialon platform reachable by
/// [externalAccountId] must be imported.
@unfreezed
abstract class WialonAccountsInput with _$WialonAccountsInput {
  /// Private constructor used by the code generator.
  const WialonAccountsInput._();

  /// Constructs a mutable [WialonAccountsInput].
  factory WialonAccountsInput({
    /// [externalAccountId] is the ID of the external account used to reach the Wialon platform.
    required String externalAccountId,

    /// [wialonIds] is the list of Wialon account identifiers to import. Defaults to an empty list.
    @Default([]) List<String> wialonIds,
  }) = _WialonAccountsInput;

  /// Creates a [WialonAccountsInput] from a JSON map.
  factory WialonAccountsInput.fromJson(Map<String, dynamic> json) => _$WialonAccountsInputFromJson(json);

  // coverage:ignore-start
  /// [import] imports the selected Wialon accounts into Layrz.
  ///
  /// Sends the `importExternalAccountsFromWialon` mutation with this input serialized as the
  /// `WialonAccountsInput` GraphQL input type. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Returns `true` on success, `false` on any error. Errors are logged internally.
  Future<bool> import({
    /// [apiToken] is the API token to use for authentication
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use
    required Uri uri,

    /// [onResponse] is the callback invoked with the [ApiStatus] of the response when it is not ok
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: .input(of: 'WialonAccountsInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: 'importExternalAccountsFromWialon',
        )..add(
          GqlField(name: 'importExternalAccountsFromWialon', args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        Log.error("layrz_sdk/WialonAccountsInput/import(): ${response.status} => ${response.errors}");
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_sdk/WialonAccountsInput/import(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}
