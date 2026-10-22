part of '../triggers.dart';

/// Immutable record of a single [Trigger] activation for an [Asset].
@freezed
abstract class TriggerActivation with _$TriggerActivation {
  const TriggerActivation._();

  /// Constructs an immutable [TriggerActivation].
  const factory TriggerActivation({
    /// `id` of the trigger activation entity. This ID is unique.
    required String id,

    /// `asset` is the asset that activated the trigger.
    required Asset asset,

    /// `trigger` is the trigger that was activated.
    Trigger? trigger,

    /// `position` is the position of the asset when the trigger was activated.
    TelemetryPosition? position,

    /// `presenceType` is the type of presence in the geofence if the trigger was of a geofence presence.
    @JsonKey(unknownEnumValue: TriggerGeofenceDetectionMode.entrance) TriggerGeofenceDetectionMode? presenceType,

    /// `sensors` is the list of sensors that were activated when the trigger was activated.
    List<TelemetrySensor>? sensors,

    /// `date` is the date when the trigger was activated.
    @JsonKey(name: 'at') @TimestampConverter() required DateTime date,
  }) = _TriggerActivation;

  /// Deserializes a [TriggerActivation] from a JSON map.
  factory TriggerActivation.fromJson(Map<String, dynamic> json) => _$TriggerActivationFromJson(json);

  // coverage:ignore-start
  /// Fetches the last 10 activations of the trigger [triggerId], selecting their `id`, `asset`
  /// (`id` and `name`) and `at`.
  ///
  /// Returns an empty list on any error. Errors are logged internally.
  static Future<List<TriggerActivation>> fetchLast10({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [triggerId] is the ID of the trigger whose activations are fetched.
    required String triggerId,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    const queryName = 'last10TriggerActivations';
    try {
      final response = await connector.query(
        GqlQuery(
          name: queryName,
          variables: [
            GqlVariable(name: 'triggerId', value: triggerId, type: .id, isRequired: true),
          ],
        )..add(
          GqlField(name: queryName, args: {'triggerId': 'triggerId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fields: [
                  GqlField(name: 'id'),
                  GqlField(
                    name: 'asset',
                    fields: [
                      GqlField(name: 'id'),
                      GqlField(name: 'name'),
                    ],
                  ),
                  GqlField(name: 'at'),
                ],
              ),
            ),
        ),
        _triggerActivationListDecoder,
      );

      if (response.status != .ok) {
        Log.warning(
          "layrz_sdk/TriggerActivation/fetchLast10(): API returned status ${response.status}",
        );
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical(
        "layrz_sdk/TriggerActivation/fetchLast10(): General exception => $err\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end
}

/// [_triggerActivationListDecoder] decodes a raw `result` payload into a list of [TriggerActivation].
List<TriggerActivation> _triggerActivationListDecoder(Object? json) {
  return List<TriggerActivation>.from(
    (json as List? ?? []).map(
      (e) => TriggerActivation.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}
