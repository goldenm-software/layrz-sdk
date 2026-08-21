part of '../converters.dart';

/// A [JsonConverter] that converts between nullable [MdiRemapIcon] and [String?].
///
/// Converts from JSON icon name strings to Dart [MdiRemapIcon?] objects using the
/// [iconMapping] registry, and back to icon name strings. Returns `null` when
/// the input is `null` or the icon name is not found in the mapping.
class IconOrNullConverter implements JsonConverter<MdiRemapIcon?, String?> {
  /// Creates an [IconOrNullConverter].
  const IconOrNullConverter();

  @override
  String? toJson(MdiRemapIcon? object) => object?.name;

  @override
  MdiRemapIcon? fromJson(String? json) {
    if (json == null) return null;
    return iconMapping[json];
  }
}

/// A [JsonConverter] that converts between [MdiRemapIcon] and [String].
///
/// Converts from JSON icon name strings to Dart [MdiRemapIcon] objects using the
/// [iconMapping] registry, and back to icon name strings. Falls back to
/// [MdiRemapIconsClasses.helpCircleOutline] if the icon name is not found
/// or the input is `null`.
class IconConverter implements JsonConverter<MdiRemapIcon, String> {
  /// Creates an [IconConverter].
  const IconConverter();

  @override
  MdiRemapIcon fromJson(String json) {
    return const IconOrNullConverter().fromJson(json) ??
        MdiRemapIconsClasses.helpCircleOutline;
  }

  @override
  String toJson(MdiRemapIcon object) {
    return const IconOrNullConverter().toJson(object) ??
        MdiRemapIconsClasses.helpCircleOutline.name;
  }
}
