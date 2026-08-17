part of '../api.dart';

/// Standardized response envelope for Layrz GraphQL API operations.
///
/// [ApiResponse] wraps the result of a GraphQL query or mutation with an
/// [ApiStatus] code and optional error details. It uses two type parameters:
///
/// - **[T]**: The type of the result payload on success. For a query
///   returning user data, [T] might be `User` or `Map<String, dynamic>`.
/// - **[Q]**: The type of the errors payload on failure. Typically
///   `Map<String, dynamic>` to hold server-sent error details.
///
/// The response can be constructed directly or deserialized from JSON via
/// [ApiResponse.fromJson] with custom deserializers for [T] and [Q].
@Freezed(genericArgumentFactories: true)
abstract class ApiResponse<T, Q> with _$ApiResponse<T, Q> {
  /// Constructs an [ApiResponse] with a status, optional errors, and optional
  /// result.
  ///
  /// - [status] indicates the outcome of the request (success, not found,
  ///   unauthorized, etc.).
  /// - [errors] holds error details if the request failed; typically omitted
  ///   or null on success.
  /// - [result] holds the operation result if the request succeeded; typically
  ///   omitted or null on failure.
  const factory ApiResponse({
    /// The status code of the API response (e.g., [ApiStatus.ok],
    /// [ApiStatus.unauthorized]).
    required ApiStatus status,

    /// Optional error payload, typically a map of error details from the
    /// server. Null on success.
    Q? errors,

    /// Optional result payload, containing the operation's data on success.
    /// Null on failure.
    T? result,
  }) = _ApiResponse;

  /// Deserializes an [ApiResponse] from a JSON map using custom deserializers
  /// for the result and errors types.
  ///
  /// - [json] is the deserialized JSON map from the server response.
  /// - [fromJsonT] is a function that converts the JSON result field to type
  ///   [T]; called only if a result is present.
  /// - [fromJsonQ] is a function that converts the JSON errors field to type
  ///   [Q]; called only if errors are present.
  ///
  /// Returns a new [ApiResponse] with types resolved.
  factory ApiResponse.fromJson(
    /// The JSON map to deserialize.
    Map<String, dynamic> json,

    /// A deserialization function for the result field of type [T]. Receives
    /// the raw JSON value and should return an instance of [T].
    T Function(Object?) fromJsonT,

    /// A deserialization function for the errors field of type [Q]. Receives
    /// the raw JSON value and should return an instance of [Q].
    Q Function(Object?) fromJsonQ,
  ) => _$ApiResponseFromJson(
    json,
    fromJsonT,
    fromJsonQ,
  );
}
