part of '../general.dart';

/// Mutable input data for a phone number, suitable for form binding.
///
/// [PhoneNumberInput] mirrors [PhoneNumber] but is mutable and provides
/// default empty-string values for both fields.
@unfreezed
abstract class PhoneNumberInput with _$PhoneNumberInput {
  /// Private constructor used by the code generator.
  const PhoneNumberInput._();

  /// Constructs a mutable [PhoneNumberInput].
  factory PhoneNumberInput({
    /// [countryCode] is the international dialing country code.
    @Default('') String countryCode,

    /// [phoneNumber] is the local phone number digits, without the country code.
    @Default('') String phoneNumber,
  }) = _PhoneNumberInput;

  /// Deserializes a [PhoneNumberInput] from a JSON map.
  factory PhoneNumberInput.fromJson(Map<String, dynamic> json) => _$PhoneNumberInputFromJson(json);
}
