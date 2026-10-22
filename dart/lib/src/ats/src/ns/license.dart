part of '../../ats.dart';

/// An address of an [AtsNsLicense].
@freezed
abstract class AtsNsAddress with _$AtsNsAddress {
  /// Creates an [AtsNsAddress].
  const factory AtsNsAddress({
    /// Street address.
    required String address,

    /// Street number.
    required String number,

    /// District.
    required String district,

    /// Postal code.
    required String zipCode,

    /// IBGE code of the city.
    required String cityCode,

    /// Name of the city.
    required String cityName,
  }) = _AtsNsAddress;

  /// Builds an [AtsNsAddress] from JSON.
  factory AtsNsAddress.fromJson(Map<String, dynamic> json) => _$AtsNsAddressFromJson(json);
}

/// An NS Tecnologia license (GraphQL type `License`).
@freezed
abstract class AtsNsLicense with _$AtsNsLicense {
  const AtsNsLicense._();

  /// Creates an [AtsNsLicense].
  const factory AtsNsLicense({
    /// Unique identifier.
    required String id,

    /// Environment of the license.
    @AtsNsStatusConverter() required AtsNsStatus status,

    /// Whether the license receives the last 90 days of data. Only meaningful for [AtsNsProjectId.nsDDFe].
    bool? receive90Days,

    /// NS project.
    @AtsNsProjectIdOrNullConverter() AtsNsProjectId? projectId,

    /// Certificate, as a base64 `data:` URI.
    String? certificate,

    /// Certificate password.
    String? certificatePassword,

    /// CNPJ (or CPF) of the company.
    required String cnpj,

    /// State registration (IE).
    String? inscriptionId,

    /// Business (legal) name.
    String? businessName,

    /// Trade name.
    String? companyName,

    /// ICMS type.
    @AtsIcmsTypeOrNullConverter() AtsIcmsType? icmsType,

    /// Contact emails.
    List<String>? emails,

    /// Contact phone numbers.
    List<String>? phoneNumbers,

    /// Addresses.
    List<AtsNsAddress>? addresses,

    /// Certificate expiration date.
    @JsonKey(name: 'expirationDateUnix') @TimestampOrNullConverter() DateTime? expirationDate,
  }) = _AtsNsLicense;

  /// Builds an [AtsNsLicense] from JSON.
  factory AtsNsLicense.fromJson(Map<String, dynamic> json) => _$AtsNsLicenseFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment with every field of an [AtsNsLicense], selected by [fetch] and [AtsNsLicenseInput.save].
  static GqlFragment get fragment => GqlFragment(
    name: 'licenseFragment',
    onType: 'License',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'status'),
      GqlField(name: 'projectId'),
      GqlField(name: 'certificate'),
      GqlField(name: 'certificatePassword'),
      GqlField(name: 'cnpj'),
      GqlField(name: 'inscriptionId'),
      GqlField(name: 'businessName'),
      GqlField(name: 'companyName'),
      GqlField(name: 'icmsType'),
      GqlField(name: 'emails'),
      GqlField(
        name: 'addresses',
        fields: [
          GqlField(name: 'address'),
          GqlField(name: 'number'),
          GqlField(name: 'district'),
          GqlField(name: 'zipCode'),
          GqlField(name: 'cityCode'),
          GqlField(name: 'cityName'),
        ],
      ),
      GqlField(name: 'phoneNumbers'),
      GqlField(name: 'expirationDateUnix'),
      GqlField(name: 'receive90Days'),
    ],
  );

  /// The lightweight fields selected by [fetchAll].
  static List<GqlField> get listFields => [
    GqlField(name: 'id'),
    GqlField(name: 'status'),
    GqlField(name: 'projectId'),
    GqlField(name: 'cnpj'),
    GqlField(name: 'businessName'),
    GqlField(name: 'companyName'),
  ];
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches every license of the signed-in user, with only [listFields]; add any other field with [extraFields].
  ///
  /// Returns an empty list on failure; [onResponse] receives the status code of a non-OK answer.
  static Future<List<AtsNsLicense>> fetchAll({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [extraFields] is the list of additional fields to fetch from the API, if any.
    List<GqlField>? extraFields,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(name: 'licenses')..add(
          GqlField(name: 'licenses')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fields: [...listFields, ...?extraFields])),
        ),
        _atsNsLicenseListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/AtsNsLicense/fetchAll(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return [];
      }
      return response.result ?? [];
    } catch (err, stack) {
      Log.critical("layrz_sdk/AtsNsLicense/fetchAll(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the full record ([fragment]) of this license.
  ///
  /// Returns `null` on failure or when the license no longer exists; [onResponse] receives the status code.
  Future<AtsNsLicense?> fetch({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          name: 'licenses',
          variables: [
            GqlVariable(name: 'id', value: id, type: .id, isRequired: true),
          ],
        )..add(
          GqlField(name: 'licenses', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        _atsNsLicenseListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/AtsNsLicense/fetch(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return null;
      }

      final result = response.result ?? [];
      if (result.isEmpty) {
        onResponse?.call(.notfound);
        return null;
      }
      return result.first;
    } catch (err, stack) {
      Log.critical("layrz_sdk/AtsNsLicense/fetch(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the licenses identified by [ids] (`deleteLicenses`).
  ///
  /// Returns `true` when the API reports success, `false` otherwise.
  static Future<bool> deleteMany({
    /// [ids] are the IDs of the licenses to delete.
    required List<String> ids,

    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: 'deleteLicenses',
          variables: [
            GqlVariable(
              name: 'ids',
              value: ids,
              type: .list(of: .id),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: 'deleteLicenses', args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/AtsNsLicense/deleteMany(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return false;
      }
      return true;
    } catch (err, stack) {
      Log.critical("layrz_sdk/AtsNsLicense/deleteMany(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end
}

/// Decodes a raw listing `result` payload into a list of [AtsNsLicense].
List<AtsNsLicense> _atsNsLicenseListDecoder(Object? json) => [
  for (final item in json as List? ?? []) AtsNsLicense.fromJson(Map<String, dynamic>.from(item as Map)),
];
