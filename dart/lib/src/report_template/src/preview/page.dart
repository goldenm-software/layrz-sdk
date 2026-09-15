part of '../../report_template.dart';

/// Immutable representation of a single page within a [ReportPreview].
@freezed
abstract class ReportPage with _$ReportPage {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportPage._();

  /// Constructs an immutable [ReportPage].
  const factory ReportPage({
    /// Is the name of the report page.
    required String name,

    /// Is the rows inside of the report. Defaults to an empty list.
    @Default([]) List<ReportRow> rows,

    /// Is the headers of the report. Defaults to an empty list.
    @Default([]) List<ReportHeader> headers,
  }) = _ReportPage;

  /// Deserializes a [ReportPage] from a JSON map.
  factory ReportPage.fromJson(Map<String, dynamic> json) => _$ReportPageFromJson(json);
}
