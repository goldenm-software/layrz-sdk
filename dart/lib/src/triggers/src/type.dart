part of '../triggers.dart';

/// The type of a [Trigger], used to detect changes or activity to perform
/// actions.
@JsonEnum(alwaysCreate: true)
enum TriggerType {
  /// [presenceInGeofences] is triggered when an asset enters or exits a
  /// geofence.
  ///
  /// API Reference: `PRESENCEINGEOFENCE`
  @JsonValue('PRESENCEINGEOFENCE')
  presenceInGeofences,

  /// [exactTime] is triggered at an exact time.
  ///
  /// API Reference: `EXACTTIME`
  @JsonValue('EXACTTIME')
  exactTime,

  /// [formula] is triggered when an LCL formula evaluates to `true`.
  ///
  /// API Reference: `FORMULA`
  @JsonValue('FORMULA')
  formula,

  /// [authentication] is triggered by an authentication attempt.
  ///
  /// API Reference: `AUTHENTICATION`
  @JsonValue('AUTHENTICATION')
  authentication,

  /// [pythonScript] is triggered when a Python script evaluates to `true`.
  ///
  /// API Reference: `PYTHONSCRIPT`
  @JsonValue('PYTHONSCRIPT')
  pythonScript,

  /// [casesChanges] is triggered by changes on cases.
  ///
  /// API Reference: `CASES_CHANGES`
  @JsonValue('CASES_CHANGES')
  casesChanges,

  /// [bhsSpeeding] is triggered by Brickhouse speeding detection.
  ///
  /// API Reference: `BHS_SPEEDING`
  @JsonValue('BHS_SPEEDING')
  bhsSpeeding,

  /// [bhsPresence] is triggered by Brickhouse presence detection.
  ///
  /// API Reference: `BHS_PRESENCE`
  @JsonValue('BHS_PRESENCE')
  bhsPresence,

  /// [manualAction] is triggered when a user enters information manually via
  /// the app.
  ///
  /// API Reference: `MANUAL_ACTION`
  @JsonValue('MANUAL_ACTION')
  manualAction,

  /// [nested] is triggered by the activation of its children triggers.
  ///
  /// API Reference: `NESTED_TRIGGERS`
  @JsonValue('NESTED_TRIGGERS')
  nested,
  ;

  @override
  String toString() => toJson();

  /// Converts this [TriggerType] to its wire representation.
  String toJson() => _$TriggerTypeEnumMap[this] ?? 'FORMULA';

  /// Converts a wire representation [json] to a [TriggerType].
  ///
  /// Returns [TriggerType.formula] when [json] does not match any known
  /// value.
  static TriggerType fromJson(String json) {
    final value = _$TriggerTypeEnumMap.entries.firstWhereOrNull((element) => element.value == json);
    return value?.key ?? TriggerType.formula;
  }
}
