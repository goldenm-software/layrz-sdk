part of '../../ats.dart';

// coverage:ignore-start
/// Runs the ATS list query [operation] filtered by assets and dates, decoding each item with [fromJson].
///
/// [assetsArg] names the asset filter argument (`assetsIds` or `fromAssetIds`). Items that do not decode are
/// logged and skipped. Returns an empty list on any error and reports the [ApiStatus] through [onResponse].
Future<List<T>> _atsFetchMonitorEntities<T>({
  required String operation,
  required String caller,
  required List<GqlField> fields,
  required T Function(Map<String, dynamic>) fromJson,
  required String apiToken,
  required Uri uri,
  String assetsArg = 'assetsIds',
  GqlVariableType? assetsType,
  bool assetsRequired = false,
  List<String>? assetsIds,
  DateTime? startAt,
  DateTime? endAt,
  ValueChanged<ApiStatus>? onResponse,
}) async {
  final connector = LayrzConnector(uri: uri, apiToken: apiToken);
  try {
    final response = await connector.query(
      GqlQuery(
        name: operation,
        variables: [
          GqlVariable(
            name: assetsArg,
            value: assetsIds,
            type: assetsType ?? .list(of: .id),
            isRequired: assetsRequired,
          ),
          GqlVariable(name: 'startAt', value: _atsUnixOrNull(startAt), type: .unix),
          GqlVariable(name: 'endAt', value: _atsUnixOrNull(endAt), type: .unix),
        ],
      )..add(
        GqlField(name: operation, args: {assetsArg: assetsArg, 'startAt': 'startAt', 'endAt': 'endAt'})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors'))
          ..add(GqlField(name: 'result', fields: fields)),
      ),
      (json) => _atsDecodeList<T>(json, fromJson, caller),
    );

    if (response.status != .ok) {
      Log.warning("layrz_sdk/$caller(): API returned status ${response.status}");
      onResponse?.call(response.status);
      return [];
    }

    return response.result ?? [];
  } catch (err, stack) {
    Log.critical("layrz_sdk/$caller(): General exception => $err\n$stack");
    onResponse?.call(.internalError);
    return [];
  }
}
// coverage:ignore-end

double? _atsUnixOrNull(DateTime? date) => date == null ? null : date.millisecondsSinceEpoch / 1000;

/// Decodes each item of [json] on its own, logging and skipping the ones that do not match the model.
List<T> _atsDecodeList<T>(Object? json, T Function(Map<String, dynamic>) fromJson, String caller) {
  if (json is! List) return [];
  final items = <T>[];
  for (final entry in json) {
    if (entry is! Map) continue;
    try {
      items.add(fromJson(Map<String, dynamic>.from(entry)));
    } catch (err) {
      Log.warning("layrz_sdk/$caller(): skipped an item that does not decode => $err");
    }
  }
  return items;
}
