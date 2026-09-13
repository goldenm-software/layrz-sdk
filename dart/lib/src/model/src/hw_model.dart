part of '../model.dart';

/// Immutable hardware model data for the Layrz device catalog.
///
/// [HwModel] represents a named grouping of device models, identified by a
/// unique [id] and [name]. The [modelsIds] field holds the identifiers of the
/// device models that belong to this hardware model, while [models] holds the
/// full [Model] entries themselves. Use [HwModelInput] for creating or
/// updating hardware models.
@freezed
abstract class HwModel with _$HwModel {
  /// Private constructor used by the code generator.
  const HwModel._();

  /// Constructs an immutable [HwModel].
  const factory HwModel({
    /// Unique identifier for this hardware model.
    required String id,

    /// Human-readable name of the hardware model.
    required String name,

    /// Identifiers of the device models that belong to this hardware model.
    @Default([]) List<String> modelsIds,

    /// Device models that belong to this hardware model.
    @Default([]) List<Model> models,
  }) = _HwModel;

  /// Deserializes an [HwModel] from a JSON map.
  factory HwModel.fromJson(Map<String, dynamic> json) => _$HwModelFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying hardware model fields, including
  /// the nested device models via [Model.reducedFragment].
  static GqlFragment get fragment => GqlFragment(
    name: 'hwModelFragment',
    onType: 'HwModel',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'modelsIds'),
      GqlField(name: 'models', fragment: Model.reducedFragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Reduced GraphQL fragment definition for querying only the identifying
  /// fields of a hardware model (`id` and `name`).
  static GqlFragment get reducedFragment => GqlFragment(
    name: 'hwModelFragment',
    onType: 'HwModel',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all hardware models available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`hardwareModels`) to retrieve every
  /// [HwModel] visible to the user. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure. This allows the
  /// caller to observe success or error states without relying on the return
  /// value alone.
  ///
  /// Returns an empty list on any error (network failure, authentication
  /// failure, or server error). Errors are logged internally.
  static Future<List<HwModel>> fetchAll({
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
    final connector = LayrzConnector(apiToken: apiToken, uri: uri);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'hardwareModels',
          fields: [
            GqlField(
              name: 'hardwareModels',
              fields: [
                GqlField(name: 'status'),
                GqlField(name: 'result', fragment: fragment),
              ],
            ),
          ],
        ),
        _hwModelListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical(
        "layrz_sdk/HwModel/fetchAll(): Error fetching hardware models: $err\n$stack",
      );
      onResponse?.call(.internalError);
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single hardware model by its [id].
  ///
  /// Makes an authenticated GraphQL query (`hardwareModels`) filtered by [id].
  /// The backend always returns `result` as a list, even when filtered down to
  /// a single entity, so the first element (if any) is returned. Authentication
  /// is carried solely via the connector's `Authorization` header, built from
  /// [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns `null` on any error (network failure, authentication failure,
  /// server error, or no matching hardware model). Errors are logged
  /// internally.
  static Future<HwModel?> fetch({
    /// The ID of the [HwModel] to fetch.
    required String id,

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
    final connector = LayrzConnector(apiToken: apiToken, uri: uri);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: 'hardwareModels',
        )..add(
          GqlField(name: 'hardwareModels', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/HwModel/fetch(): No result in list");
            return null;
          }
          return HwModel.fromJson(
            Map<String, dynamic>.from(resultList.first as Map),
          );
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (err, stack) {
      Log.critical(
        "layrz_sdk/HwModel/fetch(): Error fetching hardware model: $err\n$stack",
      );
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end
}

/// [_hwModelDecoder] decodes a single-object `result` payload into an [HwModel].
/// Used by result-bearing mutations (add/edit-style).
HwModel _hwModelDecoder(Object? json) {
  return HwModel.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_hwModelListDecoder] decodes a raw listing `result` payload into a list of [HwModel].
/// Used by listing queries (fetchAll).
List<HwModel> _hwModelListDecoder(Object? json) {
  return List<HwModel>.from(
    (json as List? ?? []).map(
      (e) => HwModel.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}
