/// Immutable department model for organizational structures in Layrz.
///
/// A department groups users and assigns them access permissions to specific
/// platform features. Use [DepartmentInput] for creating or updating departments.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/permissions/permissions.dart';

part 'department.freezed.dart';
part 'department.g.dart';

part 'src/department.dart';
part 'src/department_input.dart';
