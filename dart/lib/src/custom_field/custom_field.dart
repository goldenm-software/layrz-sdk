/// Custom field model for attaching arbitrary named values to Layrz entities.
///
/// A [CustomField] is a simple name/value pair that can be attached to
/// references, users, and other entities to store extra data not covered by
/// the entity's own fields. Use [CustomFieldInput] for creating or updating
/// custom fields as part of a parent entity's mutation payload.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/converters/converters.dart';

part 'custom_field.freezed.dart';
part 'custom_field.g.dart';

part 'src/custom_field.dart';
part 'src/custom_field_input.dart';
