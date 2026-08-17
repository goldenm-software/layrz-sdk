part of '../utils.dart';

/// A parameter update with a value and optional timestamp.
///
/// [ParamData] is an immutable data class (via `freezed`) that represents the updated
/// value of a parameter along with when it was last modified. It is commonly used in
/// telemetry systems and parameter tracking to record parameter changes and their timing.
///
/// The [value] can be any type (dynamic), allowing flexibility in representing diverse
/// parameter types. The [updatedAt] timestamp is optional and stored as a [DateTime]
/// using the [TimestampConverter] for JSON serialization.
///
/// Example:
/// ```dart
/// final paramUpdate = ParamData(
///   value: 42,
///   updatedAt: DateTime.now(),
/// );
///
/// final json = paramUpdate.toJson();
/// ```
@freezed
abstract class ParamData with _$ParamData {
  /// Creates a new [ParamData] with the given [value] and optional [updatedAt] timestamp.
  ///
  /// Parameters:
  ///   - [value]: The new parameter value. Can be any type (int, double, String, etc.).
  ///     This field is optional and defaults to null.
  ///   - [updatedAt]: A [DateTime] indicating when the parameter was last updated.
  ///     This field is optional and defaults to null. Serialized via [TimestampConverter].
  ///
  /// Returns a new immutable [ParamData] instance.
  const factory ParamData({
    /// The new value of the parameter being updated.
    /// Can be any type (int, double, String, bool, etc.).
    dynamic value,

    /// A timestamp indicating when the parameter was last updated.
    /// Serialized to/from JSON using [TimestampConverter].
    @TimestampConverter() DateTime? updatedAt,
  }) = _ParamData;

  /// Converts a JSON object to a [ParamData].
  ///
  /// The JSON object should contain optional `value` and `updatedAt` keys.
  /// The `updatedAt` value is deserialized via [TimestampConverter].
  ///
  /// Parameters:
  ///   - [json]: A map with optional `value` (any type) and `updatedAt` (timestamp) fields.
  ///
  /// Returns a new [ParamData] instance deserialized from the JSON.
  factory ParamData.fromJson(Map<String, dynamic> json) => _$ParamDataFromJson(json);
}
