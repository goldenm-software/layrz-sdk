/// Simulation cycle catalog for the Layrz platform.
///
/// A simulation cycle groups a script and its metadata used by protocols with
/// [OperationMode.simulation] to simulate movement, telemetry, and more via
/// the Layrz Cycle Scripting language.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';

part 'simulation.freezed.dart';
part 'simulation.g.dart';

part 'src/cycle.dart';
part 'src/cycle_input.dart';
