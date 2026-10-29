part of '../general.dart';

/// Immutable timezone value used across the Layrz platform.
///
/// [Timezone] pairs a unique [id] and [name] (an IANA timezone name, e.g.
/// `Europe/Paris`) with its UTC [offset] and, when known, the [country] it
/// belongs to.
@freezed
abstract class Timezone with _$Timezone {
  /// Constructs an immutable [Timezone].
  const factory Timezone({
    /// [id] is the id of the timezone.
    required String id,

    /// [name] is the name of the timezone.
    ///
    /// Example: `Europe/Paris`.
    required String name,

    /// [offset] is the offset of the timezone.
    ///
    /// Example: `+00:00`.
    required String offset,

    /// [country] is the country of the timezone.
    Country? country,
  }) = _Timezone;

  /// Deserializes a [Timezone] from a JSON map.
  factory Timezone.fromJson(Map<String, dynamic> json) => _$TimezoneFromJson(json);

  // coverage:ignore-start
  /// Fetches the timezones available in the system (`timezones`, no authentication required).
  ///
  /// Selects `id name offset` plus [extraFields] (for example `country`). Returns an empty list on any error.
  static Future<List<Timezone>> fetchAll({
    /// [apiToken] is the optional API token for authentication.
    String? apiToken,

    /// [uri] is the Layrz (or Mappit, ATS) GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [extraFields] is the list of additional fields to fetch from the API, if any.
    List<GqlField>? extraFields,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'timezones')..add(
          GqlField(name: 'timezones')
            ..add(GqlField(name: 'status'))
            ..add(
              GqlField(
                name: 'result',
                fields: [
                  GqlField(name: 'id'),
                  GqlField(name: 'name'),
                  GqlField(name: 'offset'),
                  ...?extraFields,
                ],
              ),
            ),
        ),
        _timezoneListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Timezone/fetchAll(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical("layrz_sdk/Timezone/fetchAll(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return [];
    }
  }
  // coverage:ignore-end
}

List<Timezone> _timezoneListDecoder(Object? json) {
  if (json is! List) return [];
  return [for (final item in json) Timezone.fromJson(Map<String, dynamic>.from(item as Map))];
}
