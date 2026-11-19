/// Asynchronous report jobs: start one with [ReportJob.run] (or [ReportJob.runInput] with a typed
/// [ReportJobInput]) and poll it with [ReportJob.poll] (or [ReportJob.pollWithPreview] to also get the preview).
library;

import 'package:flutter/widgets.dart' show ValueChanged, visibleForTesting;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/report_template/report_template.dart';

part 'report_job.freezed.dart';
part 'report_job.g.dart';

/// Outcome of a single [ReportJob.poll] attempt.
///
/// [status] is the raw backend status: `OK` (done, [fileUri] set), `UNPROCESSABLE_ENTITY` (still
/// processing, see [ReportJob.pendingStatus]) or any other value (failed).
typedef ReportJobPollResult = ({String status, String? fileUri});

/// Outcome of a single [ReportJob.pollWithPreview] attempt: the same as [ReportJobPollResult] plus the [preview]
/// of the report, only present when the job is done.
typedef ReportJobPreviewPollResult = ({String status, String? fileUri, ReportPreview? preview});

/// Mutable input data to start a report job, the `ReportJobInput` of the backend.
///
/// Provide exactly one of [templateId] (a custom template) or [templateCode] (a default template). The backend
/// rejects ranges where [startAt] is not before [endAt] and ranges longer than 90 days.
@unfreezed
abstract class ReportJobInput with _$ReportJobInput {
  /// Private constructor, required to add custom getters/methods to the class.
  const ReportJobInput._();

  /// Constructs a mutable [ReportJobInput].
  factory ReportJobInput({
    /// Is the language ID that overrides the language detected for the user.
    String? languageId,

    /// Is the ID of the app from which the report is requested.
    String? appId,

    /// Is the ID of the custom report template. Mutually exclusive with [templateCode].
    String? templateId,

    /// Is the code of the default report template. Mutually exclusive with [templateId].
    String? templateCode,

    /// Is the start of the reported range. Sent as Unix seconds.
    @TimestampConverter() required DateTime startAt,

    /// Is the end of the reported range. Sent as Unix seconds.
    @TimestampConverter() required DateTime endAt,

    /// Is the list of asset IDs to report. Defaults to an empty list.
    @Default([]) List<String> assetsIds,

    /// Is the list of outbound service IDs to report. Defaults to an empty list.
    @Default([]) List<String> outboundServicesIds,

    /// Is the list of function IDs to run. Defaults to an empty list.
    @Default([]) List<String> functionsIds,

    /// Is the difference, in minutes, between UTC and the timezone of the report. Defaults to `0` (UTC).
    @Default(0) int utcOffset,
  }) = _ReportJobInput;

  /// Deserializes a [ReportJobInput] from a JSON map.
  factory ReportJobInput.fromJson(Map<String, dynamic> json) => _$ReportJobInputFromJson(json);

  /// The JSON payload sent to the server: [toJson] without the `null` values, so the unused template identifier
  /// is omitted.
  @visibleForTesting
  Map<String, dynamic> get payload => {
    for (final entry in toJson().entries)
      if (entry.value != null) entry.key: entry.value,
  };
}

/// GraphQL callers for the `runReportJob` mutation and the `pollReportJob` query.
abstract final class ReportJob {
  /// The raw [ReportJobPollResult.status] of a job that is still processing.
  static const String pendingStatus = 'UNPROCESSABLE_ENTITY';

  static const String _runName = 'runReportJob';
  static const String _pollName = 'pollReportJob';

  /// Builds the `runReportJob` mutation with [data] as `ReportJobInput!`, the type the backend declares.
  @visibleForTesting
  static GqlMutation runMutation(Map<String, dynamic> data) =>
      GqlMutation(
        name: _runName,
        variables: [
          GqlVariable(
            name: 'data',
            value: data,
            type: .input(of: 'ReportJobInput'),
            isRequired: true,
          ),
        ],
      )..add(
        GqlField(name: _runName, args: {'data': 'data'})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors'))
          ..add(GqlField(name: 'result')),
      );

  /// Builds the `pollReportJob` query that selects only the `fileUri` of the result.
  @visibleForTesting
  static GqlQuery pollQuery(String jobId) => _pollQuery(jobId, [GqlField(name: 'fileUri')]);

