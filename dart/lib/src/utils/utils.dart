/// Utility classes for numeric conversion and parameter data handling.
///
/// This library provides utilities for working with Layrz platform data:
/// - [LayrzNumber] — Base-36 numeric system for compact representation of large numbers.
/// - [ParamData] — Representation of a parameter update with a value and timestamp.
library;

import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/converters/converters.dart';

part 'utils.freezed.dart';
part 'utils.g.dart';

part 'src/layrz_number.dart';
part 'src/param_data.dart';
