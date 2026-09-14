part of '../operations.dart';

/// The sound played by an in-app notification [Operation] when it arrives.
enum SoundEffect {
  /// Will not play any sound when the notification arrives.
  ///
  /// Layrz API equivalent: `NONE`
  @JsonValue('NONE')
  none,

  /// A short, sharp electronic sound, often associated with alerts or signals.
  ///
  /// Layrz API equivalent: `BEEP`
  @JsonValue('BEEP')
  beep,

  /// A sound resembling a machine or device, characterized by clicking, whirring, or other
  /// industrial tones.
  ///
  /// Layrz API equivalent: `MECHANICAL`
  @JsonValue('MECHANICAL')
  mechanical,

  /// A clear, ringing sound, reminiscent of a bell or a chime.
  ///
  /// Layrz API equivalent: `PEAL`
  @JsonValue('PEAL')
  peal,

  /// A quick, soft burst-like sound, similar to a bubble popping.
  ///
  /// Layrz API equivalent: `POP`
  @JsonValue('POP')
  pop,

  /// A deep, echoing tone with a lasting vibration or reverberation.
  ///
  /// Layrz API equivalent: `RESONANT`
  @JsonValue('RESONANT')
  resonant,

  /// A steady, smooth sound with a consistent pitch, often used in signals or melodies.
  ///
  /// Layrz API equivalent: `TONE`
  @JsonValue('TONE')
  tone,

  /// A custom sound effect that can be set by the user.
  ///
  /// Layrz API equivalent: `CUSTOM`
  @JsonValue('CUSTOM')
  custom;

  @override
  String toString() => toJson();

  /// Serializes this value to the raw string sent by the backend.
  String toJson() => _$SoundEffectEnumMap[this] ?? 'NONE';

  /// Deserializes a [SoundEffect] from the raw string sent by the backend, defaulting to
  /// [SoundEffect.none] when [json] does not match a known value.
  static SoundEffect fromJson(String json) {
    final found = _$SoundEffectEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? SoundEffect.none;
  }
}
