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
  ;

  /// [queryName] returns the name of the query used to fetch actions for this variant.
  String get queryName {
    switch (this) {
      case .standard:
        return 'actions';
      case .mappit:
        return 'mappitActions';
    }
  }

  /// [addMutationName] returns the name of the mutation used to add an action for this variant.
  String get addMutationName {
    switch (this) {
      case .standard:
        return 'addAction';
      case .mappit:
        return 'addMappitAction';
    }
  }

  /// [editMutationName] returns the name of the mutation used to edit an action for this variant.
  String get editMutationName {
    switch (this) {
      case .standard:
        return 'editAction';
      case .mappit:
        return 'editMappitAction';
    }
  }

  /// [deleteMutationName] returns the name of the mutation used to delete actions for this variant.
  ///
  /// Note: both names are plural, unlike the add/edit mutations which are singular.
  String get deleteMutationName {
    switch (this) {
      case .standard:
        return 'deleteActions';
      case .mappit:
        return 'deleteMappitActions';
    }
  }
}
