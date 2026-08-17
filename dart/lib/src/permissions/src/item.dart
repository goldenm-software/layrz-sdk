part of '../permissions.dart';

/// Immutable fine-grained access control flags for a single Layrz module.
///
/// [GenericPermissionItem] defines seven boolean permissions that control what
/// actions a user can perform on a specific module (e.g., apps, users, devices):
/// - [read]: permission to view or retrieve module entities
/// - [write]: permission to modify existing module entities
/// - [create]: permission to create new entities in the module
/// - [delete]: permission to remove entities from the module
/// - [plan]: permission to plan or schedule operations on module entities
/// - [loginas]: permission to log in as a user within this module context
/// - [suspend]: permission to temporarily disable or suspend entities
///
/// All seven flags default to `false`. Use [GenericPermissionItemInput] for
/// creating or updating permission items.
@freezed
abstract class GenericPermissionItem with _$GenericPermissionItem {
  /// Internal constructor used by freezed.
  const GenericPermissionItem._();

  /// Constructs an immutable [GenericPermissionItem].
  ///
  /// All seven permission flags are optional and default to `false`.
  const factory GenericPermissionItem({
    /// Permission to read or view module entities. Defaults to `false`.
    @Default(false) bool read,

    /// Permission to modify existing module entities. Defaults to `false`.
    @Default(false) bool write,

    /// Permission to create new entities in the module. Defaults to `false`.
    @Default(false) bool create,

    /// Permission to delete or remove entities from the module.
    /// Defaults to `false`.
    @Default(false) bool delete,

    /// Permission to plan or schedule operations on module entities.
    /// Defaults to `false`.
    @Default(false) bool plan,

    /// Permission to log in as a user within this module context.
    /// Defaults to `false`.
    @Default(false) bool loginas,

    /// Permission to suspend or temporarily disable entities.
    /// Defaults to `false`.
    @Default(false) bool suspend,
  }) = _GenericPermissionItem;

  /// Deserializes a [GenericPermissionItem] from a JSON map.
  factory GenericPermissionItem.fromJson(Map<String, dynamic> json) => _$GenericPermissionItemFromJson(json);
}
