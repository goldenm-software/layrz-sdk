part of '../sensors.dart';

/// The variant used when fetching or deleting global [Sensor]s.
///
/// Mappit exposes its own global sensor GraphQL operations while sharing the same `Sensor` type.
enum SensorVariant {
  /// [standard] is the standard variant of the sensor.
  standard,

  /// [mappit] is the variant of the sensor for Mappit.
  mappit,
}
