part of '../inbound.dart';

/// [_InboundCredentialsConverter] decodes credentials into a deep copy, so a decoded input never
/// shares its maps or lists with the source JSON.
class _InboundCredentialsConverter implements JsonConverter<Map<String, dynamic>, Object?> {
  const _InboundCredentialsConverter();

  @override
  Map<String, dynamic> fromJson(Object? json) => json is Map ? _deepCopyMap(json) : {};

  @override
  Object? toJson(Map<String, dynamic> value) => value;
}

/// [_deepCopyMap] copies [source] recursively, stringifying its keys.
Map<String, dynamic> _deepCopyMap(Map<dynamic, dynamic> source) {
  return {for (final entry in source.entries) entry.key.toString(): _deepCopyValue(entry.value)};
}

Object? _deepCopyValue(Object? value) {
  if (value is Map) return _deepCopyMap(value);
  if (value is List) return [for (final item in value) _deepCopyValue(item)];
  return value;
}
