part of '../operations.dart';

/// A single HTTP header sent by a webhook-type [Operation].
@freezed
abstract class HttpHeader with _$HttpHeader {
  /// Private constructor used by the code generator.
  const HttpHeader._();

  /// Constructs an immutable [HttpHeader].
  const factory HttpHeader({
    /// The name of the header (e.g., `Content-Type`).
    required String name,

    /// The value of the header.
    required String value,
  }) = _HttpHeader;

  /// Deserializes an [HttpHeader] from a JSON map.
  factory HttpHeader.fromJson(Map<String, dynamic> json) => _$HttpHeaderFromJson(json);
}

/// Mutable input data for an [HttpHeader], suitable for form binding.
@unfreezed
abstract class HttpHeaderInput with _$HttpHeaderInput {
  /// Private constructor used by the code generator.
  const HttpHeaderInput._();

  /// Constructs a mutable [HttpHeaderInput].
  factory HttpHeaderInput({
    /// The name of the header (e.g., `Content-Type`).
    @Default('') String name,

    /// The value of the header.
    @Default('') String value,
  }) = _HttpHeaderInput;

  /// Deserializes an [HttpHeaderInput] from a JSON map.
  factory HttpHeaderInput.fromJson(Map<String, dynamic> json) => _$HttpHeaderInputFromJson(json);
}
