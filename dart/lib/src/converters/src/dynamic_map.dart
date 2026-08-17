part of '../converters.dart';

/// A [JsonConverter] that safely converts any [Map] into [Map<String, dynamic>?].
///
/// A Dart literal `{}` inside a `Map<String, dynamic>` value slot is
/// `Map<dynamic, dynamic>`, which fails the direct `as Map<String, dynamic>?`
/// cast that json_serializable emits. This converter handles both variants,
/// converting `Map<dynamic, dynamic>` by stringifying keys. Returns `null` when
/// the input is `null` or not a [Map].
class DynamicMapConverterNullable implements JsonConverter<Map<String, dynamic>?, Object?> {
  /// Creates a [DynamicMapConverterNullable].
  const DynamicMapConverterNullable();

  @override
  Map<String, dynamic>? fromJson(Object? json) {
    if (json == null) return null;
    if (json is Map<String, dynamic>) return json;
    if (json is Map) return json.map((key, value) => MapEntry(key.toString(), value));
    return null;
  }

  @override
  Object? toJson(Map<String, dynamic>? value) => value;
}

/// A [JsonConverter] that safely converts any [Map] into [Map<String, dynamic>].
///
/// Similar to [DynamicMapConverterNullable], but non-nullable: converts
/// `Map<dynamic, dynamic>` by stringifying keys and returns an empty map `{}`
/// when the input is not a [Map].
class DynamicMapConverter implements JsonConverter<Map<String, dynamic>, Object?> {
  /// Creates a [DynamicMapConverter].
  const DynamicMapConverter();

  @override
  Map<String, dynamic> fromJson(Object? json) {
    if (json is Map<String, dynamic>) return json;
    if (json is Map) return json.map((key, value) => MapEntry(key.toString(), value));
    return {};
  }

  @override
  Object? toJson(Map<String, dynamic> value) => value;
}
