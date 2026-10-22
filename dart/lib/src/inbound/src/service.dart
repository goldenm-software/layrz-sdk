part of '../inbound.dart';

/// [InboundService] is an assigned inbound integration between an asset ecosystem and an
/// [InboundProtocol], carrying its own credentials, structure and access rules.
@freezed
abstract class InboundService with _$InboundService {
  const InboundService._();

  /// Constructs an immutable [InboundService].
  const factory InboundService({
    /// [id] is the ID of the entity. This ID is unique.
    required String id,

    /// [name] is the assigned service name, cannot be translated for other languages.
    required String name,

    /// [credentials] is the credential object, check the documentation for more information.
    @DynamicMapConverterNullable() Map<String, dynamic>? credentials,

    /// [externalAccountId] is the ID of the external account.
    String? externalAccountId,

    /// [updateTime] is the update time of the service.
    @DurationOrNullConverter() Duration? updateTime,

    /// [protocol] is the protocol entity.
    InboundProtocol? protocol,

    /// [protocolId] is the protocol ID.
    String? protocolId,

    /// [isEnabled] is the current transmission status.
    bool? isEnabled,

    /// [token] is the token to authenticate the request, only used for Alpha REST inbound protocol.
    String? token,

    /// [structure] is the structure of the inbound protocol, only used for Omega REST inbound protocol.
    InboundStructure? structure,

    /// [access] is a list of custom access permissions.
    List<Access>? access,

    /// [webhookStructure] defines the specific methods required to handle a complete webhook operation.
    WebhookStructure? webhookStructure,
  }) = _InboundService;

  /// [fromJson] builds an [InboundService] from a decoded JSON [json] map.
  factory InboundService.fromJson(Map<String, dynamic> json) => _$InboundServiceFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment with the lightweight fields needed to list an [InboundService]: its status
  /// and a reduced [protocol]. Use [detailedFragment] (through [fetch]) for the full record.
  static GqlFragment get fragment => GqlFragment(
    name: 'inboundServiceFragment',
    onType: 'InboundService',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'isEnabled'),
      GqlField(name: 'protocolId'),
      GqlField(
        name: 'protocol',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'name'),
          GqlField(name: 'color'),
          GqlField(name: 'isEnabled'),
          GqlField(name: 'operationMode'),
          GqlField(name: 'dynamicIcon', fragment: Avatar.fragment),
        ],
      ),
    ],
  );

  /// GraphQL fragment with every field the service form reads.
  ///
  /// [token] and the resolved [webhookStructure] are not selected because they carry the real
  /// service token.
  static GqlFragment get detailedFragment => GqlFragment(
    name: 'inboundServiceDetailedFragment',
    onType: 'InboundService',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'credentials'),
      GqlField(name: 'protocolId'),
      GqlField(name: 'externalAccountId'),
      GqlField(name: 'isEnabled'),
      GqlField(
        name: 'protocol',
        fields: [
          GqlField(name: 'id'),
          GqlField(name: 'name'),
          GqlField(name: 'color'),
          GqlField(name: 'isEnabled'),
          GqlField(name: 'operationMode'),
          GqlField(name: 'isImported'),
          GqlField(name: 'dynamicIcon', fragment: Avatar.fragment),
        ],
      ),
      GqlField(
        name: 'structure',
        fields: [
          GqlField(name: 'hasPosition'),
          GqlField(
            name: 'position',
            fields: [
              for (final field in ['latitude', 'longitude', 'speed', 'direction', 'altitude', 'satellites', 'hdop'])
                GqlField(name: field),
            ],
          ),
          GqlField(name: 'hasPayload'),
          GqlField(
            name: 'payload',
            fields: [
              GqlField(name: 'field'),
              GqlField(name: 'type'),
            ],
          ),
        ],
      ),
      GqlField(name: 'access', fragment: Access.idFragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all inbound services available to the authenticated user.
  ///
  /// Selects the lightweight [fragment]; add any other field with [extraFields]. Use [fetch] for
  /// the full record. Returns an empty list on any error. Errors are logged internally.
  static Future<List<InboundService>> fetchAll({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [extraFields] is the list of additional fields to fetch from the API, if any.
    List<GqlField>? extraFields,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'inboundServices')..add(
          GqlField(name: 'inboundServices')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment, fields: extraFields)),
        ),
        _serviceListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/InboundService/fetchAll(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical("layrz_sdk/InboundService/fetchAll(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the full record of this service with [detailedFragment].
  ///
  /// Returns `null` when the service is not found or on any error; a missing service reports
  /// [ApiStatus.notfound] through [onResponse].
  Future<InboundService?> fetch({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'inboundServices',
          variables: [
            GqlVariable(name: 'id', value: id, type: .id, isRequired: true),
          ],
        )..add(
          GqlField(name: 'inboundServices', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: detailedFragment)),
        ),
        _serviceListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/InboundService/fetch(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return null;
      }

      final result = response.result ?? [];
      if (result.isEmpty) {
        onResponse?.call(.notfound);
        return null;
      }

      return result.first;
    } catch (err, stack) {
      Log.critical("layrz_sdk/InboundService/fetch(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Toggles the transmission status ([isEnabled]) of this service.
  ///
  /// Returns `true` when the API reports success, `false` otherwise.
  Future<bool> toggle({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'toggleInboundService',
          variables: [
            GqlVariable(name: 'id', value: id, type: .id, isRequired: true),
          ],
        )..add(
          GqlField(name: 'toggleInboundService', args: {'id': 'id'})..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/InboundService/toggle(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (err, stack) {
      Log.critical("layrz_sdk/InboundService/toggle(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Generates the PDF manual of this service for the app [appId].
  ///
  /// Returns the manual URI, or `null` on any error; an empty result reports
  /// [ApiStatus.notfound] through [onResponse].
  Future<String?> generateManual({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [appId] is the ID of the app the manual is generated for.
    required String appId,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'generateManualForInboundService',
          variables: [
            GqlVariable(name: 'serviceId', value: id, type: .id, isRequired: true),
            GqlVariable(name: 'appId', value: appId, type: .id, isRequired: true),
          ],
        )..add(
          GqlField(name: 'generateManualForInboundService', args: {'serviceId': 'serviceId', 'appId': 'appId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'result')),
        ),
        (json) => json as String?,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/InboundService/generateManual(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return null;
      }

      final result = response.result;
      if (result == null || result.isEmpty) {
        onResponse?.call(.notfound);
        return null;
      }

      return result;
    } catch (err, stack) {
      Log.critical("layrz_sdk/InboundService/generateManual(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the inbound services with the given [ids].
  ///
  /// Returns `true` when the API reports success, `false` otherwise.
  static Future<bool> deleteMany({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [ids] are the IDs of the inbound services to delete.
    required List<String> ids,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'deleteInboundServices',
          variables: [
            GqlVariable(
              name: 'ids',
              value: ids,
              type: .list(of: .id),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: 'deleteInboundServices', args: {'ids': 'ids'})..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/InboundService/deleteMany(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (err, stack) {
      Log.critical("layrz_sdk/InboundService/deleteMany(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end
}
