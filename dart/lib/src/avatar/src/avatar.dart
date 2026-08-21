part of '../avatar.dart';

/// Immutable avatar data for Layrz platform entities.
///
/// Represents an avatar in one of four formats determined by [type]:
/// - [AvatarType.emoji]: a Unicode emoji string stored in [emoji]
/// - [AvatarType.icon]: a [MdiRemapIcon] stored in [icon]
/// - [AvatarType.url]: a URL string stored in [url]
/// - [AvatarType.base64]: a base64-encoded image string stored in [base64]
/// - [AvatarType.none]: a null/empty avatar (all fields null)
///
/// Use [AvatarInput] for creating or updating avatars.
@freezed
abstract class Avatar with _$Avatar {
  /// Constructs an immutable [Avatar].
  ///
  /// Exactly one of [emoji], [icon], [url], or [base64] should be set,
  /// depending on the [type].
  const factory Avatar({
    /// Represents the type of avatar.
    required AvatarType type,

    /// [emoji], [icon], [url] or [base64] depending on the [type].
    /// [emoji], [url] and [base64] are [String].
    /// And [icon] is [MdiRemapIcon].
    String? emoji,

    /// [emoji], [icon], [url] or [base64] depending on the [type].
    /// [emoji], [url] and [base64] are [String].
    /// And [icon] is [MdiRemapIcon].
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// [emoji], [icon], [url] or [base64] depending on the [type].
    /// [emoji], [url] and [base64] are [String].
    /// And [icon] is [MdiRemapIcon].
    String? url,

    /// [emoji], [icon], [url] or [base64] depending on the [type].
    /// [emoji], [url] and [base64] are [String].
    /// And [icon] is [MdiRemapIcon].
    String? base64,
  }) = _Avatar;

  /// Deserializes an [Avatar] from a JSON map.
  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying avatar fields.
  ///
  /// Returns a [GqlFragment] with the standard avatar field set (type, url, icon,
  /// emoji, base64) for use in GraphQL queries and mutations.
  static GqlFragment get fragment => GqlFragment(
    name: 'avatarFragment',
    onType: 'Avatar',
    fields: [
      GqlField(name: 'type'),
      GqlField(name: 'url'),
      GqlField(name: 'icon'),
      GqlField(name: 'emoji'),
      GqlField(name: 'base64'),
    ],
  );
  // coverage:ignore-end
}
