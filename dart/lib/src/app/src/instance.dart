part of '../app.dart';

/// A deployed instance of a [RegisteredApp] on a specific platform.
///
/// [AppInstance] represents the implementation of an app on a specific
/// platform. Some fields are only used when [platform] is [AppPlatform.web]
/// (such as [cloudfront] and [certificate]) while others (such as
/// [appIdentifier], [developerName], and [developerIdentifier]) are only
/// used for non-web platforms. Consult the API documentation and the
/// inline documentation of each field to know which fields are required
/// for each platform.
@freezed
abstract class AppInstance with _$AppInstance {
  /// Constructs an immutable [AppInstance].
  const factory AppInstance({
    /// The unique identifier of the instance.
    required String id,

    /// The unique identifier of the app this instance belongs to.
    required String appId,

    /// The platform of the instance.
    @JsonKey(unknownEnumValue: AppPlatform.web) required AppPlatform platform,

    /// The host of the instance. Only used when [platform] is
    /// [AppPlatform.web].
    String? host,

    /// The identifier of the app in the store. Only used when [platform]
    /// is not [AppPlatform.web].
    String? appIdentifier,

    /// The name of the developer. Only used when [platform] is not
    /// [AppPlatform.web].
    String? developerName,

    /// The identifier of the developer. Only used when [platform] is not
    /// [AppPlatform.web].
    String? developerIdentifier,

    /// The list of builds for this instance.
    @Default([]) List<AppBuild> builds,

    /// The status of the instance. Only used when [platform] is
    /// [AppPlatform.web]; for other platforms this value is only ever
    /// [InstanceStatus.pending] or [InstanceStatus.ready]. Defaults to
    /// [InstanceStatus.pending].
    @JsonKey(unknownEnumValue: InstanceStatus.pending) @Default(InstanceStatus.pending) InstanceStatus status,

    /// The DNS configuration of the instance for CloudFront. Only used when
    /// [platform] is [AppPlatform.web].
    DnsConfiguration? cloudfront,

    /// The DNS configuration of the instance for the SSL certificate. Only
    /// used when [platform] is [AppPlatform.web].
    DnsConfiguration? certificate,

    /// The status of the migration to the new High Availability
    /// architecture. Only used when [platform] is [AppPlatform.web], since
    /// web instances require configuration changes to their DNS. Defaults
    /// to [InstanceMigrationStatus.pending].
    @JsonKey(unknownEnumValue: InstanceMigrationStatus.pending)
    @Default(InstanceMigrationStatus.pending)
    InstanceMigrationStatus migrationStatus,
  }) = _AppInstance;

  /// Deserializes an [AppInstance] from a JSON map.
  factory AppInstance.fromJson(Map<String, dynamic> json) => _$AppInstanceFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying app instance fields.
  static GqlFragment get fragment => GqlFragment(name: 'instanceFragment', onType: 'AppInstance')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'appId'))
    ..add(GqlField(name: 'platform'))
    ..add(GqlField(name: 'host'))
    ..add(GqlField(name: 'appIdentifier'))
    ..add(GqlField(name: 'developerName'))
    ..add(GqlField(name: 'developerIdentifier'))
    ..add(GqlField(name: 'builds', fragment: AppBuild.fragment))
    ..add(GqlField(name: 'status'))
    ..add(GqlField(name: 'cloudfront', fragment: DnsConfiguration.fragment))
    ..add(GqlField(name: 'certificate', fragment: DnsConfiguration.fragment))
    ..add(GqlField(name: 'migrationStatus'));
  // coverage:ignore-end

  // coverage:ignore-start
  /// [deprecateInstance] marks an app instance as deprecated.
  /// Returns true on success, false on error.
  static Future<bool> deprecateInstance({
    required String instanceId,
    required String apiToken,
    required Uri uri,
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'instanceId',
              type: .id,
              isRequired: true,
              value: instanceId,
            ),
          ],
          name: 'deprecateInstance',
        )..add(
          GqlField(
            name: 'deprecateInstance',
            args: {'instanceId': 'instanceId'},
          )..add(GqlField(name: 'status')),
        ),
      );

      onResponse?.call(response.status.toJson());
      return response.status == ApiStatus.ok;
    } catch (e, stack) {
      Log.critical("layrz_models/AppInstance/deprecateInstance(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [migrateInstance] migrates an app instance.
  /// Returns true on success, false on error.
  static Future<bool> migrateInstance({
    required String instanceId,
    required String apiToken,
    required Uri uri,
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(name: 'instanceId', type: .id, isRequired: true, value: instanceId),
          ],
          name: 'migrateInstance',
        )..add(
          GqlField(name: 'migrateInstance', args: {'instanceId': 'instanceId'})..add(GqlField(name: 'status')),
        ),
      );

      onResponse?.call(response.status.toJson());
      return response.status == ApiStatus.ok;
    } catch (e, stack) {
      Log.critical("layrz_models/AppInstance/migrateInstance(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [requestInstance] requests creation of a new app instance.
  /// Returns true on success, false on error.
  static Future<bool> requestInstance({
    required Map<String, dynamic> data,
    required String apiToken,
    required Uri uri,
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: .input(of: 'AppInstanceInput'),
              isRequired: true,
              value: data,
            ),
          ],
          name: 'requestInstance',
        )..add(
          GqlField(name: 'requestInstance', args: {'data': 'data'})..add(GqlField(name: 'status')),
        ),
      );

      onResponse?.call(response.status.toJson());
      return response.status == ApiStatus.ok;
    } catch (e, stack) {
      Log.critical("layrz_models/AppInstance/requestInstance(): General exception => $e\n$stack");
      return false;
    }
  }

  // coverage:ignore-end
}

/// A DNS record configuration for a web [AppInstance].
///
/// [DnsConfiguration] holds the name/value pair of a DNS record required to
/// provision either the CloudFront distribution or the SSL certificate for
/// a web app instance.
@freezed
abstract class DnsConfiguration with _$DnsConfiguration {
  /// Constructs an immutable [DnsConfiguration].
  const factory DnsConfiguration({
    /// The name of the DNS record, or null when not yet available.
    String? name,

    /// The value of the DNS record, or null when not yet available.
    String? value,
  }) = _DnsConfiguration;

  /// Deserializes a [DnsConfiguration] from a JSON map.
  factory DnsConfiguration.fromJson(Map<String, dynamic> json) => _$DnsConfigurationFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying DNS configuration fields.
  static GqlFragment get fragment => GqlFragment(name: 'dnsConfigurationFragment', onType: 'InstanceDns')
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'value'));
  // coverage:ignore-end
}
