/// JSON converters for serializing and deserializing Dart types to/from JSON.
///
/// This library provides a collection of [JsonConverter] implementations for
/// converting common Dart types like [Color], [Duration], [DateTime], and
/// [RegExp] to and from their JSON representations. Converters come in two
/// variants: nullable (e.g., [ColorOrNullConverter]) and non-nullable
/// (e.g., [ColorConverter]).
library;

import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/icons/icons.dart';
import 'package:layrz_sdk/src/time_of_day/time_of_day.dart';
import 'package:layrz_sdk/src/utils/utils.dart';

part 'src/color.dart';
part 'src/duration.dart';
part 'src/icon.dart';
part 'src/timestamp.dart';
part 'src/time_of_day.dart';
part 'src/regex.dart';
part 'src/byte_list.dart';
part 'src/param_converter.dart';
part 'src/dynamic_map.dart';
