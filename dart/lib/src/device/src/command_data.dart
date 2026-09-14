part of '../device.dart';

/// Immutable payload data carried by a [DeviceCommand].
@freezed
abstract class CommandData with _$CommandData {
  const CommandData._();

  /// Constructs an immutable [CommandData].
  const factory CommandData({
    /// [source] is the source of the command.
    required CommandDefinitionSource source,

    /// [definition] is the definition of the command.
    required String definition,

    /// [payload] is the list of parameters of the command.
    Map<String, dynamic>? payload,
  }) = _CommandData;

  /// Deserializes a [CommandData] from a JSON map.
  factory CommandData.fromJson(Map<String, dynamic> json) => _$CommandDataFromJson(json);
}
