/// Immutable link shortcut model for short, redirecting URLs in Layrz.
///
/// A link shortcut maps a short [LinkShortcut.code] to a longer destination URL
/// ([LinkShortcut.redirectTo]), optionally attributed to the [Employee] who created it.
/// Use [LinkShortcutInput] for creating or updating link shortcuts.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/employee/employee.dart';

part 'link_shortcut.freezed.dart';
part 'link_shortcut.g.dart';

part 'src/link_shortcut.dart';
part 'src/link_shortcut_input.dart';
