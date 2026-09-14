part of '../operations.dart';

/// Decodes a raw listing `result` payload into a list of [Operation].
///
/// Used by listing queries (`fetch`, `fetchAll`).
List<Operation> _operationListDecoder(Object? json) {
  return List<Operation>.from(
    (json as List).map((e) {
      return Operation.fromJson(e as Map<String, dynamic>);
    }),
  );
}
