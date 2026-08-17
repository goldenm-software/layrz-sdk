/// Internationalization (i18n) models for managing translation keys and languages on the Layrz platform.
///
/// This module provides immutable and mutable data models for:
/// - [Language]: A translation language with completion progress
/// - [I18nKey]: A translation key with support for multiple [I18nTranslation]s across languages
/// - [I18nTranslation]: A translated message for a key in a specific language
/// - [I18nKeyHistory]: An immutable audit trail recording changes to keys
/// - [AvailableLanguage]: Metadata about languages supported by the Layrz platform
///
/// Each immutable model has a corresponding mutable `*Input` variant for creating or updating
/// entities via GraphQL mutations. Immutable types are annotated with `@freezed`, while
/// input variants use `@unfreezed` for mutability.
///
/// The domain relationships are:
/// - A [Language] represents a supported language (e.g., English, Spanish)
/// - An [I18nKey] is a translation identifier that can have multiple [I18nTranslation]s
/// - Each [I18nTranslation] links a key to a specific language and message
/// - [I18nKeyHistory] tracks changes to keys with audit data (who, when, before/after values)
/// - [AvailableLanguage] provides metadata and query operations for supported languages
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_i18n/layrz_i18n.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/employee/employee.dart';

// Freezed
part 'i18n.freezed.dart';
part 'i18n.g.dart';

part 'src/language.dart';
part 'src/key.dart';
part 'src/translation.dart';
part 'src/history.dart';
