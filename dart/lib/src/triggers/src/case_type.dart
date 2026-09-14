part of '../triggers.dart';

/// The type of case-change event a [Trigger] reacts to.
///
/// Required when [Trigger.kind] is [TriggerType.casesChanges].
@JsonEnum(alwaysCreate: true)
enum CaseType {
  /// [onFollow] is triggered when a case is followed by a user.
  ///
  /// API Reference: `ON_FOLLOW`
  @JsonValue('ON_FOLLOW')
  onFollow,

  /// [onClose] is triggered when a case is closed by a user.
  ///
  /// API Reference: `ON_CLOSE`
  @JsonValue('ON_CLOSE')
  onClose,

  /// [onDismiss] is triggered when a case is dismissed by a user.
  ///
  /// API Reference: `ON_DISMISS`
  @JsonValue('ON_DISMISS')
  onDismiss,

  /// [onCommentPattern] is triggered when a case is commented on by a user,
  /// matching a comment pattern.
  ///
  /// API Reference: `ON_COMMENT_PATTERN`
  @JsonValue('ON_COMMENT_PATTERN')
  onCommentPattern;

  @override
  String toString() => toJson();

  /// Converts this [CaseType] to its wire representation.
  String toJson() => _$CaseTypeEnumMap[this] ?? 'ON_FOLLOW';

  /// Converts a wire representation [json] to a [CaseType].
  ///
  /// Returns [CaseType.onFollow] when [json] does not match any known value.
  static CaseType fromJson(String json) {
    final value = _$CaseTypeEnumMap.entries.firstWhereOrNull((element) => element.value == json);
    return value?.key ?? CaseType.onFollow;
  }
}
