/// Access permission model for entity-level grants in Layrz.
///
/// An [Access] record grants a [User] read/write/manage permissions over an
/// entity within an [AccessModule]. Use [AccessInput] for creating, updating,
/// or deleting access grants.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/users/users.dart';

part 'access.freezed.dart';
part 'access.g.dart';

part 'src/access_module.dart';
part 'src/access.dart';
part 'src/access_input.dart';
