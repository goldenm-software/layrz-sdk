part of '../../ats.dart';

/// [AtsNsProjectId] is the NS project of a license.
enum AtsNsProjectId {
  /// Layrz API reference: `1`
  nsNFe('1'),

  /// Layrz API reference: `6`
  nsCTe('6'),

  /// Layrz API reference: `20`
  nsNFCe('20'),

  /// Layrz API reference: `21`
  nsMDFe('21'),

  /// Layrz API reference: `22`
  nsDDFe('22'),

  /// Layrz API reference: `23`
  nsPortal('23'),

  /// Layrz API reference: `24`
  nsSAT('24'),

  /// Layrz API reference: `26`
  cteOS('26');

  const AtsNsProjectId(this.code);

  /// The Layrz API reference of this project.
  final String code;

  /// Returns [code], which is also the suffix of its i18n key.
  @override
  String toString() => code;

  /// Returns [code].
  String toJson() => code;

  /// Parses an API reference; throws [ArgumentError] on an unknown value.
  static AtsNsProjectId fromJson(String json) {
    return values.firstWhere(
      (item) => item.code == json,
      orElse: () => throw ArgumentError.value(json, 'json', 'Invalid AtsNsProjectId'),
    );
  }
}

/// [AtsNsStatus] is the status of a license.
enum AtsNsStatus {
  /// Layrz API reference: `0`
  testing('0'),

  /// Layrz API reference: `1`
  production('1'),

  /// Layrz API reference: `2`
  blocked('2');

  const AtsNsStatus(this.code);

  /// The Layrz API reference of this status.
  final String code;

  /// Returns [code], which is also the suffix of its i18n key.
  @override
  String toString() => code;

  /// Returns [code].
  String toJson() => code;

  /// Parses an API reference; throws [ArgumentError] on an unknown value.
  static AtsNsStatus fromJson(String json) {
    return values.firstWhere(
      (item) => item.code == json,
      orElse: () => throw ArgumentError.value(json, 'json', 'Invalid AtsNsStatus'),
    );
  }
}

/// [AtsIcmsType] is the ICMS type of a license.
enum AtsIcmsType {
  /// Layrz API reference: `1`. In Portuguese: `Contribuinte ICMS (Informar a IE)`.
  taxpayer('1'),

  /// Layrz API reference: `2`. In Portuguese: `Contribuinte isento de Inscricao no cadastro de Contribuintes do ICMS`.
  exempt('2'),

  /// Layrz API reference: `9`. In Portuguese: `Nao Contribuinte`.
  nonContributor('9');

  const AtsIcmsType(this.code);

  /// The Layrz API reference of this ICMS type.
  final String code;

  /// Returns [code], which is also the suffix of its i18n key.
  @override
  String toString() => code;

  /// Returns [code].
  String toJson() => code;

  /// Parses an API reference; throws [ArgumentError] on an unknown value.
  static AtsIcmsType fromJson(String json) {
    return values.firstWhere(
      (item) => item.code == json,
      orElse: () => throw ArgumentError.value(json, 'json', 'Invalid AtsIcmsType'),
    );
  }
}

/// JSON converter for [AtsNsProjectId].
class AtsNsProjectIdConverter implements JsonConverter<AtsNsProjectId, String> {
  /// Creates the converter.
  const AtsNsProjectIdConverter();

  @override
  AtsNsProjectId fromJson(String json) => AtsNsProjectId.fromJson(json);

  @override
  String toJson(AtsNsProjectId object) => object.toJson();
}

/// JSON converter for a nullable [AtsNsProjectId].
class AtsNsProjectIdOrNullConverter implements JsonConverter<AtsNsProjectId?, String?> {
  /// Creates the converter.
  const AtsNsProjectIdOrNullConverter();

  @override
  AtsNsProjectId? fromJson(String? json) => json == null ? null : AtsNsProjectId.fromJson(json);

  @override
  String? toJson(AtsNsProjectId? object) => object?.toJson();
}

/// JSON converter for [AtsNsStatus].
class AtsNsStatusConverter implements JsonConverter<AtsNsStatus, String> {
  /// Creates the converter.
  const AtsNsStatusConverter();

  @override
  AtsNsStatus fromJson(String json) => AtsNsStatus.fromJson(json);

  @override
  String toJson(AtsNsStatus object) => object.toJson();
}

/// JSON converter for a nullable [AtsNsStatus].
class AtsNsStatusOrNullConverter implements JsonConverter<AtsNsStatus?, String?> {
  /// Creates the converter.
  const AtsNsStatusOrNullConverter();

  @override
  AtsNsStatus? fromJson(String? json) => json == null ? null : AtsNsStatus.fromJson(json);

  @override
  String? toJson(AtsNsStatus? object) => object?.toJson();
}

/// JSON converter for [AtsIcmsType].
class AtsIcmsTypeConverter implements JsonConverter<AtsIcmsType, String> {
  /// Creates the converter.
  const AtsIcmsTypeConverter();

  @override
  AtsIcmsType fromJson(String json) => AtsIcmsType.fromJson(json);

  @override
  String toJson(AtsIcmsType object) => object.toJson();
}

/// JSON converter for a nullable [AtsIcmsType].
class AtsIcmsTypeOrNullConverter implements JsonConverter<AtsIcmsType?, String?> {
  /// Creates the converter.
  const AtsIcmsTypeOrNullConverter();

  @override
  AtsIcmsType? fromJson(String? json) => json == null ? null : AtsIcmsType.fromJson(json);

  @override
  String? toJson(AtsIcmsType? object) => object?.toJson();
}
