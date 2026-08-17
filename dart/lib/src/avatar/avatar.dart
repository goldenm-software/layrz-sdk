/// Avatar representation types and input models for Layrz platform entities.
///
/// This library provides [Avatar] for immutable avatar data with support for
/// multiple formats (emoji, icon, URL, or base64-encoded image), [AvatarInput]
/// for mutable avatar input during creation/updates, and [AvatarType] enum to
/// classify the avatar format. Each avatar type carries different data:
/// [AvatarType.emoji] uses a [String] emoji, [AvatarType.icon] uses a [LayrzIcon],
/// [AvatarType.url] uses a [String] URL, and [AvatarType.base64] uses a [String]
/// base64-encoded image.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_icons/layrz_icons.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/converters/converters.dart';

part 'avatar.freezed.dart';
part 'avatar.g.dart';

part 'src/avatar.dart';
part 'src/input.dart';
part 'src/type.dart';
