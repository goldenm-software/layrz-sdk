part of '../app.dart';

/// A custom font used by a [RegisteredApp]'s [AppDesign].
///
/// [AppFont] defines where a font is sourced from ([source]) and its name
/// or location, used for both the title and body typography of an app.
@freezed
abstract class AppFont with _$AppFont {
  /// Private constructor used by the code generator.
  const AppFont._();

  /// Constructs an immutable [AppFont].
  const factory AppFont({
    /// Where the font is stored. Defaults to [FontSource.google].
    @JsonKey(unknownEnumValue: FontSource.google) @Default(FontSource.google) FontSource source,

    /// The name of the font to load.
    ///
    /// For [source] [FontSource.google] this is the name of the font in
    /// Google Fonts, for example `Ubuntu`. Check out the
    /// [`google_fonts` package](https://pub.dev/packages/google_fonts) for
    /// more information. Defaults to `'Ubuntu'`.
    @Default('Ubuntu') String name,

    /// The URL of the font in the remote server, or the path of the local
    /// file.
    ///
    /// For example: `https://example.com/font.ttf` or
    /// `assets/fonts/font.ttf`.
    String? uri,
  }) = _AppFont;

  /// Deserializes an [AppFont] from a JSON map.
  factory AppFont.fromJson(Map<String, dynamic> json) => _$AppFontFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying app font fields.
  static GqlFragment get fragment =>
      GqlFragment(name: 'fontFragment', onType: 'AppFont')
        ..add(GqlField(name: 'source'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'uri'));
  // coverage:ignore-end
}

/// Mutable input data for creating or updating an [AppFont].
///
/// [AppFontInput] mirrors the fields of [AppFont] but is mutable, making it
/// suitable for form binding before submission as part of an
/// [AppDesignInput].
@unfreezed
abstract class AppFontInput with _$AppFontInput {
  /// Constructs a mutable [AppFontInput].
  factory AppFontInput({
    /// Where the font is stored. Defaults to [FontSource.google].
    @JsonKey(unknownEnumValue: FontSource.google) @Default(FontSource.google) FontSource source,

    /// The name of the font to load.
    ///
    /// For [source] [FontSource.google] this is the name of the font in
    /// Google Fonts, for example `Ubuntu`. Check out the
    /// [`google_fonts` package](https://pub.dev/packages/google_fonts) for
    /// more information. Defaults to `'Ubuntu'`.
    @Default('Ubuntu') String name,

    /// The URL of the font in the remote server, or the path of the local
    /// file.
    ///
    /// For example: `https://example.com/font.ttf` or
    /// `assets/fonts/font.ttf`.
    String? uri,
  }) = _AppFontInput;

  /// Deserializes an [AppFontInput] from a JSON map.
  factory AppFontInput.fromJson(Map<String, dynamic> json) => _$AppFontInputFromJson(json);
}
