part of '../sensors.dart';

/// Immutable sensor data for the Layrz platform.
///
/// A [Sensor] represents a calculated or raw value extracted from a device's telemetry, using an
/// LCL [formula], a [script], or a raw unpack configuration ([hasHeaders], [csvHeaders],
/// [csvSeparator]). Use [SensorInput] for creating or updating sensors.
@freezed
abstract class Sensor with _$Sensor {
  /// Private constructor used by the code generator.
  const Sensor._();

  const factory Sensor({
    /// [id] of the sensor. Must be unique along of all sensors of the asset.
    required String id,

    /// [name] of the sensor. Must be unique along of all sensors of the asset.
    required String name,

    /// [iterationCycle] of the sensor. Only will accept positive values.
    int? iterationCycle,

    /// [slug] of the sensor. Must be unique along of all sensors of the asset.
    required String slug,

    /// [isInstant] is a boolean to indicate if the sensor is an instant sensor. Means what the sensor execution
    /// returns `null`, if it's `true`, the sensor is will "disappear" from the calculated sensors, otherwise it will
    /// take the previous value of the sensor.
    bool? isInstant,

    /// [icon] of the sensor. To send it to API, will convert to javascript codename, but from Flutter execution
    /// will convert to MdiRemapIcon entity.
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// [measuringUnit] of the sensor. Can be an estandard unit or a custom one.
    String? measuringUnit,

    /// [type] of the sensor.
    @JsonKey(unknownEnumValue: SensorType.constant) SensorType? type,

    /// [subtype] of the sensor.
    @JsonKey(unknownEnumValue: SensorSubType.raw) SensorSubType? subtype,

    /// [parameter] of the sensor.
    String? parameter,

    /// [externalIdentifiers] is the list of external identifiers of the sensor.
    List<String>? externalIdentifiers,

    /// [formula] is the LCL formula to execute.
    String? formula,

    /// [script] is the script to execute.
    String? script,

    /// Only for [SensorType.unpack] and [SensorSubType.csv], [hasHeaders], [csvHeaders] and [csvSeparator] means the
    /// configuration to unpack a CSV data comming from message.
    /// [hasHeaders] is a boolean to indicate if the CSV has headers inside of the message.
    bool? hasHeaders,

    /// [csvHeaders] is a list of strings to indicate the names of the columns of the CSV. Only when [hasHeaders] is
    /// true.
    List<String>? csvHeaders,

    /// [csvSeparator] is a string to indicate the separator of the CSV.
    String? csvSeparator,

    /// [ranges] of the sensor, only for [SensorType.interval] linear conversion.
    /// It's a list of [SensorRange] objects.
    List<SensorRange>? ranges,

    /// [mask] of the sensor. Is basically a list of [MaskPoint] objects.
    List<MaskPoint>? mask,

    /// [hasValidator] is a boolean to indicate if the sensor has a [double] validator. When true, [minValue] and
    /// [maxValue] will define the range, both values can be `null` if the minimum or maximum range is
    /// `double.infinity`.
    bool? hasValidator,

    /// [minValue] is a [double] to indicate the minimum value of the sensor. Only when [hasValidator] is true.
    /// Can return `null` if the minimum range is `double.infinity`.
    double? minValue,

    /// [maxValue] is a [double] to indicate the maximum value of the sensor. Only when [hasValidator] is true.
    /// [maxValue] must be greater than [minValue].
    /// If [maxValue] is `null`, the minimum range is `double.infinity`.
    double? maxValue,

    /// [contentType] is a string to indicate the content type of the sensor, only used for [SensorType.image],
    /// [SensorType.video] and [SensorType.audio], but only when the [SensorSubType] is [SensorSubType.base64].
    String? contentType,

    /// [parentId] is a string to indicate the id of the parent sensor.
    String? parentId,

    /// [parent] is a [Sensor] to indicate the parent sensor.
    Sensor? parent,

    /// [functionId] is a string to indicate the id of the Function of the sensor.
    String? functionId,

    /// [lastExit] is the last [AtsExit] registered by this sensor.
    AtsExit? lastExit,

    /// [qrCode] is a string to indicate the QR code URI of the sensor.
    String? qrCode,

    /// [assignedAssetsIds] is the list of assets ids assigned to this sensor.
    List<String>? assignedAssetsIds,

    /// [assignedAssets] is the list of assets assigned to this sensor.
    List<Asset>? assignedAssets,

    /// [isTemplate] is a boolean to indicate if the sensor is a template.
    /// So, this sensor was created from the Golden M, and their authorized you to use it.
    bool? isTemplate,

    /// [isGlobal] defines if the sensor is global or not.
    @Default(false) bool isGlobal,

    /// [access] is the list of granted access.
    List<Access>? access,

    /// [maxHistorySearch] defines the maximum search interval for the history of the sensor.
    @DurationOrNullConverter() Duration? maxHistorySearch,
  }) = _Sensor;

