part of '../../ats.dart';

/// Editable address of an [AtsNsLicenseInput] (GraphQL input `AddressInput`).
@unfreezed
abstract class AtsNsAddressInput with _$AtsNsAddressInput {
  /// Creates an [AtsNsAddressInput].
  factory AtsNsAddressInput({
    /// Street address.
    @Default('') String address,

    /// Street number.
    @Default('') String number,

    /// District.
    @Default('') String district,

    /// Postal code.
    @Default('') String zipCode,

    /// IBGE code of the city.
    @Default('') String cityCode,

    /// Name of the city.
    @Default('') String cityName,
  }) = _AtsNsAddressInput;

  /// Builds an [AtsNsAddressInput] from JSON.
  factory AtsNsAddressInput.fromJson(Map<String, dynamic> json) => _$AtsNsAddressInputFromJson(json);
}

/// Editable working copy of an [AtsNsLicense] (GraphQL input `LicenseInput`).
@unfreezed
abstract class AtsNsLicenseInput with _$AtsNsLicenseInput {
  AtsNsLicenseInput._();

  /// Creates an [AtsNsLicenseInput]. A `null` [id] creates a license on [save].
  factory AtsNsLicenseInput({
    /// The ID of the license, `null` when creating a new one.
    String? id,

    /// Environment of the license.
    @Default(AtsNsStatus.testing) @AtsNsStatusConverter() AtsNsStatus status,

    /// Whether the license receives the last 90 days of data. Only meaningful for [AtsNsProjectId.nsDDFe].
    @Default(false) bool receive90Days,

    /// NS project.
    @Default(AtsNsProjectId.nsNFe) @AtsNsProjectIdConverter() AtsNsProjectId projectId,

    /// Certificate, as a base64 `data:` URI.
    @Default('') String certificate,

    /// Certificate password.
    @Default('') String certificatePassword,

    /// CNPJ (or CPF) of the company.
    @Default('') String cnpj,

    /// State registration (IE).
    @Default('') String inscriptionId,

    /// Business (legal) name.
    @Default('') String businessName,

    /// Trade name.
    @Default('') String companyName,

    /// ICMS type.
    @Default(AtsIcmsType.taxpayer) @AtsIcmsTypeConverter() AtsIcmsType icmsType,

    /// Contact emails.
    @Default([]) List<String> emails,

    /// Contact phone numbers.
    @Default([]) List<String> phoneNumbers,

    /// Addresses.
    @Default([]) List<AtsNsAddressInput> addresses,
  }) = _AtsNsLicenseInput;

  /// Builds an [AtsNsLicenseInput] from JSON, which also accepts an [AtsNsLicense] JSON.
  factory AtsNsLicenseInput.fromJson(Map<String, dynamic> json) => _$AtsNsLicenseInputFromJson(json);

  // coverage:ignore-start
  /// Creates (`addLicense`) or updates (`editLicense`) the license, depending on [id].
  ///
  /// Returns `(status, errors, license)`: `errors` carries the per-field validation messages of a failed save.
  Future<StandardResponse<AtsNsLicense>> save({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final mutationName = id == null ? 'addLicense' : 'editLicense';
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(
              name: 'data',
              value: toJson(),
              type: .input(of: 'LicenseInput'),
              isRequired: true,
            ),
          ],
          fields: [
            GqlField(name: mutationName, args: {'data': 'data'})
              ..add(GqlField(name: 'status'))
              ..add(GqlField(name: 'errors'))
              ..add(GqlField(name: 'result', fragment: AtsNsLicense.fragment)),
          ],
        ),
        (json) => AtsNsLicense.fromJson(Map<String, dynamic>.from(json as Map)),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/AtsNsLicenseInput/save(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }
      return (response.status, null, response.result);
    } catch (err, stack) {
      Log.critical("layrz_sdk/AtsNsLicenseInput/save(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
