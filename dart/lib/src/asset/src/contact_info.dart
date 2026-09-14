part of '../asset.dart';

/// Immutable contact information associated with an [Asset].
@freezed
abstract class ContactInfo with _$ContactInfo {
  /// Constructs an immutable [ContactInfo].
  const factory ContactInfo({
    /// Name of the contact. Defaults to an empty string.
    @Default('') String name,

    /// Email of the contact. Defaults to an empty string.
    @Default('') String email,

    /// Phone number of the contact. Defaults to an empty string.
    @Default('') String phone,
  }) = _ContactInfo;

  /// Deserializes a [ContactInfo] from a JSON map.
  factory ContactInfo.fromJson(Map<String, dynamic> json) => _$ContactInfoFromJson(json);
}

/// Mutable input data for creating or updating a [ContactInfo].
@unfreezed
abstract class ContactInfoInput with _$ContactInfoInput {
  /// Constructs a mutable [ContactInfoInput].
  factory ContactInfoInput({
    /// Name of the contact. Defaults to an empty string.
    @Default('') String name,

    /// Email of the contact. Defaults to an empty string.
    @Default('') String email,

    /// Phone number of the contact. Defaults to an empty string.
    @Default('') String phone,
  }) = _ContactInfoInput;

  /// Deserializes a [ContactInfoInput] from a JSON map.
  factory ContactInfoInput.fromJson(Map<String, dynamic> json) => _$ContactInfoInputFromJson(json);
}
