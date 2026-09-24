part of '../../report_template.dart';

/// Immutable representation of a single header within a [ReportPage].
@freezed
abstract class ReportHeader with _$ReportHeader {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportHeader._();

  /// Constructs an immutable [ReportHeader].
  const factory ReportHeader({
    /// Is the content of the report header.
    required String content,

    /// Is the text color of the report header.
    @ColorOrNullConverter() Color? textColor,

    /// Is the color of the report header.
    @ColorOrNullConverter() Color? color,

    /// Is the number of columns this header spans. Defaults to `1`.
    @Default(1) int colspan,

    /// Is the number of header rows this header spans. Defaults to `1`.
    @Default(1) int rowspan,
  }) = _ReportHeader;

  /// Deserializes a [ReportHeader] from a JSON map.
  factory ReportHeader.fromJson(Map<String, dynamic> json) => _$ReportHeaderFromJson(json);
}
