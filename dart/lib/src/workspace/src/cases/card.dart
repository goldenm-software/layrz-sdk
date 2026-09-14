part of '../../workspace.dart';

/// One card slot in a workspace's cases monitor configuration.
@freezed
abstract class CaseMonitorCard with _$CaseMonitorCard {
  /// Constructs an immutable [CaseMonitorCard].
  const factory CaseMonitorCard({
    /// Represents the type of the block
    @JsonKey(unknownEnumValue: CaseMonitorCardType.last24Hours) required CaseMonitorCardType type,

    /// When [type] is [CaseMonitorCardType.specificAsset], will use [assetId] to apply the filter.
    String? assetId,
  }) = _CaseMonitorCard;

  /// Deserializes a [CaseMonitorCard] from a JSON map.
  factory CaseMonitorCard.fromJson(Map<String, dynamic> json) => _$CaseMonitorCardFromJson(json);
}

/// [CaseMonitorCardInput] is the input variant of [CaseMonitorCard].
@unfreezed
abstract class CaseMonitorCardInput with _$CaseMonitorCardInput {
  /// Constructs a mutable [CaseMonitorCardInput].
  factory CaseMonitorCardInput({
    /// Represents the type of the block
    @JsonKey(unknownEnumValue: CaseMonitorCardType.last24Hours) required CaseMonitorCardType type,

    /// When [type] is [CaseMonitorCardType.specificAsset], will use [assetId] to apply the filter.
    String? assetId,
  }) = _CaseMonitorCardInput;

  /// Deserializes a [CaseMonitorCardInput] from a JSON map.
  factory CaseMonitorCardInput.fromJson(Map<String, dynamic> json) => _$CaseMonitorCardInputFromJson(json);
}
