/// Reference model for identifying drivers, clients, and other entities
/// universally across Layrz apps.
///
/// A [Reference] is a named, categorized identifier (see [ReferenceCategory])
/// that can carry [CustomField]s and a QR code, and is queried/mutated
/// differently per [ReferenceVariant] (standard, Mappit, SDM). Use
/// [ReferenceInput] for creating or updating references.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/custom_field/custom_field.dart';

part 'references.freezed.dart';
part 'references.g.dart';

part 'src/reference.dart';
part 'src/category.dart';
part 'src/variant.dart';
