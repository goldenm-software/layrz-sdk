/// Permission models for controlling access to Layrz platform modules.
///
/// Permissions in Layrz are organized around 12 distinct modules (apps, users,
/// firmwares, employees, languages, categories, departments, protocols,
/// billing, cycles, shortcuts, layers). Each module has fine-grained access
/// control via [GenericPermissionItem], which tracks seven permission types:
/// read, write, create, delete, plan, loginas, and suspend.
///
/// Use immutable [GenericPermission] and [GenericPermissionItem] for querying
/// permissions; use mutable [GenericPermissionInput] and
/// [GenericPermissionItemInput] for creating or updating permissions.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/api/api.dart';

part 'permissions.freezed.dart';
part 'permissions.g.dart';

part 'src/item.dart';
part 'src/item_input.dart';
part 'src/permission.dart';
part 'src/permission_input.dart';
