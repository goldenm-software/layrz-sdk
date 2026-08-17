/// Accessibility (a11y) module for Layrz SDK.
///
/// This module defines user accessibility preferences including timezone
/// configuration, date/time formatting, and colorblind mode support.
/// [UserPreferences] represents an immutable view of user preferences,
/// while [UserPreferencesInput] provides a mutable variant for mutations.
/// [ColorblindMode] enumerates color vision deficiency simulation modes.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'a11y.freezed.dart';
part 'a11y.g.dart';

part 'src/user_preferences.dart';
part 'src/user_preferences_input.dart';
part 'src/colorblind_mode.dart';
