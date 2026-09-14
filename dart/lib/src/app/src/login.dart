part of '../app.dart';

/// The visual design configuration of a [RegisteredApp]'s login screen.
///
/// [AppLoginDesign] defines the background (color or image), logo mode,
/// optional description text, and layout of an app's login screen.
@freezed
abstract class AppLoginDesign with _$AppLoginDesign {
  /// Private constructor used by the code generator.
  const AppLoginDesign._();

  /// Constructs an immutable [AppLoginDesign].
  const factory AppLoginDesign({
    /// The background color of the login screen.
    ///
    /// When this field is null, the app should fall back to the ambient
    /// theme's primary color. Because the design schema is transitioning,
    /// when this field is null, callers may also fall back to a legacy
    /// `background` field's `color`, if available from the raw payload.
    @ColorOrNullConverter() Color? backgroundColor,

    /// The background image of the login screen.
    ///
    /// When this field is null, the app should fall back to the ambient
    /// theme's primary color. Because the design schema is transitioning,
    /// when this field is null, callers may also fall back to a legacy
    /// `background` field's `image`, if available from the raw payload.
    String? backgroundImage,

    /// The background rendering mode of the login screen.
    ///
    /// Because the design schema is transitioning, when this field is
    /// null, callers may also fall back to a legacy `background` field's
    /// `mode`, if available from the raw payload.
    @JsonKey(unknownEnumValue: BackgroundMode.solid) BackgroundMode? mode,

    /// Additional text displayed below the logo when [design] is
    /// [LayoutDesign.left] or [LayoutDesign.right].
    String? description,

    /// The layout design of the login screen.
    @JsonKey(unknownEnumValue: LayoutDesign.right) LayoutDesign? design,
  }) = _AppLoginDesign;

  /// Deserializes an [AppLoginDesign] from a JSON map.
  factory AppLoginDesign.fromJson(Map<String, dynamic> json) => _$AppLoginDesignFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying login design fields.
  static GqlFragment get fragment =>
      GqlFragment(name: 'loginDesignFragment', onType: 'LoginDesignInformation')
        ..add(GqlField(name: 'backgroundColor'))
        ..add(GqlField(name: 'backgroundImage'))
        ..add(GqlField(name: 'mode'))
        ..add(GqlField(name: 'description'))
        ..add(GqlField(name: 'design'));
  // coverage:ignore-end
}

/// Mutable input data for creating or updating an [AppLoginDesign].
///
/// [AppLoginDesignInput] mirrors the fields of [AppLoginDesign] but is
/// mutable, making it suitable for form binding before submission as part
/// of an [AppDesignInput].
@unfreezed
abstract class AppLoginDesignInput with _$AppLoginDesignInput {
  /// Constructs a mutable [AppLoginDesignInput].
  factory AppLoginDesignInput({
    /// The background color of the login screen.
    ///
    /// When this field is null, the app should fall back to the ambient
    /// theme's primary color. Because the design schema is transitioning,
    /// when this field is null, callers may also fall back to a legacy
    /// `background` field's `color`, if available from the raw payload.
    @ColorOrNullConverter() Color? backgroundColor,

    /// The background image of the login screen.
    ///
    /// When this field is null, the app should fall back to the ambient
    /// theme's primary color. Because the design schema is transitioning,
    /// when this field is null, callers may also fall back to a legacy
    /// `background` field's `image`, if available from the raw payload.
    String? backgroundImage,

    /// The background rendering mode of the login screen.
    ///
    /// Because the design schema is transitioning, when this field is
    /// null, callers may also fall back to a legacy `background` field's
    /// `mode`, if available from the raw payload.
    @JsonKey(unknownEnumValue: BackgroundMode.solid) BackgroundMode? mode,

    /// Additional text displayed below the logo when [design] is
    /// [LayoutDesign.left] or [LayoutDesign.right].
    String? description,

    /// The layout design of the login screen.
    @JsonKey(unknownEnumValue: LayoutDesign.right) LayoutDesign? design,
  }) = _AppLoginDesignInput;

  /// Deserializes an [AppLoginDesignInput] from a JSON map.
  factory AppLoginDesignInput.fromJson(Map<String, dynamic> json) => _$AppLoginDesignInputFromJson(json);
}
