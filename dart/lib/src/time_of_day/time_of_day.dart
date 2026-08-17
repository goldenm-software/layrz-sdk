/// A framework-independent representation of a time of day, with JSON serialization support.
///
/// This library provides [TimeOfDay], a JSON-serializable class for representing
/// times of day (hour and minute) independent of any UI framework. Unlike Flutter's
/// `TimeOfDay` from `package:flutter/material.dart`, this implementation is framework-agnostic
/// and designed for cross-platform compatibility in Layrz SDK.
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_of_day.freezed.dart';
part 'time_of_day.g.dart';

part 'src/time_of_day.dart';
