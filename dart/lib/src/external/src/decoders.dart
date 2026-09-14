part of '../external.dart';

/// [_externalAccountListDecoder] decodes a raw listing `result` payload into a list of [ExternalAccount].
/// Used by listing queries (fetch/fetchAll, which both return `result` as a list).
List<ExternalAccount> _externalAccountListDecoder(Object? json) {
  if (json is! List) return [];
  return json.map((e) => ExternalAccount.fromJson(e as Map<String, dynamic>)).toList();
}

/// [_externalAccountDecoder] decodes a single-object `result` payload into an [ExternalAccount].
/// Used by result-bearing mutations (save-style).
ExternalAccount? _externalAccountDecoder(Object? json) {
  if (json is! Map<String, dynamic>) return null;
  return ExternalAccount.fromJson(json);
}
