part of '../app.dart';

/// Immutable background design configuration for an app's login or instance chrome.
@freezed
abstract class AppBackgroundDesign with _$AppBackgroundDesign {
  /// Constructs an immutable [AppBackgroundDesign].
  const factory AppBackgroundDesign({
    /// [image] is the URL or data URI of the background image, when [mode] is image-based.
    String? image,

    /// [color] is the solid background color, when [mode] is [BackgroundMode.solid].
    @ColorOrNullConverter() Color? color,

    /// [mode] is the background rendering mode.
    @JsonKey(unknownEnumValue: BackgroundMode.solid)
    @Default(BackgroundMode.solid)
    BackgroundMode mode,
  }) = _AppBackgroundDesign;

  /// Deserializes an [AppBackgroundDesign] from a JSON map.
  factory AppBackgroundDesign.fromJson(Map<String, dynamic> json) =>
      _$AppBackgroundDesignFromJson(json);
}

/// Mutable background design input used to create or update an [AppBackgroundDesign].
@unfreezed
abstract class AppBackgroundDesignInput with _$AppBackgroundDesignInput {
  /// Constructs a mutable [AppBackgroundDesignInput].
  factory AppBackgroundDesignInput({
    /// [image] is the URL or data URI of the background image, when [mode] is image-based.
    String? image,

    /// [color] is the solid background color, when [mode] is [BackgroundMode.solid].
    @ColorOrNullConverter() Color? color,

    /// [mode] is the background rendering mode.
    @JsonKey(unknownEnumValue: BackgroundMode.solid)
    @Default(BackgroundMode.solid)
    BackgroundMode mode,
  }) = _AppBackgroundDesignInput;

  /// Deserializes an [AppBackgroundDesignInput] from a JSON map.
  factory AppBackgroundDesignInput.fromJson(Map<String, dynamic> json) =>
      _$AppBackgroundDesignInputFromJson(json);
}
