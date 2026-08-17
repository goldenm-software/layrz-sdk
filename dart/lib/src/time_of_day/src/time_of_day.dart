part of '../time_of_day.dart';

/// A framework-independent representation of a time of day.
///
/// [TimeOfDay] is a JSON-serializable immutable class (via `freezed`) that represents
/// a time of day as hour and minute components. It shadows Flutter's `TimeOfDay` from
/// `package:flutter/material.dart` but is framework-independent and designed for
/// cross-platform use in Layrz SDK.
///
/// Use this class when you need to:
/// - Store or transmit times of day in JSON format.
/// - Work with time-of-day values without depending on the Flutter framework.
/// - Exchange time data between different platforms and services.
///
/// Example:
/// ```dart
/// // Create a TimeOfDay for 14:30
/// final timeOfDay = TimeOfDay(hour: 14, minute: 30);
///
/// // Convert to JSON
/// final json = timeOfDay.toJson();
///
/// // Reconstruct from a DateTime
/// final now = DateTime.now();
/// final timeNow = TimeOfDay.fromDateTime(now);
/// ```
@freezed
abstract class TimeOfDay with _$TimeOfDay {
  /// Private constructor used internally by `freezed` to construct instances.
  const TimeOfDay._();

  /// Creates a new [TimeOfDay] with the given [hour] and [minute].
  ///
  /// Parameters:
  ///   - [hour]: The hour of the day (0–23).
  ///   - [minute]: The minute within the hour (0–59).
  ///
  /// Returns a new immutable [TimeOfDay] instance.
  const factory TimeOfDay({required int hour, required int minute}) = _TimeOfDay;

  /// Converts a JSON object to a [TimeOfDay].
  ///
  /// The JSON object must contain `hour` and `minute` keys with integer values.
  ///
  /// Parameters:
  ///   - [json]: A map with `hour` (int) and `minute` (int) fields.
  ///
  /// Returns a new [TimeOfDay] instance deserialized from the JSON.
  factory TimeOfDay.fromJson(Map<String, dynamic> json) => _$TimeOfDayFromJson(json);

  /// Creates a [TimeOfDay] from a [DateTime].
  ///
  /// Extracts the hour and minute components from the given [dateTime] and
  /// returns a new [TimeOfDay] with those values. The date components and
  /// timezone information are discarded.
  ///
  /// Parameters:
  ///   - [dateTime]: A [DateTime] from which to extract the time.
  ///
  /// Returns a new [TimeOfDay] with the same hour and minute as [dateTime].
  factory TimeOfDay.fromDateTime(DateTime dateTime) {
    return TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
  }
}
