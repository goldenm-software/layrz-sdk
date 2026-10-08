part of '../../ats.dart';

/// The kind of an ATS reception.
enum AtsReceptionType {
  /// Reception at a supply point.
  pa,

  /// Reception at a terminal.
  terminal,

  /// Reception stored by a third party.
  thirdParty,

  /// Reception transferred to another asset.
  transfer,

  /// Read-only fallback; the API does not accept it as input.
  unknown;

  @override
  String toString() => toJson();

  /// Serializes this value to the raw string sent by the backend.
  String toJson() {
    switch (this) {
      case AtsReceptionType.pa:
        return 'PA';
      case AtsReceptionType.terminal:
        return 'TERMINAL';
      case AtsReceptionType.thirdParty:
        return 'THIRD_PARTY';
      case AtsReceptionType.transfer:
        return 'TRANSFER';
      case AtsReceptionType.unknown:
        return 'UNKNOWN';
    }
  }

  /// Deserializes an [AtsReceptionType] from the raw string sent by the backend.
  static AtsReceptionType fromJson(String json) {
    switch (json) {
      case 'PA':
        return AtsReceptionType.pa;
      case 'TERMINAL':
        return AtsReceptionType.terminal;
      case 'THIRD_PARTY':
        return AtsReceptionType.thirdParty;
      case 'TRANSFER':
        return AtsReceptionType.transfer;
      default:
        return AtsReceptionType.unknown;
    }
  }
}

/// A [JsonConverter] that converts between [AtsReceptionType] and [String].
class AtsReceptionTypeConverter implements JsonConverter<AtsReceptionType, String> {
  /// Creates an [AtsReceptionTypeConverter].
  const AtsReceptionTypeConverter();

  @override
  AtsReceptionType fromJson(String json) => AtsReceptionType.fromJson(json);

  @override
  String toJson(AtsReceptionType object) => object.toJson();
}

/// A [JsonConverter] that converts between nullable [AtsReceptionType] and nullable [String].
class AtsReceptionTypeOrNullConverter implements JsonConverter<AtsReceptionType?, String?> {
  /// Creates an [AtsReceptionTypeOrNullConverter].
  const AtsReceptionTypeOrNullConverter();

  @override
  AtsReceptionType? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AtsReceptionType.fromJson(json);
  }

  @override
  String? toJson(AtsReceptionType? object) => object?.toJson();
}
