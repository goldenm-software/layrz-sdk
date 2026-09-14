part of '../../concierge.dart';

/// The type of a [ConciergeFormBlock].
///
/// Values [header], [body] and [separator] are only for design purposes and do not affect the
/// usability of the block.
@JsonEnum(alwaysCreate: true)
enum ConciergeFormBlockType {
  /// Prompt a text as value.
  @JsonValue('TEXT')
  text,

  /// Prompt a number. May be integer or float.
  @JsonValue('NUMBER')
  number,

  /// Ask to true or false, on or off, yes or no.
  @JsonValue('BOOLEAN')
  boolean,

  /// Prompt a date.
  @JsonValue('DATE')
  date,

  /// Prompt a date and time.
  @JsonValue('DATETIME')
  datetime,

  /// Prompt a time.
  @JsonValue('TIME')
  time,

  /// Prompt a choice, may be multiple.
  @JsonValue('SELECT')
  select,

  /// A separator, a line, dotted or not.
  @JsonValue('SEPARATOR')
  separator,

  /// A header, a title.
  @JsonValue('HEADER')
  header,

  /// A body, a paragraph.
  @JsonValue('BODY')
  body,

  /// Request a location.
  @JsonValue('LOCATION')
  location,

  /// Request a file.
  @JsonValue('FILE')
  file;

  @override
  String toString() => toJson();

  /// Serializes this value to the raw string sent by the backend.
  String toJson() => _$ConciergeFormBlockTypeEnumMap[this] ?? 'TEXT';

  /// Deserializes a [ConciergeFormBlockType] from the raw string sent by the backend, defaulting
  /// to [ConciergeFormBlockType.text] when [json] does not match a known value.
  static ConciergeFormBlockType fromJson(String json) {
    return _$ConciergeFormBlockTypeEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ??
        ConciergeFormBlockType.text;
  }
}
