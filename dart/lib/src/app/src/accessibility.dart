part of '../app.dart';

/// Immutable accessibility status of a [RegisteredApp] instance.
@freezed
abstract class AppAccessibility with _$AppAccessibility {
  /// Constructs an immutable [AppAccessibility].
  const factory AppAccessibility({
    /// [host] is the host name where the app instance is reachable.
    required String host,

    /// [isDeployed] indicates if the app instance has been deployed.
    required bool isDeployed,

    /// [isSuspended] indicates if the app instance is currently suspended.
    required bool isSuspended,
  }) = _AppAccessibility;

  /// Deserializes an [AppAccessibility] from a JSON map.
  factory AppAccessibility.fromJson(Map<String, dynamic> json) =>
      _$AppAccessibilityFromJson(json);
}
