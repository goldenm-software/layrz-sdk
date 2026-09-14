part of '../asset.dart';

/// Immutable login information associated with an [Asset].
///
/// [AssetLoginInfo] indicates whether the asset can authenticate as a login-capable entity, and if
/// so, the credentials used to identify it.
@freezed
abstract class AssetLoginInfo with _$AssetLoginInfo {
  /// Constructs an immutable [AssetLoginInfo].
  const factory AssetLoginInfo({
    /// [enabled] is the login status of the asset.
    required bool enabled,

    /// [email] is the login email of the asset.
    String? email,

    /// [username] is the login username of the asset.
    String? username,
  }) = _AssetLoginInfo;

  /// Deserializes an [AssetLoginInfo] from a JSON map.
  factory AssetLoginInfo.fromJson(Map<String, dynamic> json) => _$AssetLoginInfoFromJson(json);
}

/// Mutable input data for creating or updating an [AssetLoginInfo].
@unfreezed
abstract class AssetLoginInfoInput with _$AssetLoginInfoInput {
  /// Constructs a mutable [AssetLoginInfoInput].
  factory AssetLoginInfoInput({
    /// [enabled] is the login status of the asset. Defaults to `false`.
    @Default(false) bool enabled,

    /// [email] is the login email of the asset.
    String? email,

    /// [username] is the login username of the asset.
    String? username,
  }) = _AssetLoginInfoInput;

  /// Deserializes an [AssetLoginInfoInput] from a JSON map.
  factory AssetLoginInfoInput.fromJson(Map<String, dynamic> json) => _$AssetLoginInfoInputFromJson(json);
}
