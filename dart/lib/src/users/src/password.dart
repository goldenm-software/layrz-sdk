part of '../users.dart';

/// Mutable password input used to change a [User]'s password.
@unfreezed
abstract class PasswordInput with _$PasswordInput {
  /// Constructs a mutable [PasswordInput].
  factory PasswordInput({
    /// [currentPassword] is the current password of the user.
    @Default('') String currentPassword,

    /// [newPassword] is the new password to set.
    @Default('') String newPassword,

    /// [newPasswordConfirmation] is the confirmation of [newPassword].
    @Default('') String newPasswordConfirmation,
  }) = _PasswordInput;

  /// Deserializes a [PasswordInput] from a JSON map.
  factory PasswordInput.fromJson(Map<String, dynamic> json) =>
      _$PasswordInputFromJson(json);
}
