part of '../report_template.dart';

/// Immutable definition of a reusable report, made of an ordered list of [ReportTemplatePage]s.
@freezed
abstract class ReportTemplate with _$ReportTemplate {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportTemplate._();

  /// Constructs an immutable [ReportTemplate].
  const factory ReportTemplate({
    /// Is the report template ID.
    required String id,

    /// Is the report template name.
    required String name,

    /// Is the structure of the report template, as an ordered list of pages.
    List<ReportTemplatePage>? structure,

    /// Is the report template linked assets.
    List<Asset>? assets,

    /// Is the report template linked assets' IDs.
    List<String>? assetsIds,

    /// Is the report template linked outbound services.
    List<OutboundService>? outboundServices,

    /// Is the report template linked outbound services' IDs.
    List<String>? outboundServicesIds,

    /// Controls the access of this entity.
    List<Access>? access,
  }) = _ReportTemplate;

  /// Deserializes a [ReportTemplate] from a JSON map.
  factory ReportTemplate.fromJson(Map<String, dynamic> json) => _$ReportTemplateFromJson(json);
}

/// Mutable input data for creating or updating a [ReportTemplate].
@unfreezed
abstract class ReportTemplateInput with _$ReportTemplateInput {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportTemplateInput._();

  /// Constructs a mutable [ReportTemplateInput].
  factory ReportTemplateInput({
    /// Is the report template ID, or null when creating a new one.
    String? id,

    /// Is the report template name. Defaults to an empty string.
    @Default('') String name,

    /// Is the report template linked assets' IDs. Defaults to an empty list.
    @Default([]) List<String> assetsIds,

    /// Is the report template linked outbound services' IDs. Defaults to an empty list.
    @Default([]) List<String> outboundServicesIds,

    /// Is the structure of the report template, as an ordered list of pages. Defaults to an
    /// empty list.
    @Default([]) List<ReportTemplatePageInput> structure,
  }) = _ReportTemplateInput;

  /// Deserializes a [ReportTemplateInput] from a JSON map.
  factory ReportTemplateInput.fromJson(Map<String, dynamic> json) => _$ReportTemplateInputFromJson(json);
}
