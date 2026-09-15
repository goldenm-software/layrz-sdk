part of '../../report_template.dart';

/// Immutable representation of a rendered report preview, made of an ordered
/// list of [ReportPage]s.
@freezed
abstract class ReportPreview with _$ReportPreview {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportPreview._();

  /// Constructs an immutable [ReportPreview].
  const factory ReportPreview({
    /// Is the name of the report preview.
    required String name,

    /// Is the pages inside of the report. Defaults to an empty list.
    @Default([]) List<ReportPage> pages,
  }) = _ReportPreview;

  /// Deserializes a [ReportPreview] from a JSON map.
  factory ReportPreview.fromJson(Map<String, dynamic> json) => _$ReportPreviewFromJson(json);
}
