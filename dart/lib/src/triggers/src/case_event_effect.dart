part of '../triggers.dart';

/// The visual effect applied when a [Trigger] activates a case event.
@JsonEnum(alwaysCreate: true)
enum CaseEventEffect {
  /// [blinkContainer] blinks the container of the case.
  ///
  /// API Reference: `BLINKCONTAINER`
  @JsonValue('BLINKCONTAINER')
  blinkContainer,

  /// [blinkScreen] blinks the screen showing the case.
  ///
  /// API Reference: `BLINKSCREEN`
  @JsonValue('BLINKSCREEN')
  blinkScreen,

  /// [blinkRow] blinks the row of the case.
  ///
  /// API Reference: `BLINKROW`
  @JsonValue('BLINKROW')
  blinkRow,

  /// [none] applies no visual effect.
  ///
  /// API Reference: `NONE`
  @JsonValue('NONE')
  none;

  @override
  String toString() => toJson();

  /// Converts this [CaseEventEffect] to its wire representation.
  String toJson() => _$CaseEventEffectEnumMap[this] ?? 'BLINKCONTAINER';

  /// Converts a wire representation [json] to a [CaseEventEffect].
  ///
  /// Returns [CaseEventEffect.blinkContainer] when [json] does not match any
  /// known value.
  static CaseEventEffect fromJson(String json) {
    final value = _$CaseEventEffectEnumMap.entries.firstWhereOrNull((element) => element.value == json);
    return value?.key ?? CaseEventEffect.blinkContainer;
  }
}
