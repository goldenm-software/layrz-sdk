part of '../../ats.dart';

/// How the device that registered an ATS exit was connected.
enum AtsExitConnectionType {
  /// Connected through Wi-Fi.
  wifi,

  /// Connected through Bluetooth.
  bluetooth,

  /// Connected through the local network.
  local,

  /// The connection is unknown.
  undefined;

  @override
  String toString() => toJson();

  /// Serializes this value to the raw string sent by the backend.
  String toJson() {
    switch (this) {
      case AtsExitConnectionType.wifi:
        return 'WIFI';
      case AtsExitConnectionType.bluetooth:
        return 'BLUETOOTH';
      case AtsExitConnectionType.local:
        return 'LOCAL';
      case AtsExitConnectionType.undefined:
        return 'UNDEFINED';
    }
  }

  /// Deserializes an [AtsExitConnectionType] from the raw string sent by the backend; unknown values are [undefined].
  static AtsExitConnectionType fromJson(String json) {
    switch (json) {
      case 'WIFI':
        return AtsExitConnectionType.wifi;
      case 'BLUETOOTH':
        return AtsExitConnectionType.bluetooth;
      case 'LOCAL':
        return AtsExitConnectionType.local;
      default:
        return AtsExitConnectionType.undefined;
    }
  }
}

/// A [JsonConverter] that converts between nullable [AtsExitConnectionType] and nullable [String].
class AtsExitConnectionTypeOrNullConverter implements JsonConverter<AtsExitConnectionType?, String?> {
  /// Creates an [AtsExitConnectionTypeOrNullConverter].
  const AtsExitConnectionTypeOrNullConverter();

  @override
  AtsExitConnectionType? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AtsExitConnectionType.fromJson(json);
  }

  @override
  String? toJson(AtsExitConnectionType? object) => object?.toJson();
}
