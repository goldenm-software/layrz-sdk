part of '../converters.dart';

/// A [JsonConverter] that converts between nullable [LayrzIcon] and [String?].
///
/// Converts from JSON icon name strings to Dart [LayrzIcon?] objects using the
/// [iconMapping] registry, and back to icon name strings. Returns `null` when
/// the input is `null` or the icon name is not found in the mapping.
class IconOrNullConverter implements JsonConverter<LayrzIcon?, String?> {
  /// Creates an [IconOrNullConverter].
  const IconOrNullConverter();

  @override
  String? toJson(LayrzIcon? object) => object?.name;

  @override
  LayrzIcon? fromJson(String? json) {
    if (json == null) return null;
    return iconMapping[json];
  }
}

/// A [JsonConverter] that converts between [LayrzIcon] and [String].
///
/// Converts from JSON icon name strings to Dart [LayrzIcon] objects using the
/// [iconMapping] registry, and back to icon name strings. Falls back to
/// [LayrzIconsClasses.solarOutlineQuestionSquare] if the icon name is not found
/// or the input is `null`.
class IconConverter implements JsonConverter<LayrzIcon, String> {
  /// Creates an [IconConverter].
  const IconConverter();

  @override
  LayrzIcon fromJson(String json) {
    return const IconOrNullConverter().fromJson(json) ?? LayrzIconsClasses.solarOutlineQuestionSquare;
  }

  @override
  String toJson(LayrzIcon object) {
    return const IconOrNullConverter().toJson(object) ?? LayrzIconsClasses.solarOutlineQuestionSquare.name;
  }
}
