part of '../scripting.dart';

/// API callers to lint and run LCL formulas and Python scripts.
///
/// Authentication is carried solely via the connector's `Authorization` header, built from the `apiToken` of each
/// caller.
abstract final class Scripting {
  // coverage:ignore-start
  /// Lints an LCL [formula] without running it.
  ///
  /// Returns the list of [LintError] found; an empty list means the formula is valid. Also returns an empty list
  /// on any transport error ([onResponse] receives the status when it is not ok).
  static Future<List<LintError>> lintLcl({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// The LCL formula to lint.
    required String formula,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(name: 'formula', type: .string, isRequired: true, value: formula),
          ],
          name: 'lintLclFormula',
        )..add(
          GqlField(name: 'lintLclFormula', args: {'formula': 'formula'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(_lintErrorsField()),
        ),
        _lintErrorListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/Scripting/lintLcl(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Lints a Python [script] for the given [scope] without running it.
  ///
  /// [source] is only sent when not null; the backend defaults to [PythonSource.messages]. Returns the list of
  /// [LintError] found; an empty list means the script is valid. Also returns an empty list on any transport error
  /// ([onResponse] receives the status when it is not ok).
  static Future<List<LintError>> lintPython({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// The Python script to lint.
    required String script,

    /// The scope the script is meant to run in.
    required PythonScope scope,

    /// Optional kind of data the script receives.
    PythonSource? source,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(name: 'script', type: .string, isRequired: true, value: script),
            GqlVariable(
              name: 'scope',
              type: GqlVariableType.enum_(of: 'PythonScope'),
              isRequired: true,
              value: scope.toJson(),
            ),
            if (source != null)
              GqlVariable(
                name: 'source',
                type: GqlVariableType.enum_(of: 'PythonSource'),
                isRequired: false,
                value: source.toJson(),
              ),
          ],
          name: 'lintPythonScript',
        )..add(
          GqlField(
              name: 'lintPythonScript',
              args: {'script': 'script', 'scope': 'scope', if (source != null) 'source': 'source'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(_lintErrorsField()),
        ),
        _lintErrorListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/Scripting/lintPython(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Runs an LCL [formula] against the asset identified by [assetId].
  ///
  /// Returns the dynamic value produced by the formula (a string, number or JSON structure), or `null` on any
  /// error ([onResponse] receives the status when it is not ok). A formula that legitimately evaluates to `null`
  /// is indistinguishable from a failure in the return value.
  static Future<dynamic> runLcl({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// The LCL formula to run.
    required String formula,

    /// The identifier of the asset the formula runs against.
    required String assetId,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(name: 'formula', type: .string, isRequired: true, value: formula),
            GqlVariable(name: 'assetId', type: .id, isRequired: true, value: assetId),
          ],
          name: 'runLclFormula',
        )..add(
          GqlField(name: 'runLclFormula', args: {'formula': 'formula', 'assetId': 'assetId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result')),
        ),
        _dynamicValueDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/Scripting/runLcl(): General exception => $e\n$stack",
      );
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Runs a Python [script] against the asset identified by [assetId].
  ///
  /// [maxHistorySearch] is sent as whole seconds and [source] as its wire value; both are only sent when not
  /// null, so the backend defaults (one hour and [PythonSource.messages]) apply otherwise. Returns the dynamic
  /// value produced by the script (a string, number or JSON structure), or `null` on any error ([onResponse]
  /// receives the status when it is not ok).
  static Future<dynamic> runPython({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// The Python script to run.
    required String script,

    /// The identifier of the asset the script runs against.
    required String assetId,

    /// The scope the script runs in.
    required PythonScope scope,

    /// Optional maximum interval of history the script is allowed to search.
    Duration? maxHistorySearch,

    /// Optional kind of data the script receives.
    PythonSource? source,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(name: 'script', type: .string, isRequired: true, value: script),
            GqlVariable(name: 'assetId', type: .id, isRequired: true, value: assetId),
            GqlVariable(
              name: 'scope',
              type: GqlVariableType.enum_(of: 'PythonScope'),
              isRequired: true,
              value: scope.toJson(),
            ),
            if (maxHistorySearch != null)
              GqlVariable(
                name: 'maxHistorySearch',
                type: .duration,
                isRequired: false,
                value: maxHistorySearch.inSeconds,
              ),
            if (source != null)
              GqlVariable(
                name: 'source',
                type: GqlVariableType.enum_(of: 'PythonSource'),
                isRequired: false,
                value: source.toJson(),
              ),
          ],
          name: 'runPythonScript',
        )..add(
          GqlField(
              name: 'runPythonScript',
              args: {
                'script': 'script',
                'assetId': 'assetId',
                'scope': 'scope',
                if (maxHistorySearch != null) 'maxHistorySearch': 'maxHistorySearch',
                if (source != null) 'source': 'source',
              },
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result')),
        ),
        _dynamicValueDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/Scripting/runPython(): General exception => $e\n$stack",
      );
      return null;
    }
  }
  // coverage:ignore-end
}

// coverage:ignore-start
/// Builds the `result` field selecting every [LintError] field.
GqlField _lintErrorsField() {
  return GqlField(name: 'result')
    ..add(GqlField(name: 'code'))
    ..add(GqlField(name: 'line'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'expected'))
    ..add(GqlField(name: 'received'));
}
// coverage:ignore-end

List<LintError> _lintErrorListDecoder(Object? json) {
  return List<LintError>.from(
    (json as List? ?? []).map(
      (e) => LintError.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}

dynamic _dynamicValueDecoder(Object? json) => json;
