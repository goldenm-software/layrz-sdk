part of '../general.dart';

/// A day of the week, used to schedule recurring behavior (triggers, care protocol reminders,
/// Mappit labor hours, and similar).
@JsonEnum(alwaysCreate: true)
enum Weekday {
  /// Monday.
  @JsonValue('MON')
  monday,

  /// Tuesday.
  @JsonValue('TUE')
  tuesday,

  /// Wednesday.
  @JsonValue('WED')
  wednesday,

  /// Thursday.
  @JsonValue('THU')
  thursday,

  /// Friday.
  @JsonValue('FRI')
  friday,

  /// Saturday.
  @JsonValue('SAT')
  saturday,

  /// Sunday.
  @JsonValue('SUN')
  sunday;

  @override
  String toString() => toJson();

  /// Serializes this value to the raw string sent by the backend.
  String toJson() => _$WeekdayEnumMap[this] ?? 'MON';

  /// Deserializes a [Weekday] from the raw string sent by the backend, defaulting to
  /// [Weekday.monday] when [json] does not match a known value.
  static Weekday fromJson(String json) {
    return _$WeekdayEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ?? Weekday.monday;
  }

  /// Converts a [DateTime] weekday integer (as in [DateTime.weekday]) to its matching [Weekday],
  /// defaulting to [Weekday.monday] for an unrecognized value.
  Weekday toInt(int day) {
    switch (day) {
      case DateTime.monday:
        return Weekday.monday;
      case DateTime.tuesday:
        return Weekday.tuesday;
      case DateTime.wednesday:
        return Weekday.wednesday;
      case DateTime.thursday:
        return Weekday.thursday;
      case DateTime.friday:
        return Weekday.friday;
      case DateTime.saturday:
        return Weekday.saturday;
      case DateTime.sunday:
        return Weekday.sunday;
      default:
        return Weekday.monday;
    }
  }
}
