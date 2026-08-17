part of '../converters.dart';

/// A [JsonConverter] that converts between nullable [TimeOfDay] and [String?].
///
/// Converts from JSON time strings (format: `HH:MM:SS`) to Dart [TimeOfDay?]
/// objects, and back to time strings. Returns `null` when the input is `null`.
class TimeOfDayOrNullConverter implements JsonConverter<TimeOfDay?, String?> {
  /// Creates a [TimeOfDayOrNullConverter].
  const TimeOfDayOrNullConverter();

  @override
  TimeOfDay? fromJson(String? json) {
    if (json == null) return null;
    final parts = json.split(":");
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }

  @override
  String? toJson(TimeOfDay? object) {
    if (object == null) return null;
    return "${object.hour.toString().padLeft(2, '0')}:${object.minute.toString().padLeft(2, '0')}:00";
  }
}

/// A [JsonConverter] that converts between [TimeOfDay] and [String].
///
/// Converts from JSON time strings (format: `HH:MM:SS`) to Dart [TimeOfDay]
/// objects, and back to time strings.
class TimeOfDayConverter implements JsonConverter<TimeOfDay, String> {
  /// Creates a [TimeOfDayConverter].
  const TimeOfDayConverter();

  @override
  TimeOfDay fromJson(String json) {
    final parts = json.split(":");
    return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }

  @override
  String toJson(TimeOfDay object) {
    return "${object.hour.toString().padLeft(2, '0')}:${object.minute.toString().padLeft(2, '0')}:00";
  }
}
