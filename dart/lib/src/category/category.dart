/// Immutable category model for classifying entities in Layrz.
///
/// A category groups assets, apps, users, services, functions, or devices under
/// a named classification, optionally further qualified by [AssetKind] when the
/// category applies to connected/disconnected assets. Use [CategoryInput] for
/// creating or updating categories.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';

part 'category.freezed.dart';
part 'category.g.dart';

part 'src/category.dart';
part 'src/category_input.dart';
