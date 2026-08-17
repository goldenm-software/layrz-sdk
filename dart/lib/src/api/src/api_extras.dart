part of '../api.dart';

/// Configuration for Layrz API client metadata.
///
/// These settings are sent with every GraphQL request as HTTP headers
/// (`Graphql-Client-Version` and `Graphql-Client-Name`) to allow the API
/// to track usage, provide better analytics, and improve service reliability.
/// Set these values before creating a [LayrzConnector] instance.
class LayrzApiExtras {
  /// The version string of the application using the Layrz SDK.
  ///
  /// This value is included in the `Graphql-Client-Version` header on all
  /// API requests. Empty string is treated as unset; a warning will be logged
  /// by [LayrzConnector] if left empty.
  static String version = '';

  /// The name of the application using the Layrz SDK.
  ///
  /// This value is included in the `Graphql-Client-Name` header on all API
  /// requests. Empty string is treated as unset; a warning will be logged by
  /// [LayrzConnector] if left empty.
  static String name = '';
}
