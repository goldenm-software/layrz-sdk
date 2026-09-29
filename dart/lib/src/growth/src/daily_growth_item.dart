part of '../growth.dart';

/// Accumulated totals of assets, devices, and users at the end of a day.
@freezed
abstract class DailyGrowthItem with _$DailyGrowthItem {
  /// Constructs an immutable [DailyGrowthItem].
  ///
  /// Parameters:
  ///   - [day]: The day the totals belong to
  ///   - [totalAssets]: Accumulated number of assets
  ///   - [totalDevices]: Accumulated number of devices
  ///   - [totalUsers]: Accumulated number of users
  const factory DailyGrowthItem({
    @DateConverter() required DateTime day,
    required int totalAssets,
    required int totalDevices,
    required int totalUsers,
  }) = _DailyGrowthItem;

  /// Deserializes a [DailyGrowthItem] from a JSON map.
  factory DailyGrowthItem.fromJson(Map<String, dynamic> json) =>
      _$DailyGrowthItemFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying daily growth fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'dailyGrowthItemFragment',
    onType: 'GrowthPerDay',
    fields: [
      GqlField(name: 'day'),
      GqlField(name: 'totalAssets'),
      GqlField(name: 'totalDevices'),
      GqlField(name: 'totalUsers'),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the daily accumulated growth of a user (and its children).
  ///
  /// Makes an authenticated GraphQL query (`userGrowth`) for the range
  /// between [from] and [to], both formatted as `yyyy-MM-dd`.
  ///
  /// Returns an empty list on any error. Errors are logged internally.
  static Future<List<DailyGrowthItem>> fetchAll({
    /// The API token for authentication.
    required String apiToken,

    /// The Layrz GraphQL API endpoint.
    required Uri uri,

    /// Identifier of the user whose growth is requested.
    required String userId,

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
              name: 'userId',
              type: .id,
              isRequired: true,
              value: userId,
            ),
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
          name: 'userGrowth',
        )..add(
          GqlField(
              name: 'userGrowth',
              args: {'userId': 'userId', 'from': 'from', 'to': 'to'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _dailyGrowthListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/DailyGrowthItem/fetchAll(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end
}

/// [_dailyGrowthListDecoder] decodes a raw listing `result` payload into a list of [DailyGrowthItem].
List<DailyGrowthItem> _dailyGrowthListDecoder(Object? json) {
  return List<DailyGrowthItem>.from(
    (json as List? ?? []).map(
      (e) => DailyGrowthItem.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}
