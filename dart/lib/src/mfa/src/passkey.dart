part of '../mfa.dart';

/// Immutable representation of a WebAuthn/FIDO2 passkey credential registered
/// on a user account.
///
/// [Passkey] stores metadata about a cryptographic credential that can be used
/// for passwordless authentication. It includes the credential's unique
/// identifier, the app/origin it was registered with, and the platform
/// (device type) on which it is stored.
@freezed
abstract class Passkey with _$Passkey {
  /// Constructs an immutable [Passkey] with required credential metadata.
  ///
  /// All fields are required. The [id] is the credential's unique identifier,
  /// [appId] is the Relying Party identifier (origin), and [platform]
  /// indicates where the credential is stored.
  factory Passkey({
    /// The unique credential identifier, used to reference this passkey during
    /// authentication.
    required String id,

    /// The Relying Party identifier (origin/app domain) for which this
    /// credential was registered.
    required String appId,

    /// The [AppPlatform] on which this passkey is stored (e.g., [AppPlatform.ios],
    /// [AppPlatform.android], [AppPlatform.macos]).
    required AppPlatform platform,
  }) = _Passkey;

  /// Deserializes a [Passkey] from a JSON map.
  factory Passkey.fromJson(Map<String, dynamic> json) => _$PasskeyFromJson(json);
}
