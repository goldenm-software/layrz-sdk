part of '../../ats.dart';

/// A country state (GraphQL type `CountryState`), used to pick the city of an [AtsNsAddressInput].
@freezed
abstract class AtsNsCountryState with _$AtsNsCountryState {
  const AtsNsCountryState._();

  /// Creates an [AtsNsCountryState].
  const factory AtsNsCountryState({
    /// Unique identifier.
    required String id,

    /// Native name of the state.
    @JsonKey(name: 'nativeName') required String name,

    /// Code of the state.
    String? code,
  }) = _AtsNsCountryState;

  /// Builds an [AtsNsCountryState] from JSON.
  factory AtsNsCountryState.fromJson(Map<String, dynamic> json) => _$AtsNsCountryStateFromJson(json);

  // coverage:ignore-start
  /// Fetches the country states, optionally filtered by [countriesIds] (Brazil is `'34'`).
  ///
  /// Returns an empty list on failure; [onResponse] receives the status code of a non-OK answer.
  static Future<List<AtsNsCountryState>> fetchAll({
    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [apiToken] is the API token for authentication.
    String? apiToken,

    /// [countriesIds] filters the states by country.
    List<String>? countriesIds,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) {
    return _fetchAtsNsCatalog(
      uri: uri,
      apiToken: apiToken,
      queryName: 'countryStates',
      variables: [
        GqlVariable(
          name: 'countriesIds',
          type: .list(of: .id),
          value: countriesIds,
        ),
      ],
      fields: ['id', 'nativeName', 'code'],
      decode: AtsNsCountryState.fromJson,
      onResponse: onResponse,
    );
  }
  // coverage:ignore-end
}

/// A city (GraphQL type `City`). [code] is the IBGE code sent with an [AtsNsAddressInput].
@freezed
abstract class AtsNsCity with _$AtsNsCity {
  const AtsNsCity._();

  /// Creates an [AtsNsCity].
  const factory AtsNsCity({
    /// Unique identifier.
    required String id,

    /// Native name of the city.
    @JsonKey(name: 'nativeName') required String name,

    /// IBGE code of the city.
    String? code,

    /// ID of the [AtsNsCountryState] of the city.
    required String countryStateId,
  }) = _AtsNsCity;

  /// Builds an [AtsNsCity] from JSON.
  factory AtsNsCity.fromJson(Map<String, dynamic> json) => _$AtsNsCityFromJson(json);

  // coverage:ignore-start
  /// Fetches the cities with an IBGE code, optionally filtered by [countryStatesIds].
  ///
  /// Returns an empty list on failure; [onResponse] receives the status code of a non-OK answer.
  static Future<List<AtsNsCity>> fetchAll({
    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [apiToken] is the API token for authentication.
    String? apiToken,

    /// [countryStatesIds] filters the cities by country state.
    List<String>? countryStatesIds,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) {
    return _fetchAtsNsCatalog(
      uri: uri,
      apiToken: apiToken,
      queryName: 'cities',
      variables: [
        GqlVariable(
          name: 'countryStatesIds',
          type: .list(of: .id),
          value: countryStatesIds,
        ),
        // `false` drops the cities without an IBGE code.
        GqlVariable(name: 'codeNull', type: .boolean, value: false),
      ],
      fields: ['id', 'nativeName', 'code', 'countryStateId'],
      decode: AtsNsCity.fromJson,
      onResponse: onResponse,
    );
  }
  // coverage:ignore-end
}

// coverage:ignore-start
Future<List<T>> _fetchAtsNsCatalog<T>({
  required Uri uri,
  required String? apiToken,
  required String queryName,
  required List<GqlVariable> variables,
  required List<String> fields,
  required T Function(Map<String, dynamic>) decode,
  ValueChanged<ApiStatus>? onResponse,
}) async {
  final connector = LayrzConnector(uri: uri, apiToken: apiToken);
  try {
    final response = await connector.query(
      GqlQuery(name: queryName, variables: variables)..add(
        GqlField(name: queryName, args: {for (final variable in variables) variable.name: variable.name})
          ..add(GqlField(name: 'status'))
          ..add(GqlField(name: 'errors'))
          ..add(
            GqlField(
              name: 'result',
              fields: [for (final field in fields) GqlField(name: field)],
            ),
          ),
      ),
      (json) => [for (final item in json as List? ?? []) decode(Map<String, dynamic>.from(item as Map))],
    );

    if (response.status != .ok) {
      Log.warning("layrz_sdk/$queryName/fetchAll(): API returned status ${response.status}");
      onResponse?.call(response.status);
      return [];
    }
    return response.result ?? [];
  } catch (err, stack) {
    Log.critical("layrz_sdk/$queryName/fetchAll(): General exception => $err\n$stack");
    onResponse?.call(.internalError);
    return [];
  }
}
// coverage:ignore-end
