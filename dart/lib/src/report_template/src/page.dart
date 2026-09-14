part of '../report_template.dart';

/// Immutable definition of a single page within a [ReportTemplate].
@freezed
abstract class ReportTemplatePage with _$ReportTemplatePage {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportTemplatePage._();

  /// Constructs an immutable [ReportTemplatePage].
  const factory ReportTemplatePage({
    /// Is the page title.
    required String title,

    /// Is the page source.
    @JsonKey(unknownEnumValue: ReportSource.messages) required ReportSource source,

    /// Is the algorithm used to generate the page data.
    @JsonKey(unknownEnumValue: ReportAlgorithm.auto) @Default(ReportAlgorithm.auto) ReportAlgorithm algorithm,

    /// Is the page data, aka the columns. Only used when [algorithm] is [ReportAlgorithm.auto].
    List<ReportTemplateCol>? cols,

    /// Is the script in Python used to generate the page data. Only used when [algorithm] is
    /// [ReportAlgorithm.python].
    String? script,
  }) = _ReportTemplatePage;

  /// Deserializes a [ReportTemplatePage] from a JSON map.
  factory ReportTemplatePage.fromJson(Map<String, dynamic> json) => _$ReportTemplatePageFromJson(json);
}

/// Mutable input data for creating or updating a [ReportTemplatePage].
@unfreezed
abstract class ReportTemplatePageInput with _$ReportTemplatePageInput {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportTemplatePageInput._();

  /// Constructs a mutable [ReportTemplatePageInput].
  factory ReportTemplatePageInput({
    /// Is the page title. Defaults to `'Page'`.
    @Default('Page') String title,

    /// Is the page source. Defaults to [ReportSource.messages].
    @JsonKey(unknownEnumValue: ReportSource.messages) @Default(ReportSource.messages) ReportSource source,

    /// Is the algorithm used to generate the page data. Defaults to [ReportAlgorithm.auto].
    @JsonKey(unknownEnumValue: ReportAlgorithm.auto) @Default(ReportAlgorithm.auto) ReportAlgorithm algorithm,

    /// Is the page data, aka the columns. Defaults to an empty list.
    @Default([]) List<ReportTemplateColInput> cols,

    /// Is the script in Python used to generate the page data. Defaults to an empty string.
    @Default('') String script,
  }) = _ReportTemplatePageInput;

  /// Deserializes a [ReportTemplatePageInput] from a JSON map.
  factory ReportTemplatePageInput.fromJson(Map<String, dynamic> json) => _$ReportTemplatePageInputFromJson(json);
}
