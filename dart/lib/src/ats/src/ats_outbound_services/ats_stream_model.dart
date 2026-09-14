part of '../../ats.dart';

/// The streaming model used by an ATS Stream outbound integration.
@JsonEnum(alwaysCreate: true)
enum AtsStreamModel {
  /// Streams completed fuel exits/dispatches.
  @JsonValue('EXIT')
  exit;

  @override
  String toString() => toJson();

  /// Serializes this value to the raw string sent by the backend.
  String toJson() => _$AtsStreamModelEnumMap[this] ?? 'EXIT';

  /// Deserializes an [AtsStreamModel] from the raw string sent by the backend, returning `null`
  /// when [value] does not match a known value.
  static AtsStreamModel? fromJson(String value) {
    return _$AtsStreamModelEnumMap.entries.firstWhereOrNull((element) => element.value == value)?.key;
  }
}
