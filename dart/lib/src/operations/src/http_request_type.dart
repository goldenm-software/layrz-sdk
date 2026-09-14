part of '../operations.dart';

/// The HTTP method used by a webhook-type [Operation].
enum HttpRequestType {
  /// The HTTP GET operation type.
  ///
  /// Layrz API equivalent: `GET`
  @JsonValue('GET')
  httpGet,

  /// The HTTP POST operation type.
  ///
  /// Layrz API equivalent: `POST`
  @JsonValue('POST')
  httpPost,

  /// The HTTP PUT operation type.
  ///
  /// Layrz API equivalent: `PUT`
  @JsonValue('PUT')
  httpPut,

  /// The HTTP PATCH operation type.
  ///
  /// Layrz API equivalent: `PATCH`
  @JsonValue('PATCH')
  httpPatch,

  /// The HTTP DELETE operation type.
  ///
  /// Layrz API equivalent: `DELETE`
  @JsonValue('DELETE')
  httpDelete;

  /// Serializes this value to the raw string sent by the backend.
  String toJson() => _$HttpRequestTypeEnumMap[this] ?? 'GET';

  /// Deserializes an [HttpRequestType] from the raw string sent by the backend, defaulting to
  /// [HttpRequestType.httpGet] when [json] does not match a known value.
  static HttpRequestType fromJson(String json) {
    final found = _$HttpRequestTypeEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? HttpRequestType.httpGet;
  }
}
