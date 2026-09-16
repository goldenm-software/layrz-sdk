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
