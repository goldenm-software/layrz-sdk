part of '../permissions.dart';

/// Mutable module-level permissions for all 12 Layrz platform areas.
///
/// [GenericPermissionInput] is the mutable variant of [GenericPermission],
/// used for creating or updating permissions in mutations. It maintains the
/// same 12 module slots but all fields are required (non-null). Each slot
/// holds access control via [GenericPermissionItemInput] for one module area.
@unfreezed
abstract class GenericPermissionInput with _$GenericPermissionInput {
  /// Internal constructor used by freezed.
  const GenericPermissionInput._();

  /// Constructs a mutable [GenericPermissionInput] with required module slots.
  ///
  /// All 12 module slots are required. To exclude a module from permissions,
  /// pass an all-false [GenericPermissionItemInput].
  factory GenericPermissionInput({
    /// Permission item for the apps module.
    required GenericPermissionItemInput apps,

    /// Permission item for the users module.
    required GenericPermissionItemInput users,

    /// Permission item for the firmwares module.
    required GenericPermissionItemInput firmwares,

    /// Permission item for the employees module.
    required GenericPermissionItemInput employees,

    /// Permission item for the languages module.
    required GenericPermissionItemInput languages,

    /// Permission item for the categories module.
    required GenericPermissionItemInput categories,

    /// Permission item for the departments module.
    required GenericPermissionItemInput departments,

    /// Permission item for the protocols module.
    required GenericPermissionItemInput protocols,

    /// Permission item for the billing module.
    required GenericPermissionItemInput billing,

    /// Permission item for the cycles module.
    required GenericPermissionItemInput cycles,

    /// Permission item for the shortcuts module.
    required GenericPermissionItemInput shortcuts,

    /// Permission item for the layers module.
    required GenericPermissionItemInput layers,
  }) = _GenericPermissionInput;

  /// Deserializes a [GenericPermissionInput] from a JSON map.
  factory GenericPermissionInput.fromJson(Map<String, dynamic> json) => _$GenericPermissionInputFromJson(json);
}
