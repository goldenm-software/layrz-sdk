part of '../app.dart';

/// Legal information disclosed by a Layrz application.
///
/// [AppLegal] holds the company identity and privacy policy shown to end
/// users of a [RegisteredApp].
@freezed
abstract class AppLegal with _$AppLegal {
  /// Private constructor used by the code generator.
  const AppLegal._();

  /// Constructs an immutable [AppLegal].
  const factory AppLegal({
    /// The legal name of the company that owns the app.
    required String companyName,

    /// The URL of the company's website.
    required String companyUrl,

    /// The URL of the company's privacy policy.
    required String privacyPolicy,
  }) = _AppLegal;

  /// Deserializes an [AppLegal] from a JSON map.
  factory AppLegal.fromJson(Map<String, dynamic> json) => _$AppLegalFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying legal information fields.
  static GqlFragment get fragment =>
      GqlFragment(name: 'legalFragment', onType: 'LegalInformation')
        ..add(GqlField(name: 'companyName'))
        ..add(GqlField(name: 'companyUrl'))
        ..add(GqlField(name: 'privacyPolicy'));
  // coverage:ignore-end
}

/// Mutable input data for creating or updating [AppLegal] information.
///
/// [AppLegalInput] mirrors the fields of [AppLegal] but is mutable and
/// provides empty-string defaults, making it suitable for form binding
/// before submission as part of an app registration or edit mutation.
@unfreezed
abstract class AppLegalInput with _$AppLegalInput {
  /// Constructs a mutable [AppLegalInput].
  factory AppLegalInput({
    /// The legal name of the company that owns the app. Defaults to an
    /// empty string.
    @Default('') String companyName,

    /// The URL of the company's website. Defaults to an empty string.
    @Default('') String companyUrl,

    /// The URL of the company's privacy policy. Defaults to an empty
    /// string.
    @Default('') String privacyPolicy,
  }) = _AppLegalInput;

  /// Deserializes an [AppLegalInput] from a JSON map.
  factory AppLegalInput.fromJson(Map<String, dynamic> json) => _$AppLegalInputFromJson(json);
}
