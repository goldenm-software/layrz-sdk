part of '../../report_template.dart';

/// Immutable representation of a single cell within a [ReportRow].
@freezed
abstract class ReportCell with _$ReportCell {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportCell._();

  /// Constructs an immutable [ReportCell].
  const factory ReportCell({
    /// Is the content of the report cell.
    required dynamic content,

    /// Is the text color of the report cell.
    @ColorOrNullConverter() Color? textColor,

    /// Is the color of the report cell.
    @ColorOrNullConverter() Color? color,

    /// Is the data type of the report cell.
    @JsonKey(unknownEnumValue: ReportDataType.string) ReportDataType? dataType,

    /// Is the currency symbol of the report cell.
    String? currencySymbol,
  }) = _ReportCell;

  /// Deserializes a [ReportCell] from a JSON map.
  factory ReportCell.fromJson(Map<String, dynamic> json) => _$ReportCellFromJson(json);
}

/// The data type of a [ReportCell]'s content.
@JsonEnum(alwaysCreate: true)
enum ReportDataType {
  /// API reference: STR
  /// Defines the data type as a string.
  @JsonValue('STR')
  string,

  /// API reference: INT
  /// Defines the data type as an integer.
  @JsonValue('INT')
  integer,

  /// API reference: FLOAT
  /// Defines the data type as a float.
  @JsonValue('FLOAT')
  float,

  /// API reference: DATETIME
  /// Defines the data type as a datetime.
  @JsonValue('DATETIME')
  datetime,

  /// API reference: BOOL
  /// Defines the data type as a boolean.
  @JsonValue('BOOL')
  boolean,

  /// API reference: CURRENCY
  /// Defines the data type as a currency.
  @JsonValue('CURRENCY')
  currency;

  @override
  String toString() => toJson();

  /// Converts this [ReportDataType] to its JSON string representation.
  String toJson() => _$ReportDataTypeEnumMap[this] ?? 'STR';

  /// Deserializes a [ReportDataType] from its JSON string representation.
  static ReportDataType fromJson(String json) {
    return _$ReportDataTypeEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ??
        ReportDataType.string;
  }
}
