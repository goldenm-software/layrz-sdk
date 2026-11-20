part of '../app.dart';

/// The presentation variant used when fetching a [RegisteredApp] by id.
///
/// Mappit exposes its own registered apps query on the public API while sharing the same `RegisteredApp` type.
/// [RegisteredAppVariant] selects which query name is used.
enum RegisteredAppVariant {
  /// [standard] is the standard variant of the registered app.
  standard,

  /// [mappit] is the variant of the registered app for Mappit.
  mappit,
}
