part of '../growth.dart';

/// Global totals, top accounts, and accumulated monthly growth (real and predicted).
@freezed
abstract class GrowthSummary with _$GrowthSummary {
  /// Constructs an immutable [GrowthSummary].
  ///
  /// Parameters:
  ///   - [totalAssets]: Total number of assets
  ///   - [totalDevices]: Total number of devices
  ///   - [totalUsers]: Total number of users
  ///   - [topAccounts]: Top-level accounts
  ///   - [accumulatedGrowth]: Monthly accumulated totals, with projected months flagged
  const factory GrowthSummary({
    required int totalAssets,
    required int totalDevices,
    required int totalUsers,
    required List<TopAccount> topAccounts,
    required List<GrowthItem> accumulatedGrowth,
  }) = _GrowthSummary;

  /// Deserializes a [GrowthSummary] from a JSON map.
  factory GrowthSummary.fromJson(Map<String, dynamic> json) =>
      _$GrowthSummaryFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying growth summary fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'growthSummaryFragment',
    onType: 'GrowthSummary',
    fields: [
      GqlField(name: 'totalAssets'),
      GqlField(name: 'totalDevices'),
      GqlField(name: 'totalUsers'),
      GqlField(name: 'topAccounts', fragment: TopAccount.fragment),
      GqlField(name: 'accumulatedGrowth', fragment: GrowthItem.fragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the [GrowthSummary] shown in the admin home.
  ///
  /// Makes an authenticated GraphQL query (`homeMetrics`).
  ///
  /// Returns null on any error. Errors are logged internally.
  static Future<GrowthSummary?> fetch({
    /// The API token for authentication.
    required String apiToken,

    /// The Layrz GraphQL API endpoint.
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] when the response is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'homeMetrics')..add(
          GqlField(name: 'homeMetrics')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) => json == null
            ? null
            : GrowthSummary.fromJson(Map<String, dynamic>.from(json as Map)),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/GrowthSummary/fetch(): General exception => $e\n$stack",
      );
      return null;
    }
  }
  // coverage:ignore-end
}
