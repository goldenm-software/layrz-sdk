part of '../case.dart';

/// Immutable owner of a [CaseComment], encapsulating details about the individual or entity who
/// made the comment.
@freezed
abstract class CommentOwner with _$CommentOwner {
  /// Constructs an immutable [CommentOwner].
  const factory CommentOwner({
    /// [id] is a unique identifier for the comment owner, typically used to reference and manage
    /// the owner within a system.
    required String id,

    /// [name] represents the name of the comment owner, providing a human-readable identifier.
    required String name,

    /// [avatar] is a URL or path to the avatar image associated with the comment owner.
    String? avatar,

    /// [dynamicAvatar] refers to a dynamic representation of the avatar, which may include
    /// various types such as an icon, an emoji, or generated initials.
    Avatar? dynamicAvatar,
  }) = _CommentOwner;

  /// Deserializes a [CommentOwner] from a JSON map.
  factory CommentOwner.fromJson(Map<String, dynamic> json) => _$CommentOwnerFromJson(json);
}

/// Immutable comment made on a [Case], including details about the comment itself, when it was
/// made, and by whom.
@freezed
abstract class CaseComment with _$CaseComment {
  /// Constructs an immutable [CaseComment].
  const factory CaseComment({
    /// [id] is a unique identifier for the case comment, typically used to reference and manage
    /// it within a system.
    required String id,

    /// [at] indicates the date and time when the comment was made or created.
    @TimestampConverter() required DateTime at,

    /// [owner] refers to the individual or entity that made the comment, providing context about
    /// who is responsible for the content.
    CommentOwner? owner,

    /// [comment] contains the actual text or content of the comment made on the case.
    required String comment,

    /// [metadata] holds additional information or data related to the comment, which can include
    /// various attributes or properties.
    @Default({}) Map<String, dynamic> metadata,

    /// [file] refers to an optional file associated with the comment, which can include
    /// documents, images, or other relevant attachments.
    CloudEntry? file,
  }) = _CaseComment;

  /// Deserializes a [CaseComment] from a JSON map.
  factory CaseComment.fromJson(Map<String, dynamic> json) => _$CaseCommentFromJson(json);
}
