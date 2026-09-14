part of '../link_shortcut.dart';

/// Mutable input data for creating or updating a [LinkShortcut].
///
/// [LinkShortcutInput] mirrors the fields of [LinkShortcut] but is mutable and
/// provides sensible defaults, making it suitable for form binding before
/// submission via [save]. When [id] is null, [save] creates a new link
/// shortcut; otherwise it updates the existing one.
@unfreezed
abstract class LinkShortcutInput with _$LinkShortcutInput {
  /// Private constructor used by the code generator.
  const LinkShortcutInput._();

  /// Constructs a mutable [LinkShortcutInput].
  factory LinkShortcutInput({
    /// Unique identifier for this link shortcut, or null when creating a new
    /// one.
    String? id,

    /// The short code used to reach this shortcut. Defaults to an empty
    /// string.
    @Default('') String code,

    /// The destination URL this shortcut redirects to, or null if not set.
    String? redirectTo,
  }) = _LinkShortcutInput;

  /// Deserializes a [LinkShortcutInput] from a JSON map.
  factory LinkShortcutInput.fromJson(Map<String, dynamic> json) => _$LinkShortcutInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this link shortcut on the server.
  ///
  /// Sends `addGoldenmShortcut` when [id] is null, or `editGoldenmShortcut` when [id] is
  /// set, both with this input serialized as the `LinkShortcutInput` GraphQL
  /// input type. Authentication is carried solely via the connector's
  /// `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, LinkShortcut?)`:
  /// on an internal error, `(ApiStatus.internalError, null, null)`; on any
  /// other non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedLinkShortcut)`.
  Future<StandardResponse<LinkShortcut>> save({
    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response. Called
    /// once per invocation, regardless of success or failure.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = id == null ? 'addGoldenmShortcut' : 'editGoldenmShortcut';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'GoldenmLinkShortcutInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: operation,
        )..add(
          GqlField(
              name: operation,
              args: {'data': 'data'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: LinkShortcut.fragment)),
        ),
        _linkShortcutDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status);
        return (ApiStatus.internalError, null, null);
      }

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, response.errors, response.result);
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/LinkShortcutInput/save(): General exception => $e\n$stack",
      );
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
