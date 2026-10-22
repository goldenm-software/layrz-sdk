part of '../geofences.dart';

/// Resolves coordinates to human-readable addresses.
abstract final class ReverseGeocode {
  // coverage:ignore-start
  /// Looks up the addresses at [latitude]/[longitude] through the
  /// `reverseGeocode` query and returns the non-empty `GeocodeResult.address`
  /// values, in the order the backend returns them.
  ///
  /// [onResponse] receives the status of a failing response. Returns an empty
  /// list on any error.
  static Future<List<String>> fetchAddresses({
    /// The latitude, in decimal degrees.
    required double latitude,

    /// The longitude, in decimal degrees.
    required double longitude,

    /// The API token for authentication.
    required String apiToken,

    /// The Layrz GraphQL API endpoint.
    required Uri uri,

    /// Called with the status of a failing response.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'reverseGeocode',
          variables: [
            GqlVariable(
              name: 'coordinates',
              type: .input(of: 'GeocodeCoordinatesInput'),
              isRequired: true,
              value: {'latitude': latitude, 'longitude': longitude},
            ),
          ],
        )..add(
          GqlField(name: 'reverseGeocode', args: {'coordinates': 'coordinates'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: '__typename'))
                ..add(GqlUnion(name: 'GeocodeResult')..add(GqlField(name: 'address'))),
            ),
        ),
        reverseGeocodeAddressesDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/ReverseGeocode/fetchAddresses(): General exception => $e\n$stack");
      onResponse?.call(ApiStatus.internalError);
      return [];
    }
  }

  // coverage:ignore-end
}

/// Decodes the `reverseGeocode` result union into the non-empty addresses of
/// its `GeocodeResult` members.
@visibleForTesting
List<String> reverseGeocodeAddressesDecoder(Object? json) {
  return (json as List? ?? [])
      .map((item) => Map<String, dynamic>.from(item as Map))
      .where((item) => item['__typename'] == 'GeocodeResult')
      .map((item) => item['address'] as String? ?? '')
      .where((address) => address.isNotEmpty)
      .toList();
}
