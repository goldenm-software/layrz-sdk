part of '../asset.dart';

/// A single live-data visualization configured for an [Asset].
///
/// Each [AssetWidget] binds a source [device], a raw [expose] parameter of that device, and a
/// [widget] render type, plus a [config] holding the title and optional color-range thresholds.
///
/// This is the read-side model. Widgets are persisted through the dedicated `updateAssetWidgets`
/// mutation, never through the regular asset save path — so there is a matching [AssetWidgetInput]
/// used only by that mutation.
@freezed
abstract class AssetWidget with _$AssetWidget {
  /// Constructs an immutable [AssetWidget].
  const factory AssetWidget({
    /// [device] is the id of the device that owns the [expose] parameter and its telemetry.
    required String device,

    /// [widget] is the render type used to visualize the parameter.
    @JsonKey(unknownEnumValue: RenderWidget.unknown) required RenderWidget widget,

    /// [expose] is the raw parameter / expose name to render (e.g. `temperature`, `state`).
    required String expose,

    /// [config] holds the title and optional color-range thresholds.
    required AssetWidgetConfig config,
  }) = _AssetWidget;

  /// Deserializes an [AssetWidget] from a JSON map.
  factory AssetWidget.fromJson(Map<String, dynamic> json) => _$AssetWidgetFromJson(json);
}

/// The display configuration for an [AssetWidget].
@freezed
abstract class AssetWidgetConfig with _$AssetWidgetConfig {
  /// Constructs an immutable [AssetWidgetConfig].
  const factory AssetWidgetConfig({
    /// [title] shown on the widget card.
    @Default('') String title,

    /// [minValue] is the optional lower bound for gauges/ranges.
    double? minValue,

    /// [maxValue] is the optional upper bound for gauges/ranges.
    double? maxValue,

    /// [ranges] are the ordered `>= value → color` thresholds. The color switches at each threshold
    /// and above.
    List<AssetWidgetRange>? ranges,
  }) = _AssetWidgetConfig;

  /// Deserializes an [AssetWidgetConfig] from a JSON map.
  factory AssetWidgetConfig.fromJson(Map<String, dynamic> json) => _$AssetWidgetConfigFromJson(json);
}

/// A single color threshold: the widget value renders in [color] once it is `>= value` (and below
/// the next range's value).
@freezed
abstract class AssetWidgetRange with _$AssetWidgetRange {
  /// Constructs an immutable [AssetWidgetRange].
  const factory AssetWidgetRange({
    /// [value] is the threshold at which [color] starts applying.
    required double value,

    /// [color] is the hex color string (e.g. `#2E7D32`) applied from [value] upward.
    required String color,
  }) = _AssetWidgetRange;

  /// Deserializes an [AssetWidgetRange] from a JSON map.
  factory AssetWidgetRange.fromJson(Map<String, dynamic> json) => _$AssetWidgetRangeFromJson(json);
}

/// Mutable counterpart of [AssetWidget], sent through the `updateAssetWidgets` mutation.
@unfreezed
abstract class AssetWidgetInput with _$AssetWidgetInput {
  AssetWidgetInput._();

  /// Constructs a mutable [AssetWidgetInput].
  factory AssetWidgetInput({
    /// [device] is the id of the device that owns the [expose] parameter and its telemetry.
    required String device,

    /// [widget] is the render type used to visualize the parameter.
    @JsonKey(unknownEnumValue: RenderWidget.unknown) required RenderWidget widget,

    /// [expose] is the raw parameter / expose name to render (e.g. `temperature`, `state`).
    required String expose,

    /// [config] holds the title and optional color-range thresholds.
    required AssetWidgetConfigInput config,
  }) = _AssetWidgetInput;

  /// Deserializes an [AssetWidgetInput] from a JSON map.
  factory AssetWidgetInput.fromJson(Map<String, dynamic> json) => _$AssetWidgetInputFromJson(json);
}

/// Mutable counterpart of [AssetWidgetConfig].
@unfreezed
abstract class AssetWidgetConfigInput with _$AssetWidgetConfigInput {
  AssetWidgetConfigInput._();

  /// Constructs a mutable [AssetWidgetConfigInput].
  factory AssetWidgetConfigInput({
    /// [title] shown on the widget card. Defaults to an empty string.
    @Default('') String title,

    /// [minValue] is the optional lower bound for gauges/ranges.
    double? minValue,

    /// [maxValue] is the optional upper bound for gauges/ranges.
    double? maxValue,

    /// [ranges] are the ordered `>= value → color` thresholds. Defaults to an empty list.
    @Default([]) List<AssetWidgetRangeInput> ranges,
  }) = _AssetWidgetConfigInput;

  /// Deserializes an [AssetWidgetConfigInput] from a JSON map.
  factory AssetWidgetConfigInput.fromJson(Map<String, dynamic> json) => _$AssetWidgetConfigInputFromJson(json);
}

/// Mutable counterpart of [AssetWidgetRange].
@unfreezed
abstract class AssetWidgetRangeInput with _$AssetWidgetRangeInput {
  AssetWidgetRangeInput._();

  /// Constructs a mutable [AssetWidgetRangeInput].
  factory AssetWidgetRangeInput({
    /// [value] is the threshold at which [color] starts applying. Defaults to `0`.
    @Default(0) double value,

    /// [color] is the hex color string applied from [value] upward. Defaults to `#2E7D32`.
    @Default('#2E7D32') String color,
  }) = _AssetWidgetRangeInput;

  /// Deserializes an [AssetWidgetRangeInput] from a JSON map.
  factory AssetWidgetRangeInput.fromJson(Map<String, dynamic> json) => _$AssetWidgetRangeInputFromJson(json);
}
