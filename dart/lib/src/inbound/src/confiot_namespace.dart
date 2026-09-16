part of '../inbound.dart';

/// [ConfIoTNamespace] identifies which section of a [ConfIoTFile] a configuration
/// payload belongs to.
enum ConfIoTNamespace {
  /// [commands] namespace
  /// Refers to the commands definition, this defition is the loaded on the [InboundProtocol] and/or [Model]
  commands,

  /// [config] namespace
  /// Refers to the configuration definition, this defition is the loaded on the [InboundProtocol] and/or [Model]
  config,

  /// [deviceConfig]  namespace
  /// Refers to the device configuration definition, this configuration can only be handled by
  /// ConfIoT official app.
  deviceConfig,

  /// [unknown] namespace
  /// Refers to the unknown definition, when the file was editted wrong or the namespace is not defined
  unknown,
  ;

  @override
  String toString() => toJson();

  /// [toJson] returns the string representation of the enum value.
  String toJson() {
    switch (this) {
      case ConfIoTNamespace.commands:
        return 'COMMANDS';
      case ConfIoTNamespace.config:
        return 'CONFIG';
      case ConfIoTNamespace.deviceConfig:
        return 'DEVICE_CONFIG';
      case ConfIoTNamespace.unknown:
        return 'UNKNOWN';
    }
  }

  /// [fromJson] returns the enum value from a string representation.
  static ConfIoTNamespace fromJson(String json) {
    switch (json) {
      case 'COMMANDS':
        return ConfIoTNamespace.commands;
      case 'CONFIG':
        return ConfIoTNamespace.config;
      case 'DEVICE_CONFIG':
        return ConfIoTNamespace.deviceConfig;
      case 'UNKNOWN':
      default:
        return ConfIoTNamespace.unknown;
    }
  }
}

/// [ConfIoTNamespaceConverter] converts a required [ConfIoTNamespace] to/from its JSON string
/// representation.
class ConfIoTNamespaceConverter implements JsonConverter<ConfIoTNamespace, String> {
  /// Creates a new [ConfIoTNamespaceConverter].
  const ConfIoTNamespaceConverter();

  @override
  ConfIoTNamespace fromJson(String json) => ConfIoTNamespace.fromJson(json);
  @override
  String toJson(ConfIoTNamespace object) => object.toJson();
}

/// [ConfIoTNamespaceOrNullConverter] converts a nullable [ConfIoTNamespace] to/from its
/// JSON string representation.
class ConfIoTNamespaceOrNullConverter implements JsonConverter<ConfIoTNamespace?, String?> {
  /// Creates a new [ConfIoTNamespaceOrNullConverter].
  const ConfIoTNamespaceOrNullConverter();

  @override
  ConfIoTNamespace? fromJson(String? json) => json == null ? null : ConfIoTNamespace.fromJson(json);
  @override
  String? toJson(ConfIoTNamespace? object) => object?.toJson();
}
