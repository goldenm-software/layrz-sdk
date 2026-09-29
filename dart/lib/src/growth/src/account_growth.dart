part of '../growth.dart';

/// Monthly accumulated growth of a single top-level account.
@freezed
abstract class AccountGrowth with _$AccountGrowth {
  /// Constructs an immutable [AccountGrowth].
  ///
  /// Parameters:
  ///   - [account]: The account the growth belongs to
  ///   - [growth]: Monthly accumulated totals of the account
  const factory AccountGrowth({
    required TopAccount account,
    required List<GrowthItem> growth,
  }) = _AccountGrowth;

  /// Deserializes an [AccountGrowth] from a JSON map.
  factory AccountGrowth.fromJson(Map<String, dynamic> json) =>
      _$AccountGrowthFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying account growth fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'accountGrowthFragment',
    onType: 'GrowthPerDayPerAccount',
    fields: [
      GqlField(name: 'account', fragment: TopAccount.fragment),
      GqlField(name: 'growth', fragment: GrowthItem.fragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the monthly accumulated growth of every top-level account.
  ///
  /// Makes an authenticated GraphQL query (`growthPerAccount`) for the range
  /// between [from] and [to], both formatted as `yyyy-MM-dd`. This query is
  /// heavy on the server, so call it on demand.
  ///
  /// Returns an empty list on any error. Errors are logged internally.
  static Future<List<AccountGrowth>> fetchAll({
    /// The API token for authentication.
    required String apiToken,

    /// The Layrz GraphQL API endpoint.
    required Uri uri,

    /// First day of the range, inclusive.
    required DateTime from,

    /// Last day of the range, inclusive.
    required DateTime to,

    /// Optional callback invoked with the [ApiStatus] when the response is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(
              name: 'from',
              type: .string,
              isRequired: true,
              value: from.toDate(),
            ),
            GqlVariable(
              name: 'to',
              type: .string,
              isRequired: true,
              value: to.toDate(),
            ),
          ],
          name: 'growthPerAccount',
        )..add(
          GqlField(
              name: 'growthPerAccount',
              args: {'from': 'from', 'to': 'to'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _accountGrowthListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/AccountGrowth/fetchAll(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end
}

/// [_accountGrowthListDecoder] decodes a raw listing `result` payload into a list of [AccountGrowth].
List<AccountGrowth> _accountGrowthListDecoder(Object? json) {
  return List<AccountGrowth>.from(
    (json as List? ?? []).map(
      (e) => AccountGrowth.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}
