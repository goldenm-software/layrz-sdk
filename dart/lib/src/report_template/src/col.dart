part of '../report_template.dart';

/// Immutable definition of a single column within a [ReportTemplatePage].
@freezed
abstract class ReportTemplateCol with _$ReportTemplateCol {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportTemplateCol._();

  /// Constructs an immutable [ReportTemplateCol].
  const factory ReportTemplateCol({
    /// Is the column name.
    required String name,

    /// Is the column field name.
    required String field,

    /// Is the visibility of the field.
    required bool visible,

    /// Is the column's custom identifier.
    required bool isCustom,
  }) = _ReportTemplateCol;

  /// Deserializes a [ReportTemplateCol] from a JSON map.
  factory ReportTemplateCol.fromJson(Map<String, dynamic> json) => _$ReportTemplateColFromJson(json);
}

/// Mutable input data for creating or updating a [ReportTemplateCol].
@unfreezed
abstract class ReportTemplateColInput with _$ReportTemplateColInput {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportTemplateColInput._();

  /// Constructs a mutable [ReportTemplateColInput].
  factory ReportTemplateColInput({
    /// Is the column name. Defaults to an empty string.
    @Default('') String name,

    /// Is the column field name. Defaults to an empty string.
    @Default('') String field,

    /// Is the visibility of the field. Defaults to `true`.
    @Default(true) bool visible,

    /// Is the column's custom identifier. Defaults to `false`.
    @Default(false) bool isCustom,
  }) = _ReportTemplateColInput;

  /// Deserializes a [ReportTemplateColInput] from a JSON map.
  factory ReportTemplateColInput.fromJson(Map<String, dynamic> json) => _$ReportTemplateColInputFromJson(json);
}
