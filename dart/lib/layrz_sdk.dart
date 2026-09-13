/// The Layrz SDK provides shared data models, enums, and utilities for the Layrz IoT platform.
///
/// This package exports core modules for working with the Layrz platform:
/// - [a11y] — Accessibility models: user preferences and colorblind mode support.
/// - [api] — API status codes and response structures.
/// - [app] — Application platform enum for identifying client platforms.
/// - [avatar] — Avatar utilities for managing user and resource images.
/// - [builder/flespi] — Flespi ACL structure definitions for inbound protocols.
/// - [builder/webhook] — Webhook structure definitions for inbound protocols.
/// - [commands] — Command structure definitions for device models and protocols.
/// - [converters] — Custom JSON serialization converters.
/// - [credential_fields] — Credential field structure definitions for inbound protocols.
/// - [department] — Department model for organizational structure.
/// - [employee] — Employee and employee input models for personnel management.
/// - [i18n] — Internationalization models: languages, translation keys, and messages.
/// - [icons] — Material Design Icons registry with name-based lookup.
/// - [inbound] — Inbound protocol definitions: connection, credentials, and configuration structures.
/// - [mfa] — Multi-factor authentication models: MFA methods and passkeys.
/// - [model] — Device model catalog: [Model], [HwModel], firmware, and Zigbee parameters.
/// - [permissions] — Generic permission models for access control.
/// - [realtime] — Typed envelope for realtime/websocket messages.
/// - [simulation] — Simulation cycle catalog for the Layrz Cycle Scripting language.
/// - [time_of_day] — A framework-independent [TimeOfDay] class for time-of-day values.
/// - [token] — Authentication token models and token audience types.
/// - [utils] — Utility classes including [LayrzNumber] (base-36 encoding) and [ParamData]
///   (parameter updates with timestamps).
library;

export 'src/a11y/a11y.dart';
export 'src/api/api.dart';
export 'src/app/app.dart';
export 'src/avatar/avatar.dart';
export 'src/builder/flespi/flespi.dart';
export 'src/builder/webhook/webhook.dart';
export 'src/category/category.dart';
export 'src/commands/commands.dart';
export 'src/converters/converters.dart';
export 'src/credential_fields/credential_fields.dart';
export 'src/department/department.dart';
export 'src/employee/employee.dart';
export 'src/i18n/i18n.dart';
export 'src/icons/icons.dart';
export 'src/inbound/inbound.dart';
export 'src/mfa/mfa.dart';
export 'src/model/model.dart';
export 'src/permissions/permissions.dart';
export 'src/realtime/realtime.dart';
export 'src/simulation/simulation.dart';
export 'src/time_of_day/time_of_day.dart';
export 'src/token/token.dart';
export 'src/utils/utils.dart';
