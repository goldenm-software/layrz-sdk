part of '../mappit.dart';

/// Mutable input to create or update a [MappitFreeDay] (`MappitFreeDayInput`).
///
/// The backend replaces the linked sellers with [assetsIds] on every save, so build it from the full
/// record with [MappitFreeDayInput.fromFreeDay].
@unfreezed
abstract class MappitFreeDayInput with _$MappitFreeDayInput {
  MappitFreeDayInput._();

  /// Constructs a mutable [MappitFreeDayInput].
  factory MappitFreeDayInput({
    /// [id] represents the free day ID, or null when creating a new one.
    @JsonKey(includeIfNull: false) String? id,

    /// [name] represents the free day name.
    @Default('') String name,

    /// [date] represents the free day date, sent as `YYYY-MM-DD`.
    @DateConverter() required DateTime date,

    /// [assetsIds] represents the IDs of the sellers linked to the free day.
    @Default([]) List<String> assetsIds,
  }) = _MappitFreeDayInput;

  /// Deserializes a [MappitFreeDayInput] from a JSON map.
  factory MappitFreeDayInput.fromJson(Map<String, dynamic> json) => _$MappitFreeDayInputFromJson(json);

  /// Builds an input from [day], keeping its sellers ([MappitFreeDay.assetsIds], else [MappitFreeDay.assets]).
  factory MappitFreeDayInput.fromFreeDay(MappitFreeDay day) => MappitFreeDayInput(
    id: day.id,
    name: day.name,
    date: day.date,
    assetsIds: [...?day.assetsIds ?? day.assets?.map((asset) => asset.id)],
  );

  // coverage:ignore-start
  /// Creates (`addMappitFreeDay`) or updates (`editMappitFreeDay`) this free day, picking the operation
  /// from [id].
  ///
  /// Returns `(status, errors, freeDay)`; the free day is `null` when the API does not answer ok.
  Future<StandardResponse<MappitFreeDay>> save({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Mappit (or public Layrz) GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final operation = id == null ? 'addMappitFreeDay' : 'editMappitFreeDay';
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: operation,
          variables: [
            GqlVariable(
              name: 'data',
              value: toJson(),
              type: .input(of: 'MappitFreeDayInput'),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: operation, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fields: MappitFreeDay.fields)),
        ),
        (json) => json is Map ? MappitFreeDay.fromJson(Map<String, dynamic>.from(json)) : null,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/MappitFreeDayInput/save(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, response.errors, response.result);
    } catch (err, stack) {
      Log.critical("layrz_sdk/MappitFreeDayInput/save(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
