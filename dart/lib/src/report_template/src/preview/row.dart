part of '../../report_template.dart';

/// Immutable representation of a single row within a [ReportPage].
@freezed
abstract class ReportRow with _$ReportRow {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportRow._();

  /// Constructs an immutable [ReportRow].
  const factory ReportRow({
    /// Is the cells of the report row. Defaults to an empty list.
    @Default([]) List<ReportCell> content,

    /// Indicates if the row is compact. Defaults to `false`.
    @Default(false) bool compact,
  }) = _ReportRow;

  /// Deserializes a [ReportRow] from a JSON map.
  factory ReportRow.fromJson(Map<String, dynamic> json) => _$ReportRowFromJson(json);
}
