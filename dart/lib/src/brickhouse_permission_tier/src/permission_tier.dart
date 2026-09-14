part of '../brickhouse_permission_tier.dart';

/// The billing period a [BHSPermissionTier] is invoiced under.
///
/// If deserialization encounters an unknown period value, it defaults to
/// [unknown].
@JsonEnum()
enum BrickhouseBillingPeriod {
  /// Billed on a monthly cadence.
  @JsonValue('MONTHLY')
  monthly,

  /// Billed on a quarterly cadence.
  @JsonValue('QUARTERLY')
  quarterly,

  /// Billed on a yearly cadence.
  @JsonValue('YEARLY')
  yearly,

  /// Billed on a two-year cadence.
  @JsonValue('TWO_YEARLY')
  twoYearly,

  /// Unknown billing period. Fallback value used when an unrecognized period
  /// value is received.
  @JsonValue('UNKNOWN')
  unknown;

  /// Converts this [BrickhouseBillingPeriod] to its wire JSON string.
  String toJson() => _$BrickhouseBillingPeriodEnumMap[this] ?? 'UNKNOWN';

  /// Converts a JSON string to a [BrickhouseBillingPeriod].
  ///
  /// Returns [unknown] when the input does not match any known period.
  static BrickhouseBillingPeriod fromJson(String json) {
    return _$BrickhouseBillingPeriodEnumMap.entries.firstWhereOrNull((e) => e.value == json)?.key ??
        BrickhouseBillingPeriod.unknown;
  }
}

/// Immutable Brickhouse permission tier describing a per-user access level.
///
/// [BHSPermissionTier] groups [User]s under a named tier with a numeric
/// [tierLevel] and an optional [billingPeriod], further scoped by a list of
/// granted [access] entries.
@freezed
abstract class BHSPermissionTier with _$BHSPermissionTier {
  /// Constructs an immutable [BHSPermissionTier].
  const factory BHSPermissionTier({
    /// Unique identifier for this permission tier.
    required String id,

    /// Human-readable name of the permission tier.
    required String name,

    /// The numeric level of this permission tier.
    required int tierLevel,

    /// The billing period this permission tier is invoiced under.
    BrickhouseBillingPeriod? billingPeriod,

    /// A human-readable description of this permission tier.
    String? description,

    /// Arbitrary custom properties associated with this permission tier.
    Map<String, dynamic>? customProperties,

    /// The list of users assigned to this permission tier.
    List<User>? users,

    /// The list of granted access entries for this permission tier.
    List<Access>? access,
  }) = _BHSPermissionTier;

  /// Deserializes a [BHSPermissionTier] from a JSON map.
  factory BHSPermissionTier.fromJson(Map<String, dynamic> json) => _$BHSPermissionTierFromJson(json);
}

/// Mutable input data for a [BHSPermissionTier], suitable for form binding.
///
/// [BHSPermissionTierInput] mirrors [BHSPermissionTier] but is mutable, for
/// creating or updating a permission tier.
@unfreezed
abstract class BHSPermissionTierInput with _$BHSPermissionTierInput {
  /// Constructs a mutable [BHSPermissionTierInput].
  factory BHSPermissionTierInput({
    /// Unique identifier for this permission tier. Null when creating a
    /// new tier.
    String? id,

    /// Human-readable name of the permission tier.
    String? name,

    /// A human-readable description of this permission tier.
    String? description,

    /// The billing period this permission tier is invoiced under.
    BrickhouseBillingPeriod? billingPeriod,

    /// The numeric level of this permission tier.
    @Default(1) int tierLevel,

    /// Arbitrary custom properties associated with this permission tier.
    Map<String, dynamic>? customProperties,
  }) = _BHSPermissionTierInput;

  /// Deserializes a [BHSPermissionTierInput] from a JSON map.
  factory BHSPermissionTierInput.fromJson(Map<String, dynamic> json) => _$BHSPermissionTierInputFromJson(json);
}
