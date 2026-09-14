part of '../references.dart';

/// The product ecosystem a [Reference] is scoped to.
///
/// [ReferenceVariant] selects which GraphQL query/mutation family is used
/// when fetching or saving a [Reference] — the standard Layrz API, the Mappit
/// ecosystem, or the SDM ecosystem.
enum ReferenceVariant {
  /// The standard variant, used in most of the Layrz apps.
  standard,

  /// The variant used on the Mappit ecosystem.
  mappit,

  /// The variant used on the SDM ecosystem.
  sdm,
}
