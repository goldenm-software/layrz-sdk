part of '../mfa.dart';

/// Mutable input model for MFA method selection and token submission in
/// mutations.
///
/// [MfaInput] is used in mutations to specify which MFA method to use and to
/// submit MFA verification tokens. Unlike immutable models in this SDK, fields
/// are mutable for convenient form handling.
@unfreezed
abstract class MfaInput with _$MfaInput {
  /// Constructs a mutable [MfaInput] for MFA selection and verification
  /// mutations.
  ///
  /// The [isRequesting] field defaults to false. The [method] and [token] are
  /// optional and should be populated based on the MFA flow (e.g., TOTP,
  /// PASSKEY, BACKUP_CODE).
  factory MfaInput({
    /// The [MfaMethod] selected by the user, or null if not yet selected.
    MfaMethod? method,

    /// The MFA verification token (e.g., a 6-digit TOTP code or backup code),
    /// or null if not submitted.
    String? token,

    /// Flag indicating whether an MFA request is currently in progress.
    /// Defaults to false.
    @Default(false) bool isRequesting,
  }) = _MfaInput;

  /// Deserializes an [MfaInput] from a JSON map.
  factory MfaInput.fromJson(Map<String, dynamic> json) => _$MfaInputFromJson(json);
}
