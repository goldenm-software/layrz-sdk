/// Concierge form models for the Layrz platform.
///
/// A concierge form ([ConciergeForm]) is a dynamic questionnaire made of [ConciergeFormPage]s,
/// each holding an ordered list of [ConciergeFormBlock]s (fields, headers, paragraphs,
/// separators, and so on). This library provides the read models and their mutable input
/// counterparts used to build and submit concierge forms, along with the
/// [ConciergeFormBlockType], [ConciergeFormDisplayConditionValidator] and
/// [ConciergeFormDisplayConditionOperator] enumerations that classify a block and its display
/// condition.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'concierge.freezed.dart';
part 'concierge.g.dart';

part 'src/block.dart';
part 'src/form.dart';
part 'src/page.dart';
part 'src/config.dart';
part 'src/validator.dart';
part 'src/condition.dart';

part 'src/enums/block_type.dart';
part 'src/enums/display_condition_operator.dart';
part 'src/enums/display_condition_validator.dart';
