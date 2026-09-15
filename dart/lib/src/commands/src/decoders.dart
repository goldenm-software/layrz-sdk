part of '../commands.dart';

/// [_commandDefinitionInputListDecoder] decodes a raw listing `result` payload into a list of
/// [CommandDefinitionInput]. Used by Flespi-backed fetch queries.
List<CommandDefinitionInput> _commandDefinitionInputListDecoder(Object? json) {
  if (json is List) {
    return json.map((e) => CommandDefinitionInput.fromJson(e as Map<String, dynamic>)).toList();
  }
  return [];
}
