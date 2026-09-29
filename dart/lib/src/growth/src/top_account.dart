part of '../growth.dart';

/// Reference to a top-level account shown in the growth metrics.
@freezed
abstract class TopAccount with _$TopAccount {
  /// Constructs an immutable [TopAccount].
  ///
  /// Parameters:
  ///   - [id]: Unique identifier of the account
  ///   - [name]: Display name of the account
  const factory TopAccount({
    required String id,
    required String name,
  }) = _TopAccount;

  /// Deserializes a [TopAccount] from a JSON map.
  factory TopAccount.fromJson(Map<String, dynamic> json) =>
      _$TopAccountFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying top account fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'topAccountFragment',
    onType: 'TopAccount',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
    ],
  );
  // coverage:ignore-end
}
