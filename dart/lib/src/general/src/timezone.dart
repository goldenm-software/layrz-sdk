part of '../general.dart';

/// Immutable timezone value used across the Layrz platform.
///
/// [Timezone] pairs a unique [id] and [name] (an IANA timezone name, e.g.
/// `Europe/Paris`) with its UTC [offset] and, when known, the [country] it
/// belongs to.
@freezed
abstract class Timezone with _$Timezone {
  /// Constructs an immutable [Timezone].
  const factory Timezone({
    /// [id] is the id of the timezone.
    required String id,

    /// [name] is the name of the timezone.
    ///
    /// Example: `Europe/Paris`.
    required String name,

    /// [offset] is the offset of the timezone.
    ///
    /// Example: `+00:00`.
    required String offset,

    /// [country] is the country of the timezone.
    Country? country,
  }) = _Timezone;

  /// Deserializes a [Timezone] from a JSON map.
  factory Timezone.fromJson(Map<String, dynamic> json) => _$TimezoneFromJson(json);
}
