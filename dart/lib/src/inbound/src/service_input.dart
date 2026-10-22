part of '../inbound.dart';

/// [InboundServiceInput] is the mutable input variant of [InboundService], used to create or
/// edit an inbound service.
@unfreezed
abstract class InboundServiceInput with _$InboundServiceInput {
  InboundServiceInput._();

  /// Constructs a mutable [InboundServiceInput].
  factory InboundServiceInput({
    /// [id] is the ID of the entity. This ID is unique. Should be null when creating a new entity.
    String? id,

    /// [name] is the assigned service name, cannot be translated for other languages.
    @Default('') String name,

    /// [credentials] is the credential object, check the documentation for more information.
    ///
    /// [InboundServiceInput.fromJson] deep copies it, so `fromJson(input.toJson())` is a safe copy.
    @Default(<String, dynamic>{}) @_InboundCredentialsConverter() Map<String, dynamic> credentials,

    /// [externalAccountId] is the ID of the external account.
    String? externalAccountId,

    /// [protocolId] is the ID of the protocol.
    String? protocolId,

    /// [structure] is the structure of the inbound protocol, only used for Omega REST inbound protocol.
    required InboundStructureInput structure,
  }) = _InboundServiceInput;

  /// [fromJson] builds an [InboundServiceInput] from a decoded JSON [json] map.
  factory InboundServiceInput.fromJson(Map<String, dynamic> json) => _$InboundServiceInputFromJson(json);

  /// Builds an [InboundServiceInput] that edits [service], deep copying its [InboundService.credentials].
  ///
  /// Pass the full record from [InboundService.fetch]: a service from [InboundService.fetchAll] lacks
  /// the credentials and structure, so saving would clear them.
  factory InboundServiceInput.fromInboundService(InboundService service) {
    final structure = service.structure;
    final position = structure?.position;

    return InboundServiceInput(
      id: service.id,
      name: service.name,
      credentials: _deepCopyMap(service.credentials ?? const {}),
      externalAccountId: service.externalAccountId,
      protocolId: service.protocolId ?? service.protocol?.id,
      structure: InboundStructureInput(
        hasPosition: structure?.hasPosition ?? true,
        hasPayload: structure?.hasPayload ?? false,
        position: position == null
            ? InboundPositionStructureInput()
            : InboundPositionStructureInput(
                latitude: position.latitude,
                longitude: position.longitude,
                speed: position.speed,
                direction: position.direction,
                altitude: position.altitude,
                satellites: position.satellites,
                hdop: position.hdop,
              ),
        payload: [
          for (final item in structure?.payload ?? const <InboundPayloadStructure>[])
            InboundPayloadStructureInput(field: item.field, type: item.type),
        ],
      ),
    );
  }

  // coverage:ignore-start
  /// Creates the service (`addInboundService`) when [id] is `null`, otherwise updates it
  /// (`editInboundService`).
  ///
  /// Returns the [ApiStatus], the field errors (if any) and the saved [InboundService], selected
  /// with [InboundService.detailedFragment].
  Future<StandardResponse<InboundService>> save({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(apiToken: apiToken, uri: uri);
    final mutationName = id == null ? 'addInboundService' : 'editInboundService';
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(
              name: 'data',
              value: toJson(),
              type: .input(of: 'InboundServiceInput'),
              isRequired: true,
            ),
          ],
          fields: [
            GqlField(name: mutationName, args: {'data': 'data'})
              ..add(GqlField(name: 'status'))
              ..add(GqlField(name: 'errors'))
              ..add(GqlField(name: 'result', fragment: InboundService.detailedFragment)),
          ],
        ),
        _serviceDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, null, response.result);
    } catch (err, stack) {
      Log.critical("layrz_sdk/InboundServiceInput/save(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
