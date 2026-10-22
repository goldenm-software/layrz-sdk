part of '../inbound.dart';

/// [_protocolListDecoder] decodes a raw listing `result` payload into a list of [InboundProtocol].
/// Used by listing queries (fetchAll) and by single-item [InboundProtocol.fetch] (list-first decoding).
List<InboundProtocol> _protocolListDecoder(Object? json) {
  return List<InboundProtocol>.from(
    (json as List? ?? []).map((e) => InboundProtocol.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

/// [_protocolDecoder] decodes a single-object `result` payload into an [InboundProtocol].
/// Used by result-bearing mutations (add/edit-style), e.g. [InboundProtocolInput.save].
InboundProtocol _protocolDecoder(Object? json) {
  return InboundProtocol.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_serviceListDecoder] decodes a raw listing `result` payload into a list of [InboundService].
/// Used by [InboundService.fetchAll] and by single-item [InboundService.fetch] (list-first decoding).
List<InboundService> _serviceListDecoder(Object? json) {
  return List<InboundService>.from(
    (json as List? ?? []).map((e) => InboundService.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

/// [_serviceDecoder] decodes a single-object `result` payload into an [InboundService].
/// Used by [InboundServiceInput.save].
InboundService _serviceDecoder(Object? json) {
  return InboundService.fromJson(Map<String, dynamic>.from(json as Map));
}
