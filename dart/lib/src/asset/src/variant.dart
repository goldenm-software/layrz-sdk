part of '../asset.dart';

/// The ecosystem variant used when fetching or saving an [Asset].
///
/// ATS and Mappit expose their own asset GraphQL operations while sharing the same `Asset` type.
/// [tenvioWarehouses] is a presentation variant that uses the [standard] operations.
enum AssetVariant {
  /// [standard] is the standard variant of the asset.
  standard,

  /// [ats] is the variant of the asset for ATS.
  ats,

  /// [mappit] is the variant of the asset for Mappit.
  mappit,

  /// [tenvioWarehouses] is the variant of the asset for Tenvio warehouses.
  tenvioWarehouses,
}

/// Returns the listing query name for the given [AssetVariant].
String _getAssetQueryNameFromVariant(AssetVariant variant) => switch (variant) {
  .ats => 'atsAssets',
  .mappit => 'mappitAssets',
  _ => 'assets',
};

/// Returns the save mutation name and input type for the given [AssetVariant].
(String, String) _getAssetSaveMutationFromVariant(AssetVariant variant, {required bool isAdd}) => switch (variant) {
  .mappit => (isAdd ? 'addMappitAsset' : 'editMappitAsset', 'MappitAssetInput'),
  .ats => (isAdd ? 'addAsset' : 'editAsset', 'AtsAssetInput'),
  _ => (isAdd ? 'addAsset' : 'editAsset', 'AssetInput'),
};

/// Returns the delete mutation name for the given [AssetVariant].
String _getAssetDeleteMutationNameFromVariant(AssetVariant variant) => switch (variant) {
  .mappit => 'deleteMappitAssets',
  _ => 'deleteAssets',
};

/// Returns the clone mutation name for the given [AssetVariant].
String _getAssetCloneMutationNameFromVariant(AssetVariant variant) => switch (variant) {
  .mappit => 'cloneMappitAsset',
  _ => 'cloneAsset',
};

/// Input keys only the Mappit operations accept.
const _kAssetMappitInputKeys = [
  'mappitLaborHours',
  'mappitLaborStartTime',
  'mappitLaborEndTime',
  'mappitSecondaryRoutesIds',
];

/// Input keys only the ATS operations accept.
const _kAssetAtsInputKeys = [
  'nfcIdentifier',
  'authenticationCardId',
  'linkedSupplyPointAssetsIds',
  'authenticationCardCardboardId',
  'authenticationCardTagId',
  'authenticationCardNfcId',
  'linkedStorageTerminalsIds',
  'geofencesIds',
];
