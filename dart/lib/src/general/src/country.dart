part of '../general.dart';

/// Immutable country data used across the Layrz platform.
///
/// [Country] represents a country with its associated identification, display,
/// and dialing information.
@freezed
abstract class Country with _$Country {
  /// Private constructor used by the code generator.
  const Country._();

  /// Constructs an immutable [Country].
  const factory Country({
    /// [id] represents the unique identifier of the country.
    required String id,

    /// [commonName] represents the common name of the country.
    required String commonName,

    /// [flagEmoji] represents the flag emoji of the country.
    required String flagEmoji,

    /// [phoneCode] represents the phone code of the country.
    String? phoneCode,

    /// [code] represents the code of the country.
    String? code,
  }) = _Country;

  /// Deserializes a [Country] from a JSON map.
  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

  /// [fragment] returns a GraphQL fragment for the [Country] model.
  static GqlFragment get fragment => GqlFragment(name: 'countryFragment', onType: 'Country')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'commonName'))
    ..add(GqlField(name: 'flagEmoji'))
    ..add(GqlField(name: 'phoneCode'))
    ..add(GqlField(name: 'code'));

  // coverage:ignore-start
  /// [fetchAll] fetches all countries from the server.
  ///
  /// Returns a list of [Country] with the required contextual information.
  /// Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  static Future<List<Country>> fetchAll({
    /// [apiToken] is the API token to use for authentication.
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use.
    required Uri uri,

    /// [onResponse] is the callback to call when the response is received.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'countries')..add(
          GqlField(name: 'countries')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: Country.fragment)),
        ),
        _countryListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/Country/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end
}

/// [_countryListDecoder] decodes a raw listing `result` payload into a list of [Country].
/// Used by listing queries (fetchAll).
List<Country> _countryListDecoder(Object? json) {
  return List<Country>.from(
    (json as List? ?? []).map((e) => Country.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}