  /// Deserializes a [Sensor] from a JSON map.
  factory Sensor.fromJson(Map<String, dynamic> json) => _$SensorFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment with the fields shared by every [Sensor] selection.
  ///
  /// Only selects fields that exist on the backend `Sensor` type. Global-only associations
  /// (`assignedAssetsIds`, `assignedAssets`) are added by the callers that need them.
  static GqlFragment get fragment => GqlFragment(
    name: 'sensorFragment',
    onType: 'Sensor',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'slug'),
      GqlField(name: 'qrCode'),
      GqlField(name: 'icon'),
      GqlField(name: 'measuringUnit'),
      GqlField(name: 'type'),
      GqlField(name: 'subtype'),
      GqlField(name: 'parameter'),
      GqlField(name: 'formula'),
      GqlField(name: 'script'),
      GqlField(name: 'iterationCycle'),
      GqlField(name: 'isInstant'),
      GqlField(name: 'mask')
        ..add(GqlField(name: 'text'))
        ..add(GqlField(name: 'color'))
        ..add(GqlField(name: 'value'))
        ..add(GqlField(name: 'icon'))
        ..add(GqlField(name: 'duration')),
      GqlField(name: 'parentId'),
      GqlField(name: 'ranges')
        ..add(GqlField(name: 'x'))
        ..add(GqlField(name: 'y')),
      GqlField(name: 'hasValidator'),
      GqlField(name: 'minValue'),
      GqlField(name: 'maxValue'),
      GqlField(name: 'hasHeaders'),
      GqlField(name: 'csvHeaders'),
      GqlField(name: 'csvSeparator'),
      GqlField(name: 'contentType'),
      GqlField(name: 'functionId'),
      GqlField(name: 'maxHistorySearch'),
      GqlField(name: 'access', fragment: Access.idFragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches every global sensor visible to the authenticated user.
  ///
  /// Uses a lightweight selection: the base [fragment] plus `assignedAssetsIds` and the id and name of
  /// each assigned asset. Authentication is carried solely via the connector's `Authorization` header.
  ///
  /// Returns the list of sensors, or an empty list on any error ([onResponse] receives the status).
  static Future<List<Sensor>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(variables: [], name: 'globalSensors')..add(
          GqlField(name: 'globalSensors')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(_sensorGlobalResultField(light: true)),
        ),
        _sensorListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/Sensor/fetchAll(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single global sensor by [id], including its assigned assets with their avatar.
  ///
  /// Authentication is carried solely via the connector's `Authorization` header.
  ///
  /// Returns the sensor, or `null` when it does not exist or on any error ([onResponse] receives the status).
  static Future<Sensor?> fetch({
    /// The identifier of the sensor to fetch.
    required String id,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: 'globalSensors',
        )..add(
          GqlField(name: 'globalSensors', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(_sensorGlobalResultField()),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/Sensor/fetch(): No result in list");
            return null;
          }
          return _sensorDecoder(resultList.first);
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/Sensor/fetch(): General exception => $e\n$stack",
      );
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the sensors identified by [ids].
  ///
  /// Sends `deleteGlobalSensors` when [isGlobal] is true, or `deleteSensors` (nested sensors) otherwise.
  /// Authentication is carried solely via the connector's `Authorization` header.
  ///
  /// Returns `true` when the server reports success, `false` otherwise ([onResponse] receives the status).
  static Future<bool> deleteMultiple({
    /// The identifiers of the sensors to delete.
    required List<String> ids,

    /// The API token for authentication. Obtain via the `login` mutation on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g., `https://api.example.com/graphql`).
    required Uri uri,

    /// Whether the sensors are global (default) or nested under an asset.
    bool isGlobal = true,

    /// Optional callback invoked with the [ApiStatus] of the response when the status is not ok.
    void Function(ApiStatus status)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final operation = isGlobal ? 'deleteGlobalSensors' : 'deleteSensors';
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'ids',
              type: .list(of: .id),
              isRequired: true,
              value: ids,
            ),
          ],
          name: operation,
        )..add(
          GqlField(name: operation, args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/Sensor/deleteMultiple(): General exception => $e\n$stack",
      );
      return false;
    }
  }
  // coverage:ignore-end
}

// coverage:ignore-start
/// Builds the `result` field for global sensor selections: the base fragment plus the assigned assets.
///
/// When [light] is true only the id and name of each asset are selected, otherwise the mode and dynamic
/// avatar are included as well.
GqlField _sensorGlobalResultField({bool light = false}) {
  final assets = GqlField(name: 'assignedAssets')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'));
  if (!light) {
    assets
      ..add(GqlField(name: 'mode'))
      ..add(GqlField(name: 'dynamicIcon', fragment: Avatar.fragment));
  }

  return GqlField(name: 'result', fragment: Sensor.fragment)
    ..add(GqlField(name: 'assignedAssetsIds'))
    ..add(assets);
}
// coverage:ignore-end

Sensor _sensorDecoder(Object? json) {
  return Sensor.fromJson(Map<String, dynamic>.from(json as Map));
}

List<Sensor> _sensorListDecoder(Object? json) {
  return List<Sensor>.from(
    (json as List? ?? []).map(
      (e) => Sensor.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}
