part of '../device.dart';

/// Mutable payload data input used to create or update a [DeviceCommand]'s [CommandData].
@unfreezed
abstract class CommandDataInput with _$CommandDataInput {
  const CommandDataInput._();

  /// Constructs a mutable [CommandDataInput].
  factory CommandDataInput({
    /// [source] is the source of the command.
    CommandDefinitionSource? source,

    /// [definition] is the definition of the command.
    String? definition,

    /// [payload] is the list of parameters of the command.
    @Default({}) Map<String, dynamic> payload,
  }) = _CommandDataInput;

  /// Deserializes a [CommandDataInput] from a JSON map.
  factory CommandDataInput.fromJson(Map<String, dynamic> json) =>
      _$CommandDataInputFromJson(json);
}
