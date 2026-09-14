part of '../../workspace.dart';

/// One chart slot in a workspace's analytics grid configuration.
///
/// References [LayrzChart] indirectly via [chartId], which is owned by
/// another module and is not defined here.
@freezed
abstract class AnalyticsGridItem with _$AnalyticsGridItem {
  /// Constructs an immutable [AnalyticsGridItem].
  const factory AnalyticsGridItem({
    /// [chartId] is the Chart ID
    String? chartId,

    /// [name] is the name of the chart
    String? name,

    //// [assetsIds] is the list of asset IDs linked to the chart
    @Default([]) List<String> assetsIds,

    /// [dimensions] Represents the dimension of the sensor
    required GridDimension dimensions,
  }) = _AnalyticsGridItem;

  /// Deserializes an [AnalyticsGridItem] from a JSON map.
  factory AnalyticsGridItem.fromJson(Map<String, dynamic> json) => _$AnalyticsGridItemFromJson(json);
}

/// [AnalyticsGridItemInput] is the input variant of [AnalyticsGridItem].
@unfreezed
abstract class AnalyticsGridItemInput with _$AnalyticsGridItemInput {
  /// Constructs a mutable [AnalyticsGridItemInput].
  factory AnalyticsGridItemInput({
    /// [chartId] is the Chart ID
    String? chartId,

    /// [name] is the name of the chart
    String? name,

    //// [assetsIds] is the list of asset IDs linked to the chart
    List<String>? assetsIds,

    /// [dimensions] represents the dimensions of the sensor content
    required GridDimensionInput dimensions,
  }) = _AnalyticsGridItemInput;

  /// Deserializes an [AnalyticsGridItemInput] from a JSON map.
  factory AnalyticsGridItemInput.fromJson(Map<String, dynamic> json) => _$AnalyticsGridItemInputFromJson(json);
}
