part of '../users.dart';

/// Mutable input data for creating or updating a [User].
///
/// [UserInput] mirrors a subset of the fields of [User] but is mutable and
/// provides sensible defaults, making it suitable for form binding before
/// submission via [save]. When [id] is null, [save] creates a new user;
/// otherwise it updates the existing one. Fields not applicable to the
/// selected [UserVariant] are stripped from the payload automatically.
@unfreezed
abstract class UserInput with _$UserInput {
  /// Private constructor used by the code generator.
  const UserInput._();

  /// Constructs a mutable [UserInput].
  factory UserInput({
    /// The user ID. When creating a new user, this value should be null.
    String? id,

    /// The user name.
    @Default('') String name,

    /// The user email.
    @Default('') String email,

    /// The username.
    @Default('') String username,

    /// The user avatar.
    AvatarInput? dynamicAvatar,

    /// The list of references IDs.
    @Default([]) List<String> referencesIds,

    /// The user category ID.
    String? categoryId,

    /// The list of custom fields.
    @Default([]) List<CustomField> customFields,

    /// The list of tags IDs.
    @Default([]) List<String> tagsIds,

    /// The list of assets IDs.
    /// This field is only for `Mappit` use.
    @Default([]) List<String> mappitAssetsIds,

    /// The number of days allowed to access historical data.
    /// This field is only for `Mappit` use.
    @Default(1) int historicalDaysAllowed,

    /// The Brickhouse permission tier ID for access level of a user.
    String? brickhousePermissionTierId,

    /// The Brickhouse user role.
    @JsonKey(unknownEnumValue: BrickhouseUserRole.unknown) BrickhouseUserRole? brickhouseRole,

    /// The SDM code.
    String? sdmCode,

    /// The default password, if allowed by the form.
    String? password,

    /// The user preferences.
    UserPreferencesInput? preferences,
  }) = _UserInput;

  /// Deserializes a [UserInput] from a JSON map.
  factory UserInput.fromJson(Map<String, dynamic> json) => _$UserInputFromJson(json);

  // coverage:ignore-start
  /// Saves a user (add or edit) and returns a record with status, errors,
  /// and the saved user.
  ///
  /// Returns `(ApiStatus, Map<String, dynamic>?, User?)` — on internalError:
  /// `(internalError, null, null)`; on other error: `(status, errors,
  /// null)`; on success: `(status, errors, user)`. [languageId] is optional
  /// and only sent when creating a new user. [mappitModule] is required for
  /// Mappit variants when provided; specifies which Mappit module to save
  /// to.
  Future<StandardResponse<User>> save({
    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,

    /// The user ecosystem variant to save to.
    UserVariant variant = .standard,

    /// Optional app ID scope for the mutation.
    String? appId,

    /// The language ID to use, sent only when creating a new user.
    String? languageId,

    /// The Mappit module to save to, required for Mappit variants when
    /// provided.
    String? mappitModule,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final isNew = id == null;
      final operation = _getSaveMutationName(variant: variant, isNew: isNew);

      final isMappit = [
        UserVariant.mappitOperator,
        UserVariant.mappitCustomer,
        UserVariant.mappitSupervisor,
        UserVariant.mappitEmployee,
        UserVariant.mappitSeller,
      ].contains(variant);

      // Build payload with field-stripping based on variant
      final payload = toJson();

      // Strip mappit-only fields if not mappit variant
      if (!isMappit) {
        payload.remove('historicalDaysAllowed');
        payload.remove('mappitAssetsIds');
      }

      // Strip variant-specific fields
      if (variant == .brickhouse) {
        payload.remove('sdmCode');
        payload.remove('preferences');
      } else {
        // For non-brickhouse variants, remove brickhouse fields
        payload.remove('brickhousePermissionTierId');
        payload.remove('brickhouseRole');
      }

      final variables = <GqlVariable>[
        GqlVariable(
          name: 'data',
          type: GqlVariableType.input(of: _getInputTypeName(variant: variant)),
          isRequired: true,
          value: payload,
        ),
      ];
      if (appId != null) {
        variables.add(GqlVariable(name: 'appId', type: .id, isRequired: false, value: appId));
      }
      if (isNew && languageId != null) {
        variables.add(GqlVariable(name: 'languageId', type: .id, isRequired: false, value: languageId));
      }
      if (isMappit && mappitModule != null) {
        variables.add(
          GqlVariable(
            name: 'module',
            type: GqlVariableType.enum_(of: 'MappitUserModule'),
            isRequired: true,
            value: mappitModule,
          ),
        );
      }

      final args = <String, String>{
        'data': 'data',
        if (appId != null) 'appId': 'appId',
        if (isNew && languageId != null) 'languageId': 'languageId',
        if (isMappit && mappitModule != null) 'module': 'module',
      };

      final response = await connector.mutate(
        GqlMutation(
          variables: variables,
          name: operation,
        )..add(
          GqlField(
              name: operation,
              args: args,
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fragment: User.fragment(variant: variant),
              ),
            ),
        ),
        _userDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status.toJson());
        return (ApiStatus.internalError, null, null);
      }

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return (response.status, response.errors, null);
      }

      return (response.status, response.errors, response.result);
    } catch (e, stack) {
      Log.critical("layrz_models/User/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }

  // coverage:ignore-end
}
