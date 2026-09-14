part of '../../app.dart';

/// The provisioning status of a web [AppInstance].
///
/// [InstanceStatus] tracks the sequential stages of provisioning a web app
/// instance, from initial request ([pending]) through SSL and CloudFront
/// distribution setup to being fully served ([ready]). Only used when the
/// instance's platform is [AppPlatform.web]. Each value is serialized to
/// JSON as an uppercase string (e.g., `PENDING`, `READY`).
///
/// If deserialization encounters an unknown status value, it defaults to
/// [pending].
@JsonEnum(alwaysCreate: true)
enum InstanceStatus {
  /// [pending] - Sequence 1: Pending. This is the fallback value used when
  /// an unknown status is received.
  @JsonValue('PENDING')
  pending,

  /// [sslWaiting] - Sequence 2: Waiting for SSL Certificate.
  @JsonValue('SSL_WAITING')
  sslWaiting,

  /// [sslDnsCreation] - Sequence 3: Creating DNS Record for SSL Certificate.
  /// This stage is only for non-customized apps.
  @JsonValue('SSL_DNS_CREATION')
  sslDnsCreation,

  /// [sslGeneration] - Sequence 4: Generating SSL Certificate.
  @JsonValue('SSL_GENERATION')
  sslGeneration,

  /// [cloudfrontGeneration] - Sequence 5: Generating Distribution.
  @JsonValue('CLOUDFRONT_GENERATION')
  cloudfrontGeneration,

  /// [cloudfrontDnsCreation] - Sequence 6: Creating DNS Record for
  /// CloudFront. This stage is only for non-customized apps.
  @JsonValue('CLOUDFRONT_DNS_CREATION')
  cloudfrontDnsCreation,

  /// [waiting] - Sequence 7: Waiting confirmation of the provider.
  @JsonValue('WAITING')
  waiting,

  /// [ready] - Sequence 8: Ready.
  @JsonValue('READY')
  ready,
  ;

  /// Returns the JSON representation of this status value (e.g., `PENDING`,
  /// `READY`).
  @override
  String toString() => toJson();

  /// Converts this [InstanceStatus] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum
  /// value is not found in the generated map (should never occur), defaults
  /// to `'PENDING'`.
  String toJson() => _$InstanceStatusEnumMap[this] ?? 'PENDING';

  /// Converts a JSON string to an [InstanceStatus].
  ///
  /// Accepts the uppercase JSON values (e.g., `'PENDING'`, `'READY'`) from
  /// the server wire format. If the input does not match any known value,
  /// returns [pending] as the fallback default.
  static InstanceStatus fromJson(String json) {
    final found = _$InstanceStatusEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? InstanceStatus.pending;
  }
}

/// The migration status of a web [AppInstance] to a new High Availability
/// architecture.
///
/// [InstanceMigrationStatus] tracks whether a web app instance's DNS
/// configuration has been migrated to the new infrastructure. Only used
/// when the instance's platform is [AppPlatform.web]. Each value is
/// serialized to JSON as an uppercase string (e.g., `PENDING`, `MIGRATED`).
///
/// If deserialization encounters an unknown status value, it defaults to
/// [pending].
@JsonEnum(alwaysCreate: true)
enum InstanceMigrationStatus {
  /// [pending] - Sequence 1: Pending state. This is the fallback value used
  /// when an unknown status is received.
  @JsonValue('PENDING')
  pending,

  /// [migrating] - Sequence 2: Migrating state.
  @JsonValue('MIGRATING')
  migrating,

  /// [migrated] - Sequence 3: Migrated state.
  @JsonValue('MIGRATED')
  migrated,
  ;

  /// Returns the JSON representation of this status value (e.g., `PENDING`,
  /// `MIGRATED`).
  @override
  String toString() => toJson();

  /// Converts this [InstanceMigrationStatus] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum
  /// value is not found in the generated map (should never occur), defaults
  /// to `'PENDING'`.
  String toJson() => _$InstanceMigrationStatusEnumMap[this] ?? 'PENDING';

  /// Converts a JSON string to an [InstanceMigrationStatus].
  ///
  /// Accepts the uppercase JSON values (e.g., `'PENDING'`, `'MIGRATED'`)
  /// from the server wire format. If the input does not match any known
  /// value, returns [pending] as the fallback default.
  static InstanceMigrationStatus fromJson(String json) {
    final found = _$InstanceMigrationStatusEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? InstanceMigrationStatus.pending;
  }
}
