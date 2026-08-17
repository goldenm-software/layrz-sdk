part of '../api.dart';

/// A tuple-based response type for GraphQL operations.
///
/// [StandardResponse] represents the result of a GraphQL query or mutation as
/// a three-element tuple:
///
/// - **Positional 0** ([ApiStatus]): The operation's status code.
/// - **Positional 1** (error map): Optional map of error details, or null if
///   successful.
/// - **Positional 2** (result): Optional result payload of type [T], or null
///   if the operation failed.
///
/// This type provides a lightweight alternative to [ApiResponse] for use cases
/// where pattern matching on the tuple is preferred over named fields.
typedef StandardResponse<T> = (ApiStatus, Map<String, dynamic>?, T?);
