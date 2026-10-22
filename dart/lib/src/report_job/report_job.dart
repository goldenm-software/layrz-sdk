/// Asynchronous report jobs: start one with [ReportJob.run] and poll it with [ReportJob.poll].
library;

import 'package:flutter/widgets.dart' show ValueChanged, visibleForTesting;
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';

/// Outcome of a single [ReportJob.poll] attempt.
///
/// [status] is the raw backend status: `OK` (done, [fileUri] set), `UNPROCESSABLE_ENTITY` (still
/// processing, see [ReportJob.pendingStatus]) or any other value (failed).
typedef ReportJobPollResult = ({String status, String? fileUri});

/// GraphQL callers for the `runReportJob` mutation and the `pollReportJob` query.
abstract final class ReportJob {
  /// The raw [ReportJobPollResult.status] of a job that is still processing.
  static const String pendingStatus = 'UNPROCESSABLE_ENTITY';

  // coverage:ignore-start
  /// Starts the report job described by [data] (a `ReportJobInput`) and returns its job ID.
  static Future<(ApiStatus, String?)> run({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [data] is the `ReportJobInput` payload.
    required Map<String, dynamic> data,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    const mutationName = 'runReportJob';
    try {
      final response = await connector.mutate<String?>(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(
              name: 'data',
              value: data,
              type: .input(of: 'ReportJobInput'),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: mutationName, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result')),
        ),
        (json) => json?.toString(),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/ReportJob/run(): API returned status ${response.status} => ${response.errors}");
        onResponse?.call(response.status);
        return (response.status, null);
      }

      return (ApiStatus.ok, response.result);
    } catch (err, stack) {
      Log.critical("layrz_sdk/ReportJob/run(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null);
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Performs one poll of the report job [jobId]; bounding the polling is the caller's job.
  ///
  /// Use the same token as [run]: the API filters jobs by owner. Reads the raw status because
  /// [pendingStatus] has no [ApiStatus] value; failures answer `INTERNAL_ERROR`.
  static Future<ReportJobPollResult> poll({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [jobId] is the ID returned by [run].
    required String jobId,
  }) async {
    const queryName = 'pollReportJob';
    try {
      final response = await LayrzConnector(uri: uri, apiToken: apiToken).perform(
        GqlQuery(
          name: queryName,
          variables: [GqlVariable(name: 'jobId', value: jobId, type: .uuid, isRequired: true)],
        )..add(
          GqlField(name: queryName, args: {'jobId': 'jobId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fields: [GqlField(name: 'fileUri')],
              ),
            ),
        ),
      );
      final data = response.data;
      final body = data is Map ? data['data'] : null;
      final payload = body is Map ? body[queryName] : null;
      if (response.statusCode != 200 || payload is! Map) {
        Log.warning("layrz_sdk/ReportJob/poll(): unexpected response (${response.statusCode}) => $data");
        return (status: 'INTERNAL_ERROR', fileUri: null);
      }

      return parsePollPayload(payload);
    } catch (err, stack) {
      Log.critical("layrz_sdk/ReportJob/poll(): General exception => $err\n$stack");
      return (status: 'INTERNAL_ERROR', fileUri: null);
    }
  }
  // coverage:ignore-end

  /// Reads a `pollReportJob` [payload] (`{status, errors, result {fileUri}}`).
  @visibleForTesting
  static ReportJobPollResult parsePollPayload(Map<dynamic, dynamic> payload) {
    final result = payload['result'];
    final fileUri = result is Map ? result['fileUri'] : null;
    return (status: payload['status'] as String? ?? 'INTERNAL_ERROR', fileUri: fileUri is String ? fileUri : null);
  }
}
