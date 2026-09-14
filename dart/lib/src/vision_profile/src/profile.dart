part of '../vision_profile.dart';

/// Immutable Layrz Vision profile configuration.
///
/// [VisionProfile] binds a [protocol] configuration ([config]) to a set of
/// granted [access] entries, and exposes the [lastMeasurement] recorded for
/// the profile, when available.
@freezed
abstract class VisionProfile with _$VisionProfile {
  /// Constructs an immutable [VisionProfile].
  const factory VisionProfile({
    /// Unique identifier of the profile.
    required String id,

    /// Name of the profile.
    required String name,

    /// ID of the protocol used by this profile.
    String? protocolId,

    /// The protocol used by this profile.
    VisionProtocol? protocol,

    /// The configuration of the profile.
    Map<String, dynamic>? config,

    /// The list of granted access entries for this vision profile.
    List<Access>? access,

    /// The last measurement of the profile, or null if there is no
    /// measurement yet.
    VisionGaugeResult? lastMeasurement,
  }) = _VisionProfile;

  /// Deserializes a [VisionProfile] from a JSON map.
  factory VisionProfile.fromJson(Map<String, dynamic> json) => _$VisionProfileFromJson(json);
}
