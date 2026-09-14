part of '../actions.dart';

/// The presentation variant used when fetching or mutating an [Action].
///
/// Some Layrz apps (Mappit) expose their own action listing/mutation GraphQL
/// operations while sharing the same underlying `Action` type. [ActionVariant] selects
/// which operation name is used.
enum ActionVariant {
  /// [standard] is the default variant, used in most cases.
  standard,

  /// [mappit] is the variant used for Mappit actions.
  mappit,
}
