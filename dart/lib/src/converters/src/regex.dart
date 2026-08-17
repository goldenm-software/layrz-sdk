part of '../converters.dart';

/// A [JsonConverter] that converts between nullable [RegExp] and [String?].
///
/// Converts from JSON pattern strings to Dart [RegExp?] objects, and back to
/// pattern strings. Returns `null` when the input is `null`.
class RegExpOrNullConverter implements JsonConverter<RegExp?, String?> {
  /// Creates a [RegExpOrNullConverter].
  const RegExpOrNullConverter();

  @override
  RegExp? fromJson(String? json) {
    if (json == null) return null;
    return RegExp(json);
  }

  @override
  String? toJson(RegExp? object) {
    if (object == null) return null;
    return object.pattern;
  }
}

/// A [JsonConverter] that converts between [RegExp] and [String].
///
/// Converts from JSON pattern strings to Dart [RegExp] objects, and back to
/// pattern strings.
class RegExpConverter implements JsonConverter<RegExp, String> {
  /// Creates a [RegExpConverter].
  const RegExpConverter();

  @override
  RegExp fromJson(String json) => RegExp(json);

  @override
  String toJson(RegExp object) => object.pattern;
}
