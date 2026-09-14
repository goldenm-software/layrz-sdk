part of '../../concierge.dart';

/// Whether a [ConciergeFormBlock] is always displayed or displayed conditionally.
@JsonEnum(alwaysCreate: true)
enum ConciergeFormDisplayConditionValidator {
  /// Refers to a block that will always be displayed, no matter what.
  @JsonValue('ALWAYS')
  always,

  /// Refers to a block that will be displayed when the condition is met.
  @JsonValue('WHEN')
  when;

  @override
  String toString() => toJson();

  /// Serializes this value to the raw string sent by the backend.
  String toJson() => _$ConciergeFormDisplayConditionValidatorEnumMap[this] ?? 'ALWAYS';

  /// Deserializes a [ConciergeFormDisplayConditionValidator] from the raw string sent by the
  /// backend, defaulting to [ConciergeFormDisplayConditionValidator.always] when [json] does not
  /// match a known value.
  static ConciergeFormDisplayConditionValidator fromJson(String json) {
    return _$ConciergeFormDisplayConditionValidatorEnumMap.entries
            .firstWhereOrNull((element) => element.value == json)
            ?.key ??
        ConciergeFormDisplayConditionValidator.always;
  }
}
