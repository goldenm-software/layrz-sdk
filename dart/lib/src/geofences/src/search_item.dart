part of '../geofences.dart';

/// [_searchItemListDecoder] decodes a raw listing `result` payload into a list of [SearchItem].
List<SearchItem>? _searchItemListDecoder(Object? data) {
  if (data is List) {
    return data
        .map((item) => SearchItem.fromJson(item as Map<String, dynamic>))
        .toList();
  }
  return null;
}

/// Immutable search result item in the geofencing context.
@freezed
abstract class SearchItem with _$SearchItem {
  const SearchItem._();

  /// [SearchItem] represents a search result item in the geofencing context.
  const factory SearchItem({
    /// [name] is the name of the search item.
    required String name,

    /// [type] indicates the type of the search item, which can be point, radial, polygon, or linear.
    required SearchType type,

    /// [path] is a list of [GeoPoint]s that define the geographical path or area associated with the search item.
    required List<GeoPoint> path,

    /// [searchedOn] indicates the context in which the search item was found, such as assets, geofences, or addresses.
    required GeofenceSearchBy searchedOn,
  }) = _SearchItem;

  /// Deserializes a [SearchItem] from a JSON map.
  factory SearchItem.fromJson(Map<String, dynamic> json) =>
      _$SearchItemFromJson(json);

  @override
  int get hashCode => name.hashCode ^ type.hashCode ^ searchedOn.hashCode;

  @override
  operator ==(Object other) {
    if (!(identical(this, other))) return false;
    if (other is! SearchItem) return false;
    return name == other.name &&
        type == other.type &&
        searchedOn == other.searchedOn;
  }

  // coverage:ignore-start
  /// [search] searches for a string query and return a list of [SearchItem]s that match the query.
  static Future<List<SearchItem>> search({
    /// [query] is the free-text search query.
    required String query,

    /// [apiToken] is the API token to use for authentication.
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use.
    required Uri uri,

    /// [onResponse] is an optional callback invoked with the status code.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(
              name: 'query',
              type: .string,
              isRequired: true,
              value: query,
            ),
          ],
        )..add(
          GqlField(name: 'searchOnGeofencesModule', args: {'query': 'query'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'name'))
                ..add(GqlField(name: 'type'))
                ..add(GqlField(name: 'searchedOn'))
                ..add(
                  GqlField(name: 'path')
                    ..add(GqlField(name: 'latitude'))
                    ..add(GqlField(name: 'longitude')),
                ),
            ),
        ),
        _searchItemListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/SearchItem/search(): General exception => $e\n$stack",
      );
      return [];
    }
  }

  // coverage:ignore-end
}

/// The context in which a [SearchItem] was found.
@JsonEnum(alwaysCreate: true)
enum GeofenceSearchBy {
  /// [assets] indicates the search item was found among assets.
  @JsonValue('ASSETS')
  assets,

  /// [geofences] indicates the search item was found among geofences.
  @JsonValue('GEOFENCES')
  geofences,

  /// [addresses] indicates the search item was found among addresses.
  @JsonValue('ADDRESSES')
  addresses;

  @override
  String toString() => toJson();

  /// [toJson] returns the string representation of the enum value.
  String toJson() => _$GeofenceSearchByEnumMap[this] ?? 'ASSETS';

  /// [fromJson] returns the enum value from a string representation.
  static GeofenceSearchBy fromJson(String value) =>
      _$GeofenceSearchByEnumMap.entries
          .firstWhereOrNull((entry) => entry.value == value)
          ?.key ??
      GeofenceSearchBy.assets;
}

/// The geometric shape of a [SearchItem].
@JsonEnum(alwaysCreate: true)
enum SearchType {
  /// [point] indicates the search item is a single point.
  @JsonValue('POINT')
  point,

  /// [radial] indicates the search item is a circle defined by a center point and radius.
  @JsonValue('RADIAL')
  radial,

  /// [polygon] indicates the search item is a closed polygon.
  @JsonValue('POLYGON')
  polygon,

  /// [linear] indicates the search item is a line.
  @JsonValue('LINEAR')
  linear;

  @override
  String toString() => toJson();

  /// [toJson] returns the string representation of the enum value.
  String toJson() => _$SearchTypeEnumMap[this] ?? 'POINT';

  /// [fromJson] returns the enum value from a string representation.
  static SearchType fromJson(String value) =>
      _$SearchTypeEnumMap.entries
          .firstWhereOrNull((entry) => entry.value == value)
          ?.key ??
      SearchType.point;
}
