part of '../access.dart';

/// Immutable access permission grant for an entity in Layrz.
///
/// [Access] grants a [User] (identified by [userId]) read/write/manage
/// permissions over an entity (identified by [objectId]) within an
/// [AccessModule].
@freezed
abstract class Access with _$Access {
  /// Private constructor used by the code generator.
  const Access._();

  /// Constructs an immutable [Access].
  const factory Access({
    /// Unique identifier for this access grant.
    required String id,

    /// Human-readable label for this access grant.
    String? label,

    /// Whether the grantee has read permission.
    bool? read,

    /// Whether the grantee has write permission.
    bool? write,

    /// Whether the grantee has manage permission.
    bool? manage,

    /// The ID of the entity this access grant applies to.
    String? objectId,

    /// The ID of the user this access grant applies to.
    required String userId,

    /// The user this access grant applies to.
    User? user,

    /// The platform module this access grant applies to.
    @JsonKey(unknownEnumValue: AccessModule.unknown) required AccessModule module,
  }) = _Access;

  /// Deserializes an [Access] from a JSON map.
  factory Access.fromJson(Map<String, dynamic> json) => _$AccessFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment for [Access] using an integer/string ID.
  static GqlFragment get idFragment => GqlFragment(name: 'accessFragment', onType: 'AccessPermission')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'read'))
    ..add(GqlField(name: 'write'))
    ..add(GqlField(name: 'manage'))
    ..add(GqlField(name: 'objectId'))
    ..add(GqlField(name: 'userId'))
    ..add(GqlField(name: 'module'));
  // coverage:ignore-end

  // coverage:ignore-start
  /// GraphQL fragment for [Access] using an integer/string ID.
  @Deprecated('Use idFragment instead')
  static GqlFragment get graphqlIdFragment => idFragment;
  // coverage:ignore-end

  // coverage:ignore-start
  /// GraphQL fragment for [Access] using a UUID.
  static GqlFragment get uuidFragment => GqlFragment(name: 'accessUuidFragment', onType: 'AccessPermissionUuid')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'read'))
    ..add(GqlField(name: 'write'))
    ..add(GqlField(name: 'manage'))
    ..add(GqlField(name: 'objectId'))
    ..add(GqlField(name: 'userId'))
    ..add(GqlField(name: 'module'));
  // coverage:ignore-end

  // coverage:ignore-start
  /// GraphQL fragment for [Access] using a UUID.
  @Deprecated('Use graphqlUuidFragment instead')
  static GqlFragment get graphqlUuidFragment => uuidFragment;
  // coverage:ignore-end
}
