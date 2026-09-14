part of '../geofences.dart';

/// The classification of a [Geofence].
///
/// [GeofenceCategory] refers to the type of geofence, by default it is
/// [GeofenceCategory.none] when requested from the API.
///
/// Each value is serialized to JSON as an uppercase string (e.g., `NONE`,
/// `CUSTOM`). Use [toJson] and [fromJson] to convert between enum and wire
/// format.
///
/// If deserialization encounters an unknown category value, it defaults to
/// [none].
@JsonEnum(alwaysCreate: true)
enum GeofenceCategory {
  /// [none] - No specific category assigned. This is the fallback value used
  /// when an unknown category is received.
  @JsonValue('NONE')
  none,

  /// [custom] - A custom, user-defined category.
  @JsonValue('CUSTOM')
  custom,

  /// [administrative] - An administrative boundary category.
  @JsonValue('ADMINISTRATIVE')
  administrative,

  /// [customer] - A category representing a customer location.
  @JsonValue('CUSTOMER')
  customer,

  /// [other] - A category that does not fit any other predefined value.
  @JsonValue('OTHER')
  other,

  /// [prospect] - A category representing a prospective customer location.
  @JsonValue('PROSPECT')
  prospect,

  /// [polygon] - A category representing a polygon-shaped area of interest.
  @JsonValue('POLYGON')
  polygon,

  /// [lead] - A category representing a sales lead location.
  @JsonValue('LEAD')
  lead,
  ;

  /// Returns the JSON representation of this category value (e.g., `NONE`,
  /// `CUSTOM`).
  @override
  String toString() => toJson();

  /// Converts this [GeofenceCategory] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member (e.g.,
  /// `'NONE'` for [none]). If the enum value is not found in the generated
  /// map (should never occur), defaults to `'NONE'`.
  String toJson() => _$GeofenceCategoryEnumMap[this] ?? 'NONE';

  /// Converts a JSON string to a [GeofenceCategory].
  ///
  /// Accepts the uppercase JSON values (e.g., `'NONE'`, `'CUSTOM'`) from the
  /// server wire format. If the input does not match any known category,
  /// returns [none] as the fallback default.
  static GeofenceCategory fromJson(String json) =>
      _$GeofenceCategoryEnumMap.entries.firstWhereOrNull((e) => e.value == json)?.key ?? GeofenceCategory.none;
}
