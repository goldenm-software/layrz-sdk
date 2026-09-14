part of '../app.dart';

/// The visual design configuration of a [RegisteredApp].
///
/// [AppDesign] defines the app's color, theme, iconography, login screen,
/// footer format, and typography.
@freezed
abstract class AppDesign with _$AppDesign {
  /// Private constructor used by the code generator.
  const AppDesign._();

  /// Constructs an immutable [AppDesign].
  const factory AppDesign({
    /// The main color of the app.
    ///
    /// When this field is null, the app should fall back to the ambient
    /// theme's primary color. Because the design schema is transitioning,
    /// when this field is null, callers may also fall back to a legacy
    /// `colors` field's `mainColor`, if available from the raw payload.
    @ColorOrNullConverter() Color? mainColor,

    /// The theme of the app.
    ///
    /// Because the design schema is transitioning, when this field is
    /// null, callers may also fall back to a legacy `colors` field's
    /// `theme`, if available from the raw payload.
    @JsonKey(unknownEnumValue: AppTheme.blue) AppTheme? theme,

    /// The favicons of the app.
    required AppThemedAsset favicons,

    /// The logos of the app.
    required AppThemedAsset logos,

    /// The app icon of the app.
    required String appicon,

    /// The login screen design of the app.
    AppLoginDesign? login,

    /// The footer format of the app.
    @JsonKey(unknownEnumValue: FooterFormat.madeWith) FooterFormat? footerFormat,

    /// The title font of the app.
    ///
    /// This style is used for:
    /// - `TextTheme.displayLarge`
    /// - `TextTheme.displayMedium`
    /// - `TextTheme.displaySmall`
    /// - `TextTheme.headlineLarge`
    /// - `TextTheme.headlineMedium`
    /// - `TextTheme.headlineSmall`
    AppFont? titleFont,

    /// The body font of the app.
    ///
    /// This style is used for:
    /// - `TextTheme.titleLarge`
    /// - `TextTheme.titleMedium`
    /// - `TextTheme.titleSmall`
    /// - `TextTheme.bodyLarge`
    /// - `TextTheme.bodyMedium`
    /// - `TextTheme.bodySmall`
    /// - `TextTheme.labelLarge`
    /// - `TextTheme.labelMedium`
    /// - `TextTheme.labelSmall`
    AppFont? bodyFont,
  }) = _AppDesign;

  /// Deserializes an [AppDesign] from a JSON map.
  factory AppDesign.fromJson(Map<String, dynamic> json) => _$AppDesignFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying the full set of design
  /// information fields.
  static GqlFragment get fragment =>
      GqlFragment(name: 'designFragment', onType: 'DesignInformation')
        ..add(GqlField(name: 'theme'))
        ..add(GqlField(name: 'mainColor'))
        ..add(GqlField(name: 'favicons', fragment: AppThemedAsset.fragment))
        ..add(GqlField(name: 'logos', fragment: AppThemedAsset.fragment))
        ..add(GqlField(name: 'appicon'))
        ..add(GqlField(name: 'login', fragment: AppLoginDesign.fragment))
        ..add(GqlField(name: 'footerFormat'))
        ..add(GqlField(name: 'titleFont', fragment: AppFont.fragment))
        ..add(GqlField(name: 'bodyFont', fragment: AppFont.fragment));
  // coverage:ignore-end

  // coverage:ignore-start
  /// GraphQL fragment definition for querying only the design information
  /// fields required for the app to work (used where full design detail is
  /// unnecessary, e.g. app listing views).
  static GqlFragment get reducedFragment =>
      GqlFragment(name: 'designFragment', onType: 'DesignInformation')
        ..add(GqlField(name: 'theme'))
        ..add(GqlField(name: 'mainColor'))
        ..add(GqlField(name: 'favicons', fragment: AppThemedAsset.fragment))
        ..add(GqlField(name: 'logos', fragment: AppThemedAsset.fragment))
        ..add(GqlField(name: 'appicon'));
  // coverage:ignore-end
}

/// The footer configuration of a Layrz application.
///
/// [AppFooter] indicates the footer format and, when [mode] is
/// [FooterFormat.custom], the custom footer text to display.
@freezed
abstract class AppFooter with _$AppFooter {
  /// Constructs an immutable [AppFooter].
  const factory AppFooter({
    /// The footer format of the app. Defaults to [FooterFormat.madeWith].
    @JsonKey(unknownEnumValue: FooterFormat.madeWith) @Default(FooterFormat.madeWith) FooterFormat mode,

    /// The custom footer text of the app, used when [mode] is
    /// [FooterFormat.custom].
    String? custom,
  }) = _AppFooter;

  /// Deserializes an [AppFooter] from a JSON map.
  factory AppFooter.fromJson(Map<String, dynamic> json) => _$AppFooterFromJson(json);
}

/// Mutable input data for creating or updating an [AppDesign].
///
/// [AppDesignInput] mirrors the fields of [AppDesign] but is mutable and
/// requires a non-nullable [mainColor], making it suitable for form binding
/// before submission as part of an app registration or edit mutation.
@unfreezed
abstract class AppDesignInput with _$AppDesignInput {
  /// Constructs a mutable [AppDesignInput].
  factory AppDesignInput({
    /// The theme of the app. Defaults to [AppTheme.custom].
    @JsonKey(unknownEnumValue: AppTheme.custom) @Default(AppTheme.custom) AppTheme theme,

    /// The main color of the app.
    @ColorConverter() required Color mainColor,

    /// The favicons of the app.
    required AppThemedAssetInput favicons,

    /// The logos of the app.
    required AppThemedAssetInput logos,

    /// The login screen design of the app.
    required AppLoginDesignInput login,

    /// The title font of the app.
    required AppFontInput titleFont,

    /// The body font of the app.
    required AppFontInput bodyFont,
  }) = _AppDesignInput;

  /// Deserializes an [AppDesignInput] from a JSON map.
  factory AppDesignInput.fromJson(Map<String, dynamic> json) => _$AppDesignInputFromJson(json);
}
