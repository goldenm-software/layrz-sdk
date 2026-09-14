part of '../users.dart';

/// Mutable profile input used to update the identity fields of a [User].
@unfreezed
abstract class ProfileInput with _$ProfileInput {
  /// Constructs a mutable [ProfileInput].
  factory ProfileInput({
    /// [name] is the display name of the user.
    @Default('') String name,

    /// [email] is the email address of the user.
    @Default('') String email,

    /// [username] is the username of the user.
    @Default('') String username,

    /// [dynamicAvatar] is the dynamic avatar configuration of the user.
    AvatarInput? dynamicAvatar,
  }) = _ProfileInput;

  /// Deserializes a [ProfileInput] from a JSON map.
  factory ProfileInput.fromJson(Map<String, dynamic> json) =>
      _$ProfileInputFromJson(json);
}
