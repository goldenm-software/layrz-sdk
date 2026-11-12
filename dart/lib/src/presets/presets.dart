/// Preset model for the Layrz case management pipeline.
///
/// [Preset] is a reusable, time-bounded set of [Trigger]s that can be applied to a case, along
/// with a default comment to attach when it is applied.
///
/// [Preset] exposes API callers to fetch and delete presets, and [PresetInput] is its mutable
/// counterpart with a `save` caller to create or update them.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/triggers/triggers.dart';

part 'presets.freezed.dart';
part 'presets.g.dart';

part 'src/preset.dart';
part 'src/preset_input.dart';
