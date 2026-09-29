part of '../growth.dart';

/// Accumulated totals of assets, devices, and users at the end of a month.
@freezed
abstract class GrowthItem with _$GrowthItem {
  /// Constructs an immutable [GrowthItem].
  ///
  /// Parameters:
  ///   - [month]: First day of the month the totals belong to
  ///   - [totalAssets]: Accumulated number of assets
  ///   - [totalDevices]: Accumulated number of devices
  ///   - [totalUsers]: Accumulated number of users
  ///   - [predicted]: Whether the values are a projection. Defaults to false.
  const factory GrowthItem({
    @MonthConverter() required DateTime month,
    required int totalAssets,
    required int totalDevices,
    required int totalUsers,
    @Default(false) bool predicted,
  }) = _GrowthItem;

  /// Deserializes a [GrowthItem] from a JSON map.
  factory GrowthItem.fromJson(Map<String, dynamic> json) =>
      _$GrowthItemFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying growth item fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'growthItemFragment',
    onType: 'GrowthItem',
    fields: [
      GqlField(name: 'month'),
      GqlField(name: 'totalAssets'),
      GqlField(name: 'totalDevices'),
      GqlField(name: 'totalUsers'),
      GqlField(name: 'predicted'),
    ],
  );
  // coverage:ignore-end
}
