part of '../mappit.dart';

/// Immutable configuration of a single weekday's labor hours for a Mappit
/// seller.
///
/// [MappitLaborHour] breaks down the time available on [weekday] into
/// [administrative], [f2f] (face-to-face), and [other] durations. Use
/// [MappitLaborHourInput] for creating or updating labor hours.
@freezed
abstract class MappitLaborHour with _$MappitLaborHour {
  /// Constructs an immutable [MappitLaborHour].
  const factory MappitLaborHour({
    /// [id] represents the labor hour ID.
    required String id,

    /// [weekday] represents the labor hour weekday.
    @JsonKey(unknownEnumValue: Weekday.monday) required Weekday weekday,

    /// [administrative] represents the labor hour administrative time.
    @DurationConverter() required Duration administrative,

    /// [f2f] represents the labor hour face-to-face time.
    @DurationConverter() required Duration f2f,

    /// [other] represents the labor hour other time.
    @DurationConverter() required Duration other,
  }) = _MappitLaborHour;

  /// Deserializes a [MappitLaborHour] from a JSON map.
  factory MappitLaborHour.fromJson(Map<String, dynamic> json) => _$MappitLaborHourFromJson(json);
}

/// Mutable input data for creating or updating a [MappitLaborHour].
///
/// [MappitLaborHourInput] mirrors the fields of [MappitLaborHour] but is
/// mutable and provides sensible defaults for the duration fields, making it
/// suitable for form binding before submission.
@unfreezed
abstract class MappitLaborHourInput with _$MappitLaborHourInput {
  /// Constructs a mutable [MappitLaborHourInput].
  factory MappitLaborHourInput({
    /// [id] represents the labor hour ID, or null when creating a new one.
    String? id,

    /// [weekday] represents the labor hour weekday.
    @JsonKey(unknownEnumValue: Weekday.monday) required Weekday weekday,

    /// [administrative] represents the labor hour administrative time. Defaults to zero.
    @Default(Duration(minutes: 0)) @DurationConverter() Duration administrative,

    /// [f2f] represents the labor hour face-to-face time. Defaults to zero.
    @Default(Duration(minutes: 0)) @DurationConverter() Duration f2f,

    /// [other] represents the labor hour other time. Defaults to zero.
    @Default(Duration(minutes: 0)) @DurationConverter() Duration other,
  }) = _MappitLaborHourInput;

  /// Deserializes a [MappitLaborHourInput] from a JSON map.
  factory MappitLaborHourInput.fromJson(Map<String, dynamic> json) => _$MappitLaborHourInputFromJson(json);
}
