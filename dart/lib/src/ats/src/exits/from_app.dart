part of '../../ats.dart';

/// The application that originated an ATS operation.
enum AtsFromApp {
  /// ATS web application.
  atsWeb,

  /// ATS mobile application.
  atsMobile,

  /// NFC reader.
  nfc;

  @override
  String toString() => toJson();

  /// Serializes this value to the raw string sent by the backend.
  String toJson() {
    switch (this) {
      case AtsFromApp.atsWeb:
        return 'ATSWEB';
      case AtsFromApp.atsMobile:
        return 'ATSMOBILE';
      case AtsFromApp.nfc:
        return 'NFC';
    }
  }

  /// Deserializes an [AtsFromApp] from the raw string sent by the backend.
  static AtsFromApp fromJson(String json) {
    switch (json) {
      case 'ATSWEB':
        return AtsFromApp.atsWeb;
      case 'ATSMOBILE':
        return AtsFromApp.atsMobile;
      case 'NFC':
        return AtsFromApp.nfc;
      default:
        throw Exception('Unknown FromApp');
    }
  }
}

/// A [JsonConverter] that converts between nullable [AtsFromApp] and nullable [String].
class AtsFromAppOrNullConverter implements JsonConverter<AtsFromApp?, String?> {
  /// Creates an [AtsFromAppOrNullConverter].
  const AtsFromAppOrNullConverter();

  @override
  AtsFromApp? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AtsFromApp.fromJson(json);
  }

  @override
  String? toJson(AtsFromApp? object) => object?.toJson();
}
