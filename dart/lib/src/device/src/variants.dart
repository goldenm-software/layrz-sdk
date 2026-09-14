part of '../device.dart';

/// The presentation variant used when fetching a [Device].
///
/// Some Layrz apps (ATS, Mappit) expose their own device listing/deletion GraphQL operations while
/// sharing the same underlying `Device` type. [DeviceVariant] selects which operation name is used.
enum DeviceVariant {
  /// [standard] is the standard variant of the device.
  standard,

  /// [ats] is the variant of the device for ATS.
  ats,

  /// [mappit] is the variant of the device for Mappit.
  mappit,
}