  /// Builds the `pollReportJob` query that selects the `fileUri` and the full `preview` of the result.
  @visibleForTesting
  static GqlQuery pollWithPreviewQuery(String jobId) => _pollQuery(jobId, [
    GqlField(name: 'fileUri'),
    GqlField(name: 'preview')
      ..add(GqlField(name: 'name'))
      ..add(
        GqlField(name: 'pages')
          ..add(GqlField(name: 'name'))
          ..add(
            GqlField(name: 'headers')
              ..add(GqlField(name: 'content'))
              ..add(GqlField(name: 'color'))
              ..add(GqlField(name: 'textColor')),
          )
          ..add(
            GqlField(name: 'rows')..add(
              GqlField(name: 'content')
                ..add(GqlField(name: 'content'))
                ..add(GqlField(name: 'dataType'))
                ..add(GqlField(name: 'color'))
                ..add(GqlField(name: 'textColor')),
            ),
          ),
      ),
  ]);

  static GqlQuery _pollQuery(String jobId, List<GqlField> resultFields) =>
      GqlQuery(
        name: _pollName,
        variables: [GqlVariable(name: 'jobId', value: jobId, type: .uuid, isRequired: true)],
      )..add(
        GqlField(name: _pollName, args: {'jobId': 'jobId'})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors'))
          ..add(GqlField(name: 'result', fields: resultFields)),
      );

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
    try {
      final response = await connector.mutate<String?>(runMutation(data), (json) => json?.toString());

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
  /// Starts the report job described by the typed [data] and returns its job ID.
  ///
  /// Same as [run], serializing [ReportJobInput.payload] as the `ReportJobInput` payload.
  static Future<(ApiStatus, String?)> runInput({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [data] is the typed `ReportJobInput`.
    required ReportJobInput data,
  }) => run(apiToken: apiToken, uri: uri, onResponse: onResponse, data: data.payload);
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
    final payload = await _perform(apiToken: apiToken, uri: uri, query: pollQuery(jobId));
    if (payload == null) return (status: 'INTERNAL_ERROR', fileUri: null);

    return parsePollPayload(payload);
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Performs one poll of the report job [jobId] like [poll], also selecting the report `preview`.
  ///
  /// The `preview` is only present when the job is done and it is `null` when it cannot be decoded.
  static Future<ReportJobPreviewPollResult> pollWithPreview({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [jobId] is the ID returned by [run].
    required String jobId,
  }) async {
    final payload = await _perform(apiToken: apiToken, uri: uri, query: pollWithPreviewQuery(jobId));
    if (payload == null) return (status: 'INTERNAL_ERROR', fileUri: null, preview: null);

    return parsePollPreviewPayload(payload);
  }
  // coverage:ignore-end

  // coverage:ignore-start
  static Future<Map<dynamic, dynamic>?> _perform({
    required String apiToken,
    required Uri uri,
    required GqlQuery query,
  }) async {
    try {
      final response = await LayrzConnector(uri: uri, apiToken: apiToken).perform(query);
      final data = response.data;
      final body = data is Map ? data['data'] : null;
      final payload = body is Map ? body[_pollName] : null;
      if (response.statusCode != 200 || payload is! Map) {
        Log.warning("layrz_sdk/ReportJob/poll(): unexpected response (${response.statusCode}) => $data");
        return null;
      }

      return payload;
    } catch (err, stack) {
      Log.critical("layrz_sdk/ReportJob/poll(): General exception => $err\n$stack");
      return null;
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

  /// Reads a `pollReportJob` [payload] (`{status, errors, result {fileUri, preview}}`). A `preview` that cannot be
  /// decoded is read as `null` and does not hide the status or the file.
  @visibleForTesting
  static ReportJobPreviewPollResult parsePollPreviewPayload(Map<dynamic, dynamic> payload) {
    final base = parsePollPayload(payload);
    final result = payload['result'];
    final rawPreview = result is Map ? result['preview'] : null;

    ReportPreview? preview;
    if (rawPreview is Map) {
      try {
        preview = ReportPreview.fromJson(Map<String, dynamic>.from(rawPreview));
      } catch (err, stack) {
        Log.warning("layrz_sdk/ReportJob/parsePollPreviewPayload(): undecodable preview => $err\n$stack");
      }
    }

    return (status: base.status, fileUri: base.fileUri, preview: preview);
  }
}
