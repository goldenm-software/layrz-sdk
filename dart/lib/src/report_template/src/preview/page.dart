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

    /// Is the headers of the report, one per column. Defaults to an empty list.
    ///
    /// When the page uses grouped headers, this holds the bottom-most header of
    /// each column, so it always lines up with [ReportRow.content]. Use
    /// [headerRows] to render the groups above them.
    @Default([]) List<ReportHeader> headers,

    /// Is the multi-row (grouped) header definition, top to bottom, where each
    /// header carries its own `colspan`/`rowspan`. Empty when the page uses a
    /// single header row. Defaults to an empty list.
    @Default([]) List<List<ReportHeader>> headerRows,
  }) = _ReportPage;

  /// Number of header rows this page renders. `1` for a flat header.
  int get headerDepth => headerRows.isEmpty ? (headers.isEmpty ? 0 : 1) : headerRows.length;

  /// Header definition as rows, top to bottom. A flat page resolves to `[headers]`.
  List<List<ReportHeader>> get resolvedHeaderRows {
    if (headerRows.isNotEmpty) return headerRows;
    return headers.isEmpty ? const [] : [headers];
  }

  /// Deserializes a [ReportPage] from a JSON map.
  factory ReportPage.fromJson(Map<String, dynamic> json) => _$ReportPageFromJson(json);
}
