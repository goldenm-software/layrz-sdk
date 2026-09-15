/// Command structure definitions for Layrz device models and protocols.
///
/// A device model or inbound protocol declares the commands it supports via a
/// list of [CommandDefinition] entries, each describing a named command, the
/// sources it can be triggered from ([CommandDefinitionSource]), and its
/// payload shape as a list of [CommandPayloadDefinition] entries (which may
/// nest recursively for [CommandPayloadDataType.nested] payloads).
library;

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart' show ValueChanged;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/converters/converters.dart';

part 'commands.freezed.dart';
part 'commands.g.dart';

part 'src/command_definition.dart';
part 'src/command_definition_input.dart';
part 'src/command_definition_source.dart';
part 'src/command_payload_definition.dart';
part 'src/command_payload_definition_input.dart';
part 'src/command_payload_data_type.dart';
part 'src/decoders.dart';
