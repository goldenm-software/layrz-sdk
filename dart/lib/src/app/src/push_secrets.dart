part of '../app.dart';

/// Decrypted Firebase push notification credentials for a [RegisteredApp].
///
/// [PushSecrets] holds the Firebase project credentials required by
/// `layrz_push` to deliver push notifications for a specific platform
/// (iOS or Android). Set via [RegisteredApp.setPushSecrets] and exposed on
/// [RegisteredApp.iosPushSecrets] / [RegisteredApp.androidPushSecrets].
@freezed
abstract class PushSecrets with _$PushSecrets {
  /// Constructs an immutable [PushSecrets].
  const factory PushSecrets({
    /// The decrypted Firebase API key, or null when unset.
    String? apiKey,

    /// The decrypted Firebase app ID, or null when unset.
    String? appId,

    /// The decrypted Firebase project ID, or null when unset.
    String? projectId,

    /// The decrypted Firebase messaging sender ID, or null when unset.
    String? messagingSenderId,

    /// The decrypted Firebase storage bucket, or null when unset.
    String? storageBucket,
  }) = _PushSecrets;

  /// Deserializes a [PushSecrets] from a JSON map.
  factory PushSecrets.fromJson(Map<String, dynamic> json) => _$PushSecretsFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying push secrets fields.
  static GqlFragment get fragment =>
      GqlFragment(name: 'pushSecretsFragment', onType: 'PushSecrets')
        ..add(GqlField(name: 'apiKey'))
        ..add(GqlField(name: 'appId'))
        ..add(GqlField(name: 'projectId'))
        ..add(GqlField(name: 'messagingSenderId'))
        ..add(GqlField(name: 'storageBucket'));
  // coverage:ignore-end
}

/// Mutable input data for [PushSecrets], suitable for form binding.
///
/// [PushSecretsInput] mirrors [PushSecrets] but is mutable, for submitting
/// Firebase push notification credentials to the server.
@unfreezed
abstract class PushSecretsInput with _$PushSecretsInput {
  /// Constructs a mutable [PushSecretsInput].
  factory PushSecretsInput({
    /// The decrypted Firebase API key, or null when unset.
    String? apiKey,

    /// The decrypted Firebase app ID, or null when unset.
    String? appId,

    /// The decrypted Firebase project ID, or null when unset.
    String? projectId,

    /// The decrypted Firebase messaging sender ID, or null when unset.
    String? messagingSenderId,

    /// The decrypted Firebase storage bucket, or null when unset.
    String? storageBucket,
  }) = _PushSecretsInput;

  /// Deserializes a [PushSecretsInput] from a JSON map.
  factory PushSecretsInput.fromJson(Map<String, dynamic> json) => _$PushSecretsInputFromJson(json);
}
