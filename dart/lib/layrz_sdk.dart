/// The Layrz SDK provides shared data models, enums, and utilities for the Layrz IoT platform.
///
/// This package exports core modules for working with the Layrz platform:
/// - [a11y] — Accessibility models: user preferences and colorblind mode support.
/// - [account_launcher] — Input models for the account launcher wizard templates.
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
/// - [flespi] — Flespi platform models: protocols, channels, and device models.
/// - [i18n] — Internationalization models: languages, translation keys, and messages.
/// - [icons] — Material Design Icons registry with name-based lookup.
/// - [inbound] — Inbound protocol definitions: connection, credentials, and configuration structures.
/// - [link_shortcut] — Link shortcut and link shortcut input models for short, redirecting URLs.
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
export 'src/access/access.dart';
export 'src/account_launcher/account_launcher.dart';
export 'src/actions/actions.dart';
export 'src/api/api.dart';
export 'src/app/app.dart';
export 'src/asset/asset.dart';
export 'src/ats/ats.dart';
export 'src/avatar/avatar.dart';
export 'src/billing_plan/billing_plan.dart';
export 'src/brickhouse_permission_tier/brickhouse_permission_tier.dart';
export 'src/builder/flespi/flespi.dart';
export 'src/builder/inbound_structure/inbound_structure.dart';
export 'src/builder/webhook/webhook.dart';
export 'src/care_protocols/care_protocols.dart';
export 'src/case/case.dart';
export 'src/category/category.dart';
export 'src/charts/charts.dart';
export 'src/checkpoint/checkpoint.dart';
export 'src/cloud_entry/cloud_entry.dart';
export 'src/commands/commands.dart';
export 'src/concierge/concierge.dart';
export 'src/converters/converters.dart';
export 'src/credential_fields/credential_fields.dart';
export 'src/custom_field/custom_field.dart';
export 'src/department/department.dart';
export 'src/device/device.dart';
export 'src/employee/employee.dart';
export 'src/exchange/exchange.dart';
export 'src/external/external.dart';
export 'src/flespi/flespi.dart';
export 'src/function/function.dart';
export 'src/general/general.dart';
export 'src/geofences/geofences.dart';
export 'src/i18n/i18n.dart';
export 'src/icons/icons.dart';
export 'src/inbound/inbound.dart';
export 'src/link_shortcut/link_shortcut.dart';
export 'src/map/map.dart';
export 'src/mappit/mappit.dart';
export 'src/mfa/mfa.dart';
export 'src/modbus/modbus.dart';
export 'src/model/model.dart';
export 'src/mqtt/mqtt.dart';
export 'src/operations/operations.dart';
export 'src/outbound/outbound.dart';
export 'src/permissions/permissions.dart';
export 'src/presets/presets.dart';
export 'src/realtime/realtime.dart';
export 'src/references/references.dart';
export 'src/report_template/report_template.dart';
export 'src/sensors/sensors.dart';
export 'src/simulation/simulation.dart';
export 'src/tag/tag.dart';
export 'src/time_of_day/time_of_day.dart';
export 'src/token/token.dart';
export 'src/triggers/triggers.dart';
export 'src/users/users.dart';
export 'src/utils/utils.dart';
export 'src/vision_profile/vision_profile.dart';
export 'src/workspace/workspace.dart';
export 'src/zigbee/zigbee.dart';
