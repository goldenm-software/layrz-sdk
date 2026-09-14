part of '../care_protocols.dart';

/// The design mode of a [CareProtocol].
///
/// [CareProtocolMode] selects whether a care protocol uses the classic task
/// checklist design ([simple]) or the newer concierge form design
/// ([concierge]).
@JsonEnum(alwaysCreate: true)
enum CareProtocolMode {
  /// [simple] means the classic or original care protocol design. A list of
  /// tasks to complete before submission.
  ///
  /// Layrz API Reference: `SIMPLE`
  @JsonValue('SIMPLE')
  simple,

  /// [concierge] means the new design of care protocol. Works using the
  /// scheme of Concierge Forms and the usage is more complex.
  ///
  /// Layrz API Reference: `CONCIERGE`
  @JsonValue('CONCIERGE')
  concierge,
  ;

  @override
  String toString() => toJson();

  /// Converts this [CareProtocolMode] to its wire representation.
  String toJson() => _$CareProtocolModeEnumMap[this] ?? 'SIMPLE';

  /// Converts a wire representation [json] to a [CareProtocolMode].
  ///
  /// Returns [CareProtocolMode.simple] when [json] does not match any known
  /// value.
  static CareProtocolMode fromJson(String json) {
    final value = _$CareProtocolModeEnumMap.entries.firstWhereOrNull((element) => element.value == json);

    return value?.key ?? CareProtocolMode.simple;
  }
}
