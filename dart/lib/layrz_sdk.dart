/// The Layrz SDK provides shared data models, enums, and utilities for the Layrz IoT platform.
///
/// This package exports core modules for working with the Layrz platform:
/// - [a11y] — Accessibility models: user preferences and colorblind mode support.
/// - [api] — API status codes and response structures.
/// - [app] — Application platform enum for identifying client platforms.
/// - [avatar] — Avatar utilities for managing user and resource images.
/// - [converters] — Custom JSON serialization converters.
/// - [department] — Department model for organizational structure.
/// - [employee] — Employee and employee input models for personnel management.
/// - [i18n] — Internationalization models: languages, translation keys, and messages.
/// - [mfa] — Multi-factor authentication models: MFA methods and passkeys.
/// - [permissions] — Generic permission models for access control.
/// - [time_of_day] — A framework-independent [TimeOfDay] class for time-of-day values.
/// - [token] — Authentication token models and token audience types.
/// - [utils] — Utility classes including [LayrzNumber] (base-36 encoding) and [ParamData]
///   (parameter updates with timestamps).
library;

export 'src/a11y/a11y.dart';
export 'src/api/api.dart';
export 'src/app/app.dart';
export 'src/avatar/avatar.dart';
export 'src/converters/converters.dart';
export 'src/department/department.dart';
export 'src/employee/employee.dart';
export 'src/i18n/i18n.dart';
export 'src/mfa/mfa.dart';
export 'src/permissions/permissions.dart';
export 'src/time_of_day/time_of_day.dart';
export 'src/token/token.dart';
export 'src/utils/utils.dart';
