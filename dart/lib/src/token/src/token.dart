part of '../token.dart';

/// A Layrz API authentication token with lifecycle information.
///
/// [Token] represents an opaque token issued by the Layrz API, valid for
/// authenticating subsequent requests via [LayrzConnector]. Each token may have
/// an expiration time ([validBefore]), an issue time ([issuedAt]), and an
/// intended audience ([audience]).
///
/// Tokens are created via the [create] factory method and can be revoked via
/// the [expire] method. All tokens for the authenticated user can be fetched
/// via [fetchAll].
///
/// **Security**: Token values must never be logged, printed, or persisted in
/// plaintext. Keep token strings confidential during storage and transmission.
@freezed
abstract class Token with _$Token {
  /// Private constructor used by the code generator.
  const Token._();

  /// Creates a new Token instance.
  ///
  /// The [token] field is required and contains the opaque authentication string.
  /// Optional fields [id], [validBefore], [issuedAt], and [audience] provide
  /// lifecycle metadata. Timestamps are converted from Unix seconds (or null).
  const factory Token({
    /// Unique identifier for the token (typically a UUID or similar).
    String? id,

    /// The opaque token string used for authentication.
    /// **Security**: Keep this value confidential; never log or persist it in plaintext.
    required String token,

    /// The date and time (UTC) until which this token is valid.
    /// Null indicates the token does not expire.
    @TimestampOrNullConverter() DateTime? validBefore,

    /// The date and time (UTC) when this token was issued.
    /// Null if not tracked by the server.
    @TimestampOrNullConverter() DateTime? issuedAt,

    /// The intended audience for this token (e.g., [TokenAudience.api] or
    /// [TokenAudience.session]).
    TokenAudience? audience,
  }) = _Token;

