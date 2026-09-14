/// Brickhouse permission tier model describing per-user access levels.
///
/// A [BHSPermissionTier] groups [User]s under a named tier with a numeric
/// [BHSPermissionTier.tierLevel] and an optional [BrickhouseBillingPeriod],
/// further scoped by a list of granted [Access] entries.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/users/users.dart';

part 'brickhouse_permission_tier.freezed.dart';
part 'brickhouse_permission_tier.g.dart';

part 'src/permission_tier.dart';
