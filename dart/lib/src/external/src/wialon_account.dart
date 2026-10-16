part of '../external.dart';

/// [WialonAccount] represents an account (resource) available in a Wialon platform that can be imported
/// into Layrz through an [ExternalAccount].
@freezed
abstract class WialonAccount with _$WialonAccount {
  /// Private constructor used by the code generator.
  const WialonAccount._();

  /// Constructs an immutable [WialonAccount].
  const factory WialonAccount({
    /// [wialonId] is the identifier of the account in the Wialon platform.
    required String wialonId,

    /// [name] is the display name of the account in the Wialon platform.
    required String name,
  }) = _WialonAccount;

  /// Creates a [WialonAccount] from a JSON map.
  factory WialonAccount.fromJson(Map<String, dynamic> json) => _$WialonAccountFromJson(json);

  /// [fragment] is the GqlFragment for a Wialon account.
  static GqlFragment get fragment => GqlFragment(name: 'wialonAccountFragment', onType: 'WialonAccount')
    ..add(GqlField(name: 'wialonId'))
    ..add(GqlField(name: 'name'));

  // coverage:ignore-start
  /// [fetchAll] fetches the Wialon accounts reachable through the external account [externalAccountId].
  ///
  /// Sends the `wialonAccounts` query. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Returns the list of accounts, or an empty list on any error. Errors are logged internally.
  static Future<List<WialonAccount>> fetchAll({
    /// [externalAccountId] is the ID of the external account to query Wialon accounts for
    required String externalAccountId,

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
          variables: [
            GqlVariable(name: 'externalAccountId', type: .id, isRequired: true, value: externalAccountId),
          ],
          name: 'fetchWialonAccounts',
        )..add(
          GqlField(name: 'wialonAccounts', args: {'externalAccountId': 'externalAccountId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _wialonAccountListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        Log.error("layrz_sdk/WialonAccount/fetchAll(): ${response.status} => ${response.errors}");
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/WialonAccount/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end
}
