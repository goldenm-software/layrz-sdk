part of '../billing_plan.dart';

/// Immutable billing plan data describing entitlement limits for an account.
///
/// [BillingPlan] captures the numeric quotas and allowed catalog entry IDs
/// (apps, algorithms, inbound/outbound/vision/exchange protocols) granted to
/// an account under this plan.
@freezed
abstract class BillingPlan with _$BillingPlan {
  /// Constructs an immutable [BillingPlan].
  const factory BillingPlan({
    /// Unique identifier for the billing plan.
    required String id,

    /// The percentage of reconnections allowed for the billing plan.
    @Default(0.0) double reconnectionPercent,

    /// The maximum number of reconnections allowed for the billing plan.
    @Default(0) int reconnectionMaximum,

    /// The number of reconnection incidents allowed for the billing plan.
    @Default(0) int reconnectionIncidents,

    /// The maximum number of assets allowed for the billing plan.
    @Default(0) int maxAssets,

    /// The maximum number of devices allowed for the billing plan.
    @Default(0) int maxDevices,

    /// The maximum number of users allowed for the billing plan.
    @Default(0) int maxUsers,

    /// The maximum number of outbound services allowed for the billing plan.
    @Default(0) int maxOutboundServices,

    /// The maximum number of functions allowed for the billing plan.
    @Default(0) int maxFunctions,

    /// The maximum number of apps allowed for the billing plan.
    @Default(0) int maxApps,

    /// The list of allowed app IDs for the billing plan.
    @Default([]) List<String> allowedAppsIds,

    /// The list of allowed algorithm IDs for the billing plan.
    @Default([]) List<String> allowedAlgorithmsIds,

    /// The list of allowed inbound protocol IDs for the billing plan.
    @Default([]) List<String> allowedInboundProtocolsIds,

    /// The list of allowed outbound protocol IDs for the billing plan.
    @Default([]) List<String> allowedOutboundProtocolsIds,

    /// The list of allowed vision protocol IDs for the billing plan.
    @Default([]) List<String> allowedVisionProtocolsIds,

    /// The list of allowed exchange protocol IDs for the billing plan.
    @Default([]) List<String> allowedExchangeProtocolsIds,

    /// Whether AI is enabled for the billing plan.
    @Default(false) bool aiEnabled,
  }) = _BillingPlan;

  /// Deserializes a [BillingPlan] from a JSON map.
  factory BillingPlan.fromJson(Map<String, dynamic> json) => _$BillingPlanFromJson(json);
}
