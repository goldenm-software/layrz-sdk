part of '../function.dart';

/// Immutable FTP credentials used by a [LayrzFunction] to exchange files.
@freezed
abstract class FtpAccount with _$FtpAccount {
  /// Constructs an immutable [FtpAccount].
  const factory FtpAccount({
    /// Is the host of the FTP account.
    String? host,

    /// Is the port of the FTP account.
    int? port,

    /// Is the username of the FTP account.
    String? username,

    /// Is the password of the FTP account.
    String? password,
  }) = _FtpAccount;

  /// Deserializes an [FtpAccount] from a JSON map.
  factory FtpAccount.fromJson(Map<String, dynamic> json) => _$FtpAccountFromJson(json);
}
