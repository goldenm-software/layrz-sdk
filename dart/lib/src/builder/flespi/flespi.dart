/// Flespi ACL structure definitions for inbound protocols.
///
/// Protocols that proxy through the Flespi platform declare the access control
/// list they grant for a generated Flespi token as a list of [FlespiAcl]
/// entries, each scoping the token to a [FlespiUri] resource and a set of
/// [FlespiAction]s, [FlespiMethod]s, and [FlespiSubmoduleConfig] entries.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/api/api.dart';

part 'flespi.freezed.dart';
part 'flespi.g.dart';

part 'src/flespi_acl.dart';
part 'src/flespi_submodule_config.dart';
part 'src/flespi_uri.dart';
part 'src/flespi_action.dart';
part 'src/flespi_method.dart';
part 'src/flespi_submodule.dart';
