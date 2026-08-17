part of '../token.dart';

/// Intended audience for a Layrz API token.
///
/// [TokenAudience] indicates the scope or use case for a token — whether it is
/// intended for direct API access or for session management. The server may
/// enforce different security or lifetime policies based on audience.
///
/// Each value is serialized to JSON as an uppercase string (e.g., `API`,
/// `SESSION`). Use [toJson] and [fromJson] to convert between enum and wire
/// format.
///
/// If deserialization encounters an unknown audience value, it defaults to
/// [session] (the most restrictive audience).
@JsonEnum(alwaysCreate: true)
enum TokenAudience {
  /// [api] - Token intended for direct API authentication. Such tokens are used
  /// to authorize GraphQL queries, mutations, and subscriptions directly against
  /// the Layrz API endpoint.
  @JsonValue('API')
  api,

  /// [session] - Token intended for session-based authentication (e.g., web
  /// session cookies, mobile app sessions). This is the default audience for
  /// tokens created without an explicit audience specification.
  @JsonValue('SESSION')
  session,
  ;

  /// Returns the JSON representation of this audience value (e.g., `API`,
  /// `SESSION`).
  @override
  String toString() => toJson();

  /// Converts this [TokenAudience] to its wire JSON string.
  ///
  /// Returns the @JsonValue annotation for this enum member (e.g., `'API'` for
  /// [api], `'SESSION'` for [session]). If the enum value is not found in the
  /// generated map (should never occur), defaults to `'SESSION'`.
  String toJson() => _$TokenAudienceEnumMap[this] ?? 'SESSION';

  /// Converts a JSON string to a [TokenAudience].
  ///
  /// Accepts both uppercase JSON values (e.g., `'API'`, `'SESSION'`) from the
  /// server wire format. If the input does not match any known audience, returns
  /// [session] as the fallback default (the most restrictive audience).
  ///
  /// This fallback behavior ensures forward compatibility: if the server
  /// introduces new audience values in the future, clients will safely default
  /// to session scope.
  static TokenAudience fromJson(String json) =>
      _$TokenAudienceEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ?? TokenAudience.session;
}