  /// Deserializes a [Token] from a JSON map.
  ///
  /// Expects camelCase keys matching the factory constructor parameters
  /// (e.g., `validBefore`, `issuedAt`). Timestamps are decoded from Unix
  /// seconds (or null).
  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  // coverage:ignore-start
  /// Fetches all tokens issued to and currently valid for the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`fetchTokens`) to retrieve all tokens
  /// for the user identified by [apiToken]. The server response includes token
  /// metadata (ID, issue time, expiration, audience) but not the token values
  /// themselves for security.
  ///
  /// The [onResponse] callback, if provided, is invoked with the [ApiStatus]
  /// response code as a JSON string (e.g., `'OK'`, `'INTERNAL_ERROR'`). This
  /// allows the caller to observe success or error states without relying on
  /// the return value alone.
  ///
  /// Returns an empty list on any error (network failure, authentication failure,
  /// or server error). Errors are logged internally; see the app logger for
  /// diagnostic details.
  ///
  /// Throws: No exceptions are thrown; errors return empty list.
  static Future<List<Token>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API. This token identifies the user whose tokens are
    /// being fetched.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] response code as a JSON
    /// string. Called once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.perform(
        GqlQuery(
          variables: [
            GqlVariable(name: 'apiToken', type: .string, isRequired: true, value: apiToken),
          ],
          name: 'fetchTokens',
        )..add(
          GqlField(name: 'tokens', args: {'apiToken': 'apiToken'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: gqlFragment)),
        ),
      );

      final data = response.data;
      if (data == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/Token/fetchAll(): No response from server");
        return [];
      }

      final result = data['data']['tokens'];
      if (result == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/Token/fetchAll(): No result from server");
        return [];
      }

      final status = ApiStatus.fromJson(result['status']);
      if (status != ApiStatus.ok) {
        onResponse?.call(status.toJson());
        return [];
      }

      return (result['result'] as List<dynamic>?)
              ?.map((e) => Token.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [];
    } catch (e, stack) {
      Log.critical("layrz_models/Token/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Revokes this token immediately, invalidating it for all future use.
  ///
  /// Sends an authenticated GraphQL mutation (`expireToken`) to the server,
  /// requesting immediate revocation of this token (identified by the [token]
  /// string). Once revoked, any attempt to use this token for authentication
  /// will be rejected with an [ApiStatus.tokenExpired] or [ApiStatus.unauthorized]
  /// response.
  ///
  /// The [onResponse] callback, if provided, is invoked with the [ApiStatus]
  /// response code as a JSON string. This allows the caller to observe success
  /// or error states.
  ///
  /// Returns `true` if the server confirmed the token was expired; `false` on
  /// any error (network failure, server error, or non-[ApiStatus.ok] response).
  /// Errors are logged internally.
  ///
  /// **Note**: This is an instance method; call it on the specific token
  /// instance to be revoked.
  ///
  /// Throws: No exceptions are thrown; errors return `false`.
  Future<bool> expire({
    /// The API token for authentication. This identifies the user performing
    /// the revocation. Obtain via the `login` mutation.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] response code as a JSON
    /// string. Called once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);

    try {
      final response = await connector.perform(
        GqlMutation(
          variables: [
            GqlVariable(name: 'apiToken', type: .string, isRequired: true, value: apiToken),
            GqlVariable(name: 'tokenToExpire', type: .string, isRequired: true, value: token),
          ],
          name: 'expireToken',
        )..add(
          GqlField(name: 'expireToken', args: {'apiToken': 'apiToken', 'tokenToExpire': 'tokenToExpire'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      final data = response.data;
      if (data == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/Token/expire(): No response from server");
        return false;
      }

      final result = data['data']['expireToken'];
      if (result == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/Token/expire(): No result from server");
        return false;
      }

      final status = ApiStatus.fromJson(result['status']);
      if (status != ApiStatus.ok) {
        onResponse?.call(status.toJson());
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_models/Token/expire(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Creates a new token with an optional expiration duration.
  ///
  /// Sends an authenticated GraphQL mutation (`createToken`) to issue a new token
  /// for the authenticated user. If [duration] is provided, the token will expire
  /// after that duration. If [duration] is `null`, the token will not expire
  /// (infinite lifetime).
  ///
  /// The [onResponse] callback, if provided, is invoked with the [ApiStatus]
  /// response code as a JSON string. This allows the caller to observe success
  /// or error states.
  ///
  /// Returns the newly created [Token] (including its ID, token value, issued time,
  /// and expiration time) on success, or `null` on any error (network failure,
  /// server error, or non-[ApiStatus.ok] response). Errors are logged internally.
  ///
  /// The returned token's [validBefore] field indicates the expiration time
  /// (or `null` if the token does not expire). The [issuedAt] field contains
  /// the server's current timestamp at creation time.
  ///
  /// Throws: No exceptions are thrown; errors return `null`.
  static Future<Token?> create({
    /// The API token for authentication. This identifies the user for whom the
    /// new token is created. Obtain via the `login` mutation.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// The validity duration for the new token. If `null`, the token will not
    /// expire. If non-null (e.g., `Duration(days: 30)`), the server will set
    /// [validBefore] to approximately [duration] from the current server time.
    required Duration? duration,

    /// Optional callback invoked with the [ApiStatus] response code as a JSON
    /// string. Called once per invocation, regardless of success or failure.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);

    try {
      final response = await connector.perform(
        GqlMutation(
          variables: [
            GqlVariable(name: 'apiToken', type: .string, isRequired: true, value: apiToken),
            GqlVariable(name: 'duration', type: .duration, value: duration?.inSeconds),
          ],
          name: 'createToken',
        )..add(
          GqlField(name: 'createToken', args: {'apiToken': 'apiToken', 'duration': 'duration'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: gqlFragment)),
        ),
      );

      final data = response.data;
      if (data == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/Token/createUsingDuration(): No response from server");
        return null;
      }

      final result = data['data']['createToken'];
      if (result == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/Token/createUsingDuration(): No result from server");
        return null;
      }

      final status = ApiStatus.fromJson(result['status']);
      if (status != ApiStatus.ok) {
        onResponse?.call(status.toJson());
        return null;
      }

      return Token.fromJson(result['result']);
    } catch (e, stack) {
      Log.critical("layrz_models/Token/createUsingDuration(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  /// GraphQL fragment selecting all token fields for API responses.
  ///
  /// This fragment defines the complete field selection for a [Token] when used
  /// in GraphQL queries or mutations. It includes:
  /// - `id` — the unique identifier
  /// - `token` — the opaque token string
  /// - `validBefore` — expiration timestamp (nullable)
  /// - `issuedAt` — issue timestamp (nullable)
  /// - `audience` — intended audience (nullable)
  ///
  /// This fragment is automatically used by [fetchAll], [create], and similar
  /// methods to ensure all token fields are populated from the GraphQL response.
  /// It is exposed publicly in case callers need to compose custom GraphQL
  /// queries involving tokens.
  static GqlFragment get gqlFragment => GqlFragment(name: 'tokenFragment', onType: 'Token')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'token'))
    ..add(GqlField(name: 'validBefore'))
    ..add(GqlField(name: 'issuedAt'))
    ..add(GqlField(name: 'audience'));
}
