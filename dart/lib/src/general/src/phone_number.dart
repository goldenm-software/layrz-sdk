part of '../general.dart';

/// Immutable phone number value composed of a country code and local number.
///
/// [PhoneNumber] pairs an international dialing [countryCode] with the local
/// [phoneNumber] digits.
@freezed
abstract class PhoneNumber with _$PhoneNumber {
  /// Private constructor used by the code generator.
  const PhoneNumber._();

  /// Constructs an immutable [PhoneNumber].
  const factory PhoneNumber({
    /// The international dialing country code (e.g., `+1`).
    required String countryCode,

    /// The local phone number digits, without the country code.
    required String phoneNumber,
  }) = _PhoneNumber;

  /// Deserializes a [PhoneNumber] from a JSON map.
  factory PhoneNumber.fromJson(Map<String, String> json) => _$PhoneNumberFromJson(json);
}
