part of '../sensors.dart';

/// Mutable input data for creating or updating a [Sensor].
///
/// [SensorInput] mirrors the fields of [Sensor] but is mutable and provides sensible defaults,
/// making it suitable for form binding before submission via [save]. When [id] is `null`, [save] creates a new
/// sensor; otherwise it updates the existing one.
@unfreezed
abstract class SensorInput with _$SensorInput {
  /// Private constructor used by the code generator.
  const SensorInput._();

  /// Constructs a mutable [SensorInput].
  factory SensorInput({
    /// Unique identifier for this sensor, or `null` when creating a new one.
    String? id,

    /// [assetId] is the id of the asset this sensor belongs to.
    String? assetId,

    /// [name] of the sensor. Defaults to an empty string.
    @Default('') String name,

    /// [slug] of the sensor. Defaults to an empty string.
    @Default('') String slug,

    /// [measuringUnit] of the sensor. Defaults to an empty string.
    @Default('') String measuringUnit,

    /// [type] of the sensor. Defaults to [SensorType.constant].
    @JsonKey(unknownEnumValue: SensorType.constant) @Default(SensorType.constant) SensorType type,

    /// [subtype] of the sensor. Defaults to [SensorSubType.raw].
    @JsonKey(unknownEnumValue: SensorSubType.raw) @Default(SensorSubType.raw) SensorSubType subtype,

    /// [parameter] of the sensor. Defaults to an empty string.
    @Default('') String parameter,

    /// [iterationCycle] of the sensor. Defaults to `1`.
    @Default(1) int iterationCycle,

    /// [formula] is the LCL formula to execute. Defaults to an empty string.
    @Default('') String formula,

    /// [script] is the script to execute. Defaults to an empty string.
    @Default('') String script,

    /// [icon] of the sensor.
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// [contentType] is the content type of the sensor.
    String? contentType,

    /// [ranges] of the sensor. Defaults to an empty list.
    @Default([]) List<SensorRangeInput> ranges,

    /// [mask] of the sensor. Defaults to an empty list.
    @Default([]) List<MaskPointInput> mask,

    /// [parentId] is the id of the parent sensor.
    String? parentId,

    /// [isInstant] indicates if the sensor is an instant sensor. Defaults to `false`.
    @Default(false) bool isInstant,

    /// [hasValidator] indicates if the sensor has a [double] validator. Defaults to `false`.
    @Default(false) bool hasValidator,

    /// [minValue] is the minimum value of the sensor.
    double? minValue,

    /// [maxValue] is the maximum value of the sensor.
    double? maxValue,

    /// [hasHeaders] indicates if the CSV has headers inside of the message. Defaults to `false`.
    @Default(false) bool hasHeaders,

    /// [csvSeparator] is the separator of the CSV. Defaults to `,`.
    @Default(',') String csvSeparator,

    /// [csvHeaders] is the list of names of the columns of the CSV. Defaults to an empty list.
    @Default([]) List<String> csvHeaders,

    /// [functionId] is the id of the Function of the sensor.
    String? functionId,

    /// [assignedAssetsIds] is the list of assets ids assigned to this sensor. Defaults to an empty list.
    @Default([]) List<String> assignedAssetsIds,

    /// [maxHistorySearch] defines the maximum search interval for the history of the sensor.
    @DurationOrNullConverter() Duration? maxHistorySearch,
  }) = _SensorInput;

  /// Deserializes a [SensorInput] from a JSON map.
  factory SensorInput.fromJson(Map<String, dynamic> json) => _$SensorInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this sensor on the server.
  ///
  /// Picks the operation from [id] and [isGlobal]: `addGlobalSensor` / `editGlobalSensor` when [isGlobal] is true,
  /// or `addSensor` / `editSensor` (nested under [assetId]) otherwise. In every case this input is serialized as
  /// the `SensorInput` GraphQL input type. Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, Sensor?)`: on an internal error,
  /// `(ApiStatus.internalError, null, null)`; on any other non-ok status, `(status, errors, null)`; on success,
  /// `(status, errors, savedSensor)`.
  Future<StandardResponse<Sensor>> save({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Whether the sensor is global (not tied to an asset). Defaults to `true`. When `false`, [assetId] must be set.
    bool isGlobal = true,

    /// Optional callback invoked with the [ApiStatus] of the response. Called once per
    /// invocation when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final isNew = id == null;
    final operation = switch ((isNew, isGlobal)) {
      (true, true) => 'addGlobalSensor',
      (false, true) => 'editGlobalSensor',
      (true, false) => 'addSensor',
      (false, false) => 'editSensor',
    };
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: 'SensorInput'),
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
            ..add(isGlobal ? _sensorGlobalResultField() : GqlField(name: 'result', fragment: Sensor.fragment)),
        ),
        _sensorDecoder,
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
        "layrz_sdk/SensorInput/save(): General exception => $e\n$stack",
      );
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
