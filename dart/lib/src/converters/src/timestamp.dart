part of '../converters.dart';

/// A [JsonConverter] that converts between nullable [DateTime] and [num?].
///
/// Converts from JSON numeric values (seconds since Unix epoch) to Dart
/// [DateTime?] objects, and back to seconds. Returns `null` when the input is
/// `null`.
class TimestampOrNullConverter implements JsonConverter<DateTime?, num?> {
  /// Creates a [TimestampOrNullConverter].
  const TimestampOrNullConverter();

  @override
  DateTime? fromJson(num? json) {
    if (json == null) return null;
    return DateTime.fromMillisecondsSinceEpoch((json * 1000).toInt());
  }

  @override
  num? toJson(DateTime? object) {
    if (object == null) return null;
    return object.millisecondsSinceEpoch / 1000;
  }
}

/// A [JsonConverter] that converts between [DateTime] and [num].
///
/// Converts from JSON numeric values (seconds since Unix epoch) to Dart
/// [DateTime] objects, and back to seconds.
class TimestampConverter implements JsonConverter<DateTime, num> {
  /// Creates a [TimestampConverter].
  const TimestampConverter();

  @override
  DateTime fromJson(num json) {
    return DateTime.fromMillisecondsSinceEpoch((json * 1000).toInt());
  }

  @override
  num toJson(DateTime object) {
    return object.millisecondsSinceEpoch / 1000;
  }
}

/// A [JsonConverter] that converts between [DateTime] and ISO date strings.
///
/// Converts from JSON ISO date strings (format: `YYYY-MM-DD`) to Dart [DateTime]
/// objects, and back to date strings.
class DateConverter implements JsonConverter<DateTime, String> {
  /// Creates a [DateConverter].
  const DateConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime object) {
    return object.toDate();
  }
}

/// A [JsonConverter] that converts between nullable [DateTime] and [String?].
///
/// Converts from JSON ISO date strings (format: `YYYY-MM-DD`) or `null` to
/// Dart [DateTime?] objects, and back to date strings. Returns `null` when the
/// input is `null`.
class DateOrNullConverter implements JsonConverter<DateTime?, String?> {
  /// Creates a [DateOrNullConverter].
  const DateOrNullConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json == null) return null;
    return DateTime.parse(json);
  }

  @override
  String? toJson(DateTime? object) {
    if (object == null) return null;
    return object.toDate();
  }
}

/// Utility extension for formatting [DateTime] as an ISO date string.
extension DateExtension on DateTime {
  /// Formats this [DateTime] as an ISO date string in `YYYY-MM-DD` format.
  String toDate() {
    return "$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}";
  }
}
