part of '../function.dart';

/// Immutable definition of a configured integration function.
@freezed
abstract class LayrzFunction with _$LayrzFunction {
  /// Constructs an immutable [LayrzFunction].
  const factory LayrzFunction({
    /// Is the unique identifier of the function.
    required String id,

    /// Is the name of the function.
    required String name,

    /// Is the unique identifier of the algorithm.
    String? algorithmId,

    /// Is the algorithm of the function.
    Algorithm? algorithm,

    /// Is the minimum time of the function, defined in minutes.
    double? maximumTime,

    /// Is the minutes delta of the function, defined in minutes.
    double? minutesDelta,

    /// Is the external identifiers of the function.
    List<String>? externalIdentifiers,

    /// Is the token of the function.
    String? token,

    /// Is the credentials of the function.
    Map<String, dynamic>? credentials,

    /// Is the FTP account of the function.
    FtpAccount? ftp,

    /// Is the group (tag) IDs of the function.
    List<String>? groupsIds,

    /// Is the groups (tags) of the function.
    List<Tag>? groups,

    /// Is the asset IDs of the function.
    List<String>? assetsIds,

    /// Is the assets of the function.
    List<Asset>? assets,

    /// Is the access of the function.
    List<Access>? access,
  }) = _LayrzFunction;

  /// Deserializes a [LayrzFunction] from a JSON map.
  factory LayrzFunction.fromJson(Map<String, dynamic> json) => _$LayrzFunctionFromJson(json);
}
