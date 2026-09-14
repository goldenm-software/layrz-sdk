part of '../users.dart';

/// The role a [User] holds within the Brickhouse ecosystem.
///
/// If deserialization encounters an unknown role value, it defaults to
/// [unknown].
@JsonEnum(alwaysCreate: true)
enum BrickhouseUserRole {
  /// The user owns the Brickhouse account.
  @JsonValue('OWNER')
  owner,

  /// The user manages the Brickhouse account.
  @JsonValue('MANAGER')
  manager,

  /// The user has read-only access to the Brickhouse account.
  @JsonValue('VIEWER')
  viewer,

  /// Unknown role. Fallback value used when an unrecognized role value is
  /// received.
  @JsonValue('UNKNOWN')
  unknown;

  /// Converts this [BrickhouseUserRole] to its wire JSON string.
  String toJson() => _$BrickhouseUserRoleEnumMap[this] ?? 'UNKNOWN';

  /// Converts a JSON string to a [BrickhouseUserRole].
  ///
  /// Returns [unknown] when the input does not match any known role.
  static BrickhouseUserRole fromJson(String json) {
    return _$BrickhouseUserRoleEnumMap.entries.firstWhereOrNull((e) => e.value == json)?.key ??
        BrickhouseUserRole.unknown;
  }
}
