/// User model and variants for the Layrz ecosystem.
///
/// [User] represents an authenticated platform user across every Layrz
/// product variant (see [UserVariant]) — standard, ATS, Brickhouse, SDM,
/// Tagon, and the various Mappit roles — with per-variant GraphQL query,
/// mutation, and fragment resolution built in. [UserInput] provides the
/// mutable counterpart used for creating or editing a user.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/a11y/a11y.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/app/app.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/external/external.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';
import 'package:layrz_sdk/src/billing_plan/billing_plan.dart';
import 'package:layrz_sdk/src/brickhouse_permission_tier/brickhouse_permission_tier.dart';
import 'package:layrz_sdk/src/category/category.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/custom_field/custom_field.dart';
import 'package:layrz_sdk/src/mfa/mfa.dart';
import 'package:layrz_sdk/src/mqtt/mqtt.dart';
import 'package:layrz_sdk/src/references/references.dart';
import 'package:layrz_sdk/src/tag/tag.dart';
import 'package:layrz_sdk/src/token/token.dart';

part 'users.freezed.dart';
part 'users.g.dart';

part 'src/brickhouse_roles.dart';
part 'src/password.dart';
part 'src/profile.dart';
part 'src/user.dart';
part 'src/variant.dart';
part 'src/user_input.dart';
