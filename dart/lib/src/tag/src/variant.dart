part of '../tag.dart';

/// The presentation variant used when fetching, saving or deleting a [Tag].
///
/// Mappit exposes its own tag GraphQL operations while sharing the same `Tag` type and `TagInput`
/// input. [TagVariant] selects which operation name is used.
enum TagVariant {
  /// [standard] is the standard variant of the tag.
  standard,

  /// [mappit] is the variant of the tag for Mappit.
  mappit,
}
