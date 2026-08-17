part of '../avatar.dart';

/// Enumeration of supported avatar formats for [Avatar] and [AvatarInput].
///
/// Determines which field of an [Avatar] is populated:
/// - [none]: no avatar (all fields null)
/// - [url]: image from a URL ([Avatar.url])
/// - [base64]: base64-encoded image data ([Avatar.base64])
/// - [icon]: a Layrz icon from Material Design Icons ([Avatar.icon])
/// - [emoji]: a Unicode emoji ([Avatar.emoji])
@JsonEnum(alwaysCreate: true)
enum AvatarType {
  /// Represents the none object, used for null values.
  @JsonValue('NONE')
  none,

  /// Represents the image through a URL.
  @JsonValue('URL')
  url,

  /// Represents the image through a base64 string.
  @JsonValue('BASE64')
  base64,

  /// Represents a MDI icon
  @JsonValue('ICON')
  icon,

  /// Represents a Emoji
  @JsonValue('EMOJI')
  emoji;

  /// Returns the JSON representation of this [AvatarType].
  @override
  String toString() => toJson();

  /// Serializes this [AvatarType] to its JSON string representation.
  ///
  /// Returns the corresponding @JsonValue annotation (e.g., 'EMOJI', 'ICON', 'URL',
  /// 'BASE64', 'NONE'). Defaults to 'NONE' if no match is found.
  String toJson() => _$AvatarTypeEnumMap[this] ?? 'NONE';

  /// Deserializes an [AvatarType] from a JSON string.
  ///
  /// Matches the JSON string against @JsonValue annotations. Returns [AvatarType.none]
  /// if no match is found.
  ///
  /// Parameters:
  ///   - [json]: the JSON string to deserialize (e.g., 'EMOJI', 'ICON', 'URL', 'BASE64', 'NONE')
  ///
  /// Returns: the corresponding [AvatarType], or [AvatarType.none] if not recognized.
  static AvatarType fromJson(String json) {
    return _$AvatarTypeEnumMap.entries.firstWhereOrNull((element) => element.value == json)?.key ?? AvatarType.none;
  }
}
