part of '../permissions.dart';

/// Mutable fine-grained access control flags for a single Layrz module.
///
/// [GenericPermissionItemInput] is the mutable variant of
/// [GenericPermissionItem], used for creating or updating permission items in
/// create/update mutations. It maintains the same seven permission flags:
/// [read], [write], [create], [delete], [plan], [loginas], and [suspend].
/// All flags default to `false`.
@unfreezed
abstract class GenericPermissionItemInput with _$GenericPermissionItemInput {
  /// Internal constructor used by freezed.
  const GenericPermissionItemInput._();

  /// Constructs a mutable [GenericPermissionItemInput].
  ///
  /// All seven permission flags are optional and default to `false`.
  factory GenericPermissionItemInput({
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
  }) = _GenericPermissionItemInput;

  /// Deserializes a [GenericPermissionItemInput] from a JSON map.
  factory GenericPermissionItemInput.fromJson(Map<String, dynamic> json) => _$GenericPermissionItemInputFromJson(json);
}
