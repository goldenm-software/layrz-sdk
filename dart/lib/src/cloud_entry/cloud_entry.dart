/// Cloud storage entry model for the Layrz platform.
///
/// [CloudEntry] represents a single entry (folder or file) within the Layrz
/// cloud storage tree. [CloudEntryType] classifies the entry, and
/// [CloudEntryTypeConverter] handles its JSON (de)serialization.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/converters/converters.dart';

part 'cloud_entry.freezed.dart';
part 'cloud_entry.g.dart';

part 'src/cloud_entry.dart';
part 'src/cloud_entry_type.dart';
