/// Map layer and tile-source models for the Layrz mapping system.
///
/// A [MapLayer] describes a single configurable map background (raster
/// tiles, Google Maps, Mapbox, or HERE) that can be attached to an app. The
/// enums in this library ([MapSource], [GoogleMapLayer], [MapboxStyle], and
/// [HereStyle]) enumerate the providers and styles a [MapLayer] can select
/// from.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';

part 'map.freezed.dart';
part 'map.g.dart';

part 'src/layer.dart';
part 'src/map_source.dart';
part 'src/google_layer.dart';
part 'src/here_styles.dart';
part 'src/mapbox_style.dart';
