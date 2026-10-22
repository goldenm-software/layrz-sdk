part of '../triggers.dart';

/// The presentation variant used when fetching, saving or deleting a [Trigger].
///
/// Mappit exposes its own trigger GraphQL operations while sharing the same `Trigger` type and
/// `TriggerInput` input. [TriggerVariant] selects which operation name is used.
enum TriggerVariant {
  /// [standard] is the standard variant of the trigger.
  standard,

  /// [mappit] is the variant of the trigger for Mappit.
  mappit,
}
