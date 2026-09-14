part of '../category.dart';

/// The kind of entity a [Category] classifies.
///
/// [CategoryKind] indicates which part of the Layrz data model a category
/// applies to — assets, apps, users, services, functions, devices, or a
/// universal category usable across all of them.
///
/// Each value is serialized to JSON as an uppercase string (e.g., `ASSET`,
/// `APP`). Use [toJson] and [fromJson] to convert between enum and wire
/// format.
///
/// If deserialization encounters an unknown kind value, it defaults to
/// [universal] (the least restrictive kind).
@JsonEnum(alwaysCreate: true)
enum CategoryKind {
  /// [asset] - Category applies to assets.
  @JsonValue('ASSET')
  asset,

  /// [app] - Category applies to apps.
  @JsonValue('APP')
  app,

  /// [user] - Category applies to users.
  @JsonValue('USER')
  user,

  /// [service] - Category applies to services.
  @JsonValue('SERVICE')
  service,

  /// [function] - Category applies to functions.
  @JsonValue('FUNCTION')
  function,

  /// [device] - Category applies to devices.
  @JsonValue('DEVICE')
  device,

  /// [universal] - Category applies universally, across all entity kinds.
  /// This is the fallback value used when an unknown kind is received.
  @JsonValue('UNIVERSAL')
  universal,
  ;

  /// Returns the JSON representation of this kind value (e.g., `ASSET`,
  /// `UNIVERSAL`).
  @override
  String toString() => toJson();

  /// Converts this [CategoryKind] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member (e.g., `'ASSET'`
  /// for [asset]). If the enum value is not found in the generated map (should
  /// never occur), defaults to `'UNIVERSAL'`.
  String toJson() => _$CategoryKindEnumMap[this] ?? 'UNIVERSAL';

  /// Converts a JSON string to a [CategoryKind].
  ///
  /// Accepts the uppercase JSON values (e.g., `'ASSET'`, `'APP'`) from the
  /// server wire format. If the input does not match any known kind, returns
  /// [universal] as the fallback default.
  static CategoryKind fromJson(String json) =>
      _$CategoryKindEnumMap.entries
          .firstWhereOrNull((e) => e.value == json)
          ?.key ??
      CategoryKind.universal;
}

/// The connectivity state an asset-kind [Category] applies to.
///
/// [AssetKind] further qualifies a [CategoryKind.asset] category by
/// distinguishing between assets that are actively connected (reporting
/// telemetry) and assets that are disconnected.
///
/// Each value is serialized to JSON as an uppercase string (e.g., `CONNECTED`,
/// `DISCONNECTED`). Use [toJson] and [fromJson] to convert between enum and
/// wire format.
///
/// If deserialization encounters an unknown value, it defaults to
/// [disconnected] (the most restrictive state).
@JsonEnum(alwaysCreate: true)
enum AssetKind {
  /// [connected] - The asset is actively connected and reporting telemetry.
  @JsonValue('CONNECTED')
  connected,

  /// [disconnected] - The asset is disconnected or not reporting telemetry.
  /// This is the fallback value used when an unknown asset kind is received.
  @JsonValue('DISCONNECTED')
  disconnected,
  ;

  /// Returns the JSON representation of this asset kind value (e.g.,
  /// `CONNECTED`, `DISCONNECTED`).
  @override
  String toString() => toJson();

  /// Converts this [AssetKind] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member (e.g.,
  /// `'CONNECTED'` for [connected]). If the enum value is not found in the
  /// generated map (should never occur), defaults to `'DISCONNECTED'`.
  String toJson() => _$AssetKindEnumMap[this] ?? 'DISCONNECTED';

  /// Converts a JSON string to an [AssetKind].
  ///
  /// Accepts the uppercase JSON values (e.g., `'CONNECTED'`, `'DISCONNECTED'`)
  /// from the server wire format. If the input does not match any known
  /// value, returns [disconnected] as the fallback default.
  static AssetKind fromJson(String json) =>
      _$AssetKindEnumMap.entries
          .firstWhereOrNull((e) => e.value == json)
          ?.key ??
      AssetKind.disconnected;
}

/// Immutable category data for classifying entities in Layrz.
///
/// [Category] represents a named classification, identified by a unique [id]
/// and [name], scoped to a [kind] of entity via [CategoryKind]. When [kind] is
/// [CategoryKind.asset], the optional [assetKind] further qualifies whether the
/// category applies to connected or disconnected assets.
@freezed
abstract class Category with _$Category {
  /// Private constructor used by the code generator.
  const Category._();

  /// Constructs an immutable [Category].
  const factory Category({
    /// Unique identifier for this category.
    required String id,

    /// Human-readable name of the category.
    required String name,

    /// The kind of entity this category classifies.
    required CategoryKind kind,

    /// The asset connectivity state this category applies to, or null when
    /// not applicable (e.g., when [kind] is not [CategoryKind.asset]).
    AssetKind? assetKind,
  }) = _Category;

  /// Deserializes a [Category] from a JSON map.
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying category fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'categoryFragment',
    onType: 'Category',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'kind'),
      GqlField(name: 'assetKind'),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all categories available to the authenticated user.
  ///
  /// Makes an authenticated GraphQL query (`categories`) to retrieve every
  /// [Category] visible to the user. Authentication is carried solely via the
  /// connector's `Authorization` header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure. This allows the
  /// caller to observe success or error states without relying on the return
  /// value alone.
  ///
  /// Returns an empty list on any error (network failure, authentication
  /// failure, or server error). Errors are logged internally.
  static Future<List<Category>> fetchAll({
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
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'categories')..add(
          GqlField(name: 'categories')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _categoryListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/Category/fetchAll(): General exception => $e\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single category by its [id].
  ///
  /// Makes an authenticated GraphQL query (`categories`) filtered by [id].
  /// The backend always returns `result` as a list, even when filtered down to
  /// a single entity, so the first element (if any) is returned.
  /// Authentication is carried solely via the connector's `Authorization`
  /// header, built from [apiToken].
  ///
  /// Optional callback invoked with the [ApiStatus] of the response. Called
  /// once per invocation, regardless of success or failure.
  ///
  /// Returns `null` on any error (network failure, authentication failure,
  /// server error, or no matching category). Errors are logged internally.
  static Future<Category?> fetch({
    /// The ID of the [Category] to fetch.
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
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: 'categories',
        )..add(
          GqlField(
              name: 'categories',
              args: {'id': 'id'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/Category/fetch(): No result in list");
            return null;
          }
          return Category.fromJson(
            Map<String, dynamic>.from(resultList.first as Map),
          );
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical(
        "layrz_sdk/Category/fetch(): General exception => $e\n$stack",
      );
      return null;
    }
  }
  // coverage:ignore-end
}

/// [_categoryDecoder] decodes a single-object `result` payload into a [Category].
/// Used by result-bearing mutations (add/edit-style).
Category _categoryDecoder(Object? json) {
  return Category.fromJson(Map<String, dynamic>.from(json as Map));
}

/// [_categoryListDecoder] decodes a raw listing `result` payload into a list of [Category].
/// Used by listing queries (fetchAll).
List<Category> _categoryListDecoder(Object? json) {
  return List<Category>.from(
    (json as List? ?? []).map(
      (e) => Category.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}
