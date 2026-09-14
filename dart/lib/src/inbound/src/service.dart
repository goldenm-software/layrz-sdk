part of '../inbound.dart';

/// [InboundService] is an assigned inbound integration between an asset ecosystem and an
/// [InboundProtocol], carrying its own credentials, structure and access rules.
@freezed
abstract class InboundService with _$InboundService {
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
}

/// [InboundServiceInput] is the mutable input variant of [InboundService], used to create or
/// edit an inbound service.
@unfreezed
abstract class InboundServiceInput with _$InboundServiceInput {
  factory InboundServiceInput({
    /// [id] is the ID of the entity. This ID is unique. Should be null when creating a new entity.
    String? id,

    /// [name] is the assigned service name, cannot be translated for other languages.
    @Default('') String name,

    /// [credentials] is the credential object, check the documentation for more information.
    @Default(<String, dynamic>{}) @DynamicMapConverter() Map<String, dynamic> credentials,

    /// [externalAccountId] is the ID of the external account.
    String? externalAccountId,

    /// [protocolId] is the ID of the protocol.
    String? protocolId,

    /// [structure] is the structure of the inbound protocol, only used for Omega REST inbound protocol.
    required InboundStructureInput structure,
  }) = _InboundServiceInput;

  /// [fromJson] builds an [InboundServiceInput] from a decoded JSON [json] map.
  factory InboundServiceInput.fromJson(Map<String, dynamic> json) => _$InboundServiceInputFromJson(json);
}
