/// Point of interest (POI) models for the Layrz platform.
///
/// A [Poi] is a named location (latitude and longitude) with an icon that can be drawn on maps. This library
/// provides the immutable [Poi] read model with API callers to fetch and delete points of interest, and its
/// mutable counterpart [PoiInput] with a `save` caller to create or update them.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/icons/icons.dart';

part 'poi.freezed.dart';
part 'poi.g.dart';

part 'src/poi.dart';
part 'src/poi_input.dart';
