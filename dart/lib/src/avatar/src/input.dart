part of '../avatar.dart';

/// Mutable avatar input model for creating or updating avatars in the Layrz platform.
///
/// Used in create/update mutations to provide new avatar data. Similar to [Avatar]
/// but mutable (unfreezed) and with a default [type] of [AvatarType.none].
/// Exactly one of [emoji], [icon], [url], or [base64] should be set, matching the [type].
@unfreezed
abstract class AvatarInput with _$AvatarInput {
  /// Constructs an [AvatarInput] for creating or updating an avatar.
  ///
  /// Defaults [type] to [AvatarType.none]. Exactly one of [emoji], [icon], [url],
  /// or [base64] should be set, depending on the [type].
  factory AvatarInput({
    /// Represents the type of avatarInput.
    @Default(AvatarType.none) AvatarType type,

    /// [emoji], [icon], [url] or [base64] depending on the [type].
    /// [emoji], [url] and [base64] are [String].
    /// And [icon] is [LayrzIcon].
    String? emoji,

    /// [emoji], [icon], [url] or [base64] depending on the [type].
    /// [emoji], [url] and [base64] are [String].
    /// And [icon] is [LayrzIcon].
    @IconOrNullConverter() LayrzIcon? icon,

    /// [emoji], [icon], [url] or [base64] depending on the [type].
    /// [emoji], [url] and [base64] are [String].
    /// And [icon] is [LayrzIcon].
    String? url,

    /// [emoji], [icon], [url] or [base64] depending on the [type].
    /// [emoji], [url] and [base64] are [String].
    /// And [icon] is [LayrzIcon].
    String? base64,
  }) = _AvatarInput;

  /// Deserializes an [AvatarInput] from a JSON map.
  factory AvatarInput.fromJson(Map<String, dynamic> json) => _$AvatarInputFromJson(json);
}
