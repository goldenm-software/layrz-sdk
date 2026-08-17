/// Employee representation and input models for Layrz platform user management.
///
/// This module defines the [Employee] model, which represents an authenticated user
/// in the Layrz system, and [EmployeeInput] for mutations. [Employee] is the most
/// cross-connected model in the SDK, aggregating:
/// - Access control via [GenericPermission] (system-assigned) and custom permissions
/// - Multi-factor authentication state ([mfaEnabled], [mfaMethods], [passkeys])
/// - User profile ([Department], [Avatar], [Token])
/// - User preferences ([UserPreferences])
/// - Security credentials ([Passkey])
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/a11y/a11y.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/avatar/avatar.dart';
import 'package:layrz_sdk/src/department/department.dart';
import 'package:layrz_sdk/src/mfa/mfa.dart';
import 'package:layrz_sdk/src/permissions/permissions.dart';
import 'package:layrz_sdk/src/token/token.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

part 'src/employee.dart';
part 'src/input.dart';
