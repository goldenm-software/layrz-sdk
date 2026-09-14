/// Chart models for the Layrz platform.
///
/// [LayrzChart] represents a configured chart (formula- or script-driven, over
/// a set of sensors and/or assets) that can be rendered in dashboards and
/// reports. [ChartType], [ChartAlgorithm] and [ChartDataSource] classify its
/// presentation, computation engine, and telemetry source respectively.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';

part 'charts.freezed.dart';
part 'charts.g.dart';

part 'src/chart.dart';
part 'src/chart_input.dart';
part 'src/chart_type.dart';
part 'src/chart_algorithm.dart';
part 'src/chart_data_source.dart';
