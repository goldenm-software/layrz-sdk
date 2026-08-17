part of '../converters.dart';

/// A [JsonConverter] that converts between [Map<String, ParamData>?] and
/// [Map<String, dynamic>?].
///
/// Converts parameter maps while translating key format: double underscores
/// `__` in JSON keys become dots `.` in Dart keys (and vice versa). This allows
/// nested parameter names like `parent.child` to be serialized as `parent__child`
/// in JSON. Returns an empty map `{}` when the input is `null`.
class ParamDataMapConverter implements JsonConverter<Map<String, ParamData>?, Map<String, dynamic>?> {
  /// Creates a [ParamDataMapConverter].
  const ParamDataMapConverter();

  @override
  Map<String, ParamData>? fromJson(Map<String, dynamic>? json) {
    if (json == null) return {};
    return json.map((k, v) => MapEntry(k.replaceAll('__', '.'), ParamData.fromJson(v as Map<String, dynamic>)));
  }

  @override
  Map<String, dynamic>? toJson(Map<String, ParamData>? params) {
    if (params == null) return {};
    return params.map((k, v) => MapEntry(k.replaceAll('.', '__'), v.toJson()));
  }
}
