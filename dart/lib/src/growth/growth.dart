/// Growth models for the Layrz platform home metrics.
///
/// This module provides immutable data models and API callers for:
/// - [GrowthSummary]: Global totals, top accounts, and accumulated monthly growth
/// - [GrowthItem]: Accumulated totals for a single month, real or predicted
/// - [DailyGrowthItem]: Accumulated totals for a single day of a user
/// - [AccountGrowth]: Monthly growth of a single top-level account
/// - [TopAccount]: Reference to a top-level account
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/converters/converters.dart';

// Freezed
part 'growth.freezed.dart';
part 'growth.g.dart';

part 'src/daily_growth_item.dart';
part 'src/growth_item.dart';
part 'src/growth_summary.dart';
part 'src/account_growth.dart';
part 'src/top_account.dart';
