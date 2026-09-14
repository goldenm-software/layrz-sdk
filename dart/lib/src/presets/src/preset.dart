part of '../presets.dart';

/// Immutable, reusable set of [Trigger]s that can be applied to a case.
@freezed
abstract class Preset with _$Preset {
  /// Constructs an immutable [Preset].
  const factory Preset({
    /// Is the ID.
    required String id,

    /// Is the name, only used as reference.
    required String name,

    /// Is the maximum valid time of the preset.
    @TimestampOrNullConverter() DateTime? validBefore,

    /// Indicates if the preset is expired or not.
    @Default(true) bool isExpired,

    /// Is the list of associated triggers.
    List<Trigger>? triggers,

    /// Is the list of IDs of the associated triggers.
    List<String>? triggersIds,

    /// Is the comment to place on the case when the preset is applied.
    String? comment,

    /// Is the list of granted access.
    List<Access>? access,
  }) = _Preset;

  /// Deserializes a [Preset] from a JSON map.
  factory Preset.fromJson(Map<String, dynamic> json) => _$PresetFromJson(json);
}
