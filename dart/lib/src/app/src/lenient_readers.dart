part of '../app.dart';

/// [_lenientEntityList] rewrites a raw JSON list of entity maps so that the
/// non-nullable string keys in [stringKeys] are never null.
///
/// The API returns only the `id` of entities the current session cannot see
/// (or that were deleted), leaving every other field null. Those entries must
/// be preserved, because dropping them would make a later save revoke the
/// corresponding authorizations. Each element that is a [Map] is copied with
/// every key kept, and each key in [stringKeys] is set to an empty string when
/// it is null or missing. Non-map elements and a null list are returned as is.
///
/// Parameters:
/// - [value]: The raw JSON value read for the field.
/// - [stringKeys]: The keys that must be non-null strings after the rewrite.
///
/// Returns the rewritten list, or [value] untouched when it is not a list.
Object? _lenientEntityList(Object? value, List<String> stringKeys) {
  if (value is! List) return value;
  return value.map((element) {
    if (element is! Map) return element;
    final copy = Map<String, dynamic>.from(element);
    for (final key in stringKeys) {
      copy[key] ??= '';
    }
    return copy;
  }).toList();
}

/// [_readLenientAssets] reads `importedAssets`, keeping entries whose `name`
/// is null as an empty string. See [_lenientEntityList] for the rationale.
///
/// Parameters:
/// - [json]: The parent JSON map.
/// - [key]: The key being read.
///
/// Returns the lenient raw list for the key.
Object? _readLenientAssets(Map<dynamic, dynamic> json, String key) {
  return _lenientEntityList(json[key], const ['name']);
}

/// [_readLenientDevices] reads `importedDevices`, keeping entries whose `name`
/// or `ident` is null as an empty string. See [_lenientEntityList] for the
/// rationale.
///
/// Parameters:
/// - [json]: The parent JSON map.
/// - [key]: The key being read.
///
/// Returns the lenient raw list for the key.
Object? _readLenientDevices(Map<dynamic, dynamic> json, String key) {
  return _lenientEntityList(json[key], const ['name', 'ident']);
}

/// [_readLenientUsers] reads `keychain`, keeping entries whose `name` is null
/// as an empty string. See [_lenientEntityList] for the rationale.
///
/// Parameters:
/// - [json]: The parent JSON map.
/// - [key]: The key being read.
///
/// Returns the lenient raw list for the key.
Object? _readLenientUsers(Map<dynamic, dynamic> json, String key) {
  return _lenientEntityList(json[key], const ['name']);
}
