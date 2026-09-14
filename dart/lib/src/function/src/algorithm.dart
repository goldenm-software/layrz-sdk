part of '../function.dart';

/// Immutable definition of an algorithm that can drive a [LayrzFunction].
@freezed
abstract class Algorithm with _$Algorithm {
  /// Constructs an immutable [Algorithm].
  const factory Algorithm({
    /// Is the unique identifier of the algorithm.
    required String id,

    /// Is the name of the algorithm.
    required String name,

    /// Is the color assigned to the algorithm.
    @ColorConverter() required Color color,

    /// Is the icon assigned to the algorithm.
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// Indicates if the algorithm is enabled and available for use, or disabled and not
    /// available for use.
    required bool isEnabled,

    /// Is the list of category IDs the algorithm belongs to. Defaults to an empty list.
    @Default([]) List<String> categoriesIds,

    /// Indicates if the algorithm can be used in sensors. Defaults to `false`.
    @Default(false) bool canBeInSensors,

    /// Indicates if the algorithm supports HTTP. Defaults to `false`.
    @Default(false) bool hasHttp,

    /// Indicates if the algorithm supports FTP. Defaults to `false`.
    @Default(false) bool hasFtp,

    /// Is the list of required fields for the algorithm. Defaults to an empty list.
    @Default([]) List<CredentialField> requiredFields,

    /// Is the usage of the algorithm. This field should only be used to show the popularity of
    /// the algorithm, for marketing purposes.
    int? usage,
  }) = _Algorithm;

  /// Deserializes an [Algorithm] from a JSON map.
  factory Algorithm.fromJson(Map<String, dynamic> json) => _$AlgorithmFromJson(json);
}
