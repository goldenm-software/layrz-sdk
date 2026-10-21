/// Scripting models and callers for the Layrz platform.
///
/// Provides the [Scripting] callers to lint and run LCL formulas and Python scripts, [LintError] describing a
/// problem found while linting, and the [PythonScope] and [PythonSource] enums that qualify where a Python script
/// runs and which kind of data it receives.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';

part 'scripting.freezed.dart';
part 'scripting.g.dart';

part 'src/lint_error.dart';
part 'src/python_scope.dart';
part 'src/python_source.dart';
part 'src/scripting.dart';
