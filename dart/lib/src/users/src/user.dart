part of '../users.dart';

/// Decodes a raw listing `result` payload into a list of [User].
List<User> _userListDecoder(Object? json) {
  return List<User>.from(
    (json as List).map((e) {
      return User.fromJson(e as Map<String, dynamic>);
    }),
  );
}

/// Decodes a single-object `result` payload into a [User].
User _userDecoder(Object? json) {
  return User.fromJson(json as Map<String, dynamic>);
}

/// Decodes a nullable raw string payload.
String? _stringOrNullDecoder(Object? json) => json as String?;

/// Decodes a nullable raw map payload.
Map<String, dynamic>? _mapOrNullDecoder(Object? json) => json == null ? null : Map<String, dynamic>.from(json as Map);

// coverage:ignore-start
/// Returns the GraphQL mutation name for saving a user based on the
/// [variant] and whether it's a new user ([isNew]).
String _getSaveMutationName({required UserVariant variant, required bool isNew}) {
  switch (variant) {
    case .standard:
    case .ats:
    case .atsAdmin:
    case .tagon:
      return isNew ? 'addUser' : 'editUser';
    case .sdm:
      return isNew ? 'addSdmUser' : 'editSdmUser';
    case .mappitOperator:
    case .mappitCustomer:
    case .mappitEmployee:
    case .mappitSupervisor:
    case .mappitSeller:
      return isNew ? 'addMappitUser' : 'editMappitUser';
    case .brickhouse:
      return isNew ? 'addBrickhouseUser' : 'editBrickhouseUser';
  }
}

/// Returns the GraphQL mutation name for deleting users based on the
/// [variant].
String _getDeleteMutationName({required UserVariant variant}) {
  switch (variant) {
    case .sdm:
      return 'deleteSdmUsers';
    case .mappitOperator:
    case .mappitCustomer:
    case .mappitEmployee:
    case .mappitSupervisor:
    case .mappitSeller:
      return 'deleteMappitUsers';
    case .standard:
    case .ats:
    case .atsAdmin:
    case .brickhouse:
    case .tagon:
      return 'deleteUsers';
  }
}

/// Returns the GraphQL input type name for user input based on the
/// [variant].
String _getInputTypeName({required UserVariant variant}) {
  switch (variant) {
    case .sdm:
      return 'SdmUserInput';
    case .mappitOperator:
    case .mappitCustomer:
    case .mappitEmployee:
    case .mappitSupervisor:
    case .mappitSeller:
      return 'MappitUserInput';
    case .brickhouse:
      return 'EditBrickhouseUserInput';
    case .standard:
    case .ats:
    case .atsAdmin:
    case .tagon:
      return 'UserInput';
  }
}
// coverage:ignore-end

/// Immutable user model shared across every Layrz product variant.
///
/// [User] represents an authenticated platform user, with fields spanning
/// the standard Layrz product as well as ATS, Brickhouse, SDM, Tagon, and
/// Mappit variants (see [UserVariant]). Not every field is populated or
/// meaningful for every variant; fields scoped to a specific product are
/// documented as such.
@freezed
abstract class User with _$User {
  /// Private constructor used by the code generator.
  const User._();

  /// Constructs an immutable [User].
  const factory User({
    /// The user ID.
    required String id,

    /// The user name.
    required String name,

    /// The user token.
    Token? token,

    /// The parent ID.
    String? parentId,

    /// The user email.
    String? email,

    /// The username.
    String? username,

    /// The user avatar.
    Avatar? dynamicAvatar,

    /// The list of references IDs.
    List<String>? referencesIds,

    /// The list of references.
    List<Reference>? references,

    /// The user category.
    Category? category,

    /// The user category ID.
    String? categoryId,

    /// The MQTT token.
    @Deprecated('Use mqttConfig instead') String? mqttToken,

    /// The MQTT configuration.
    RealtimeMqttConfig? mqttConfig,

    /// The list of granted access.
    List<Access>? access,

    /// The list of custom fields.
    List<CustomField>? customFields,

    /// The platform auth.
    @Default("") String platformAuth,

    /// The list of childs.
    @Default([]) List<User> childs,

    /// The list of tags IDs.
    List<String>? tagsIds,

    /// The list of tags.
    List<Tag>? tags,

    /// The plan ID.
    String? planId,

    /// The list of allowed apps.
    List<RegisteredApp>? allowedApps,

    /// The list of assets IDs.
    /// This field is only for `Mappit` use.
    List<String>? mappitAssetsIds,

    /// The list of secondary routes IDs.
    /// This field is only for `Mappit` use.
    List<String>? mappitSecondaryRoutesIds,

    /// The list of assets.
    /// This field is only for `Mappit` use.
    List<Asset>? mappitAssets,

    /// The number of days allowed to access historical data.
    /// This field is only for `Mappit` use.
    int? historicalDaysAllowed,

    /// The Mappit external account ID.
    /// This field is only for `Mappit` use.
    String? mappitExternalAccountId,

    /// The Mappit external account.
    /// This field is only for `Mappit` use.
    ExternalAccount? mappitExternalAccount,

    /// Whether MFA is enabled.
    @Default(false) bool mfaEnabled,

    /// The list of MFA methods.
    @Default([]) List<MfaMethod> mfaMethods,

    /// The Tenvio address.
    String? tenvioAddress,

    /// The Tenvio phone.
    String? tenvioPhone,

    /// The Tenvio latitude.
    double? tenvioLatitude,

    /// The Tenvio longitude.
    double? tenvioLongitude,

    /// Whether the Tenvio address is a Plus Code.
    bool? tenvioAddressIsPlusCode,

    /// The date when the account was suspended.
    @TimestampOrNullConverter() DateTime? suspendedAt,

    /// The list of the IDs of the hwModels that already shown the
    /// animations.
    @Default([]) List<String> hwModelsAnimationsIds,

    /// The Brickhouse permission tier for access level of a user.
    BHSPermissionTier? brickhousePermissionTier,

    /// The Brickhouse permission tier ID for access level of a user.
    String? brickhousePermissionTierId,

    /// The Brickhouse user role.
    @JsonKey(unknownEnumValue: BrickhouseUserRole.unknown) BrickhouseUserRole? brickhouseRole,

    /// The SDM code.
    String? sdmCode,

    /// Whether the user is locked.
    @Default(false) bool isLocked,

    /// Whether the user's account is suspended.
    @Default(false) bool isSuspended,

    /// Whether the user has a payment warning.
    @Default(false) bool hasPaymentWarning,

    /// The billing plan.
    BillingPlan? billingPlan,

    /// Whether the user's password is expired and needs to be changed.
    bool? isPasswordExpired,

    /// The user preferences.
    UserPreferences? preferences,

    /// The list of passkeys registered for the user.
    @Default([]) List<Passkey> passkeys,

    /// Whether the user has GPS insurance, for the BHS use case.
    bool? hasGpsInsurance,
  }) = _User;

  /// Deserializes a [User] from a JSON map.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // coverage:ignore-start
  /// Returns the GraphQL entity name based on the user [variant].
  static String _getGqlEntityName({required UserVariant variant}) {
    switch (variant) {
      case .standard:
        return 'User';
      case .ats:
      case .atsAdmin:
        return 'AtsUser';
      case .brickhouse:
        return 'BrickhouseUser';
      case .sdm:
        return 'SdmUser';
      case .tagon:
        return 'TagonUser';
      case .mappitOperator:
      case .mappitCustomer:
      case .mappitEmployee:
      case .mappitSupervisor:
      case .mappitSeller:
        return 'MappitUser';
    }
  }

  // coverage:ignore-end
  // coverage:ignore-start
  /// Returns the GraphQL query name based on the user [variant].
  static String _getGqlQueryName({required UserVariant variant}) {
    switch (variant) {
      case .standard:
        return 'users';
      case .ats:
      case .atsAdmin:
        return 'atsUsers';
      case .brickhouse:
        return 'brickhouseUsers';
      case .sdm:
        return 'sdmUsers';
      case .tagon:
        return 'tagonUsers';
      case .mappitOperator:
      case .mappitCustomer:
      case .mappitEmployee:
      case .mappitSupervisor:
      case .mappitSeller:
        return 'mappitUsers';
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// The GraphQL fragment for a user, with full parity to the
  /// `layrz_users` generators.
  static GqlFragment fragment({required UserVariant variant}) {
    final isMappit = [
      UserVariant.mappitOperator,
      UserVariant.mappitCustomer,
      UserVariant.mappitSupervisor,
      UserVariant.mappitEmployee,
      UserVariant.mappitSeller,
    ].contains(variant);

    final gql = GqlFragment(
      name: 'userFragment',
      onType: _getGqlEntityName(variant: variant),
      fields: [
        GqlField(name: 'id'),
        GqlField(name: 'name'),
        GqlField(name: 'email'),
        GqlField(name: 'username'),
        GqlField(name: 'parentId'),
        GqlField(name: 'dynamicAvatar', fragment: Avatar.fragment),
        GqlField(name: 'referencesIds'),
        GqlField(name: 'categoryId'),
        GqlField(name: 'parentId'),
        GqlField(name: 'access', fragment: Access.idFragment),
        GqlField(name: 'tagsIds'),
        GqlField(name: 'mfaEnabled'),
        GqlField(name: 'hasPaymentWarning'),
        GqlField(name: 'isLocked'),
        GqlField(name: 'isSuspended'),
        GqlField(name: 'planId'),
        GqlField(
          name: 'billingPlan',
          fields: [
            GqlField(name: 'id'),
          ],
        ),
        GqlField(
          name: 'tags',
          fields: [
            GqlField(name: 'id'),
            GqlField(name: 'name'),
            GqlField(name: 'color'),
            GqlField(name: 'dynamicIcon', fragment: Avatar.fragment),
          ],
        ),
        GqlField(
          name: 'references',
          fields: [
            GqlField(name: 'id'),
            GqlField(name: 'name'),
          ],
        ),
        GqlField(name: 'categoryId'),
        GqlField(
          name: 'category',
          fields: [
            GqlField(name: 'id'),
            GqlField(name: 'name'),
            GqlField(name: 'kind'),
          ],
        ),
        GqlField(
          name: 'allowedApps',
          fields: [
            GqlField(name: 'id'),
            GqlField(name: 'name'),
            GqlField(name: 'nickname'),
            GqlField(name: 'technology'),
            GqlField(name: 'sourceId'),
            GqlField(
              name: 'designInformation',
              fields: [
                GqlField(
                  name: 'favicons',
                  fields: [
                    GqlField(name: 'white'),
                    GqlField(name: 'normal'),
                  ],
                ),
                GqlField(
                  name: 'logos',
                  fields: [
                    GqlField(name: 'white'),
                    GqlField(name: 'normal'),
                  ],
                ),
                GqlField(name: 'mainColor'),
                GqlField(name: 'appicon'),
              ],
            ),
            GqlField(
              name: 'instances',
              fields: [
                GqlField(name: 'id'),
                GqlField(name: 'appId'),
                GqlField(name: 'platform'),
                GqlField(name: 'appIdentifier'),
                GqlField(name: 'host'),
                GqlField(name: 'status'),
                GqlField(name: 'migrationStatus'),
              ],
            ),
          ],
        ),
        if (isMappit) ...[
          GqlField(name: 'mappitAssetsIds'),
          GqlField(
            name: 'mappitAssets',
            fields: [
              GqlField(name: 'id'),
              GqlField(name: 'name'),
              GqlField(name: 'mode'),
            ],
          ),
          GqlField(name: 'historicalDaysAllowed'),
        ] else if (variant == .sdm) ...[
          GqlField(name: 'sdmCode'),
        ] else if (variant == .brickhouse) ...[
          GqlField(name: 'suspendedAt'),
          GqlField(name: 'brickhouseRole'),
          GqlField(name: 'brickhousePermissionTierId'),
          GqlField(
            name: 'brickhousePermissionTier',
            fields: [
              GqlField(name: 'id'),
              GqlField(name: 'name'),
              GqlField(name: 'tierLevel'),
              GqlField(name: 'billingPeriod'),
            ],
          ),
        ],
      ],
    );

    return gql;
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all users from the API with a lightweight payload.
  static Future<List<User>> fetchAll({
    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,

    /// The user ecosystem variant to query.
    UserVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [],
          name: _getGqlQueryName(variant: variant),
        )..add(
          GqlField(name: _getGqlQueryName(variant: variant))
            ..add(GqlField(name: 'status'))
            ..add(
              GqlField(
                name: 'result',
                fields: [
                  GqlField(name: 'id'),
                  GqlField(name: 'name'),
                  GqlField(name: 'username'),
                  GqlField(name: 'email'),
                  GqlField(name: 'mfaEnabled'),
                  GqlField(name: 'hasPaymentWarning'),
                  GqlField(name: 'isLocked'),
                  GqlField(name: 'isSuspended'),
                  GqlField(name: 'parentId'),
                  GqlField(name: 'planId'),
                  GqlField(name: 'dynamicAvatar', fragment: Avatar.fragment),
                  if (variant == .sdm) GqlField(name: 'sdmCode'),
                ],
              ),
            ),
        ),
        _userListDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status.toJson());
        Log.error("layrz_models/User/fetchAll(): No response from server");
        return [];
      }

      final result = response.result;
      if (result == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/User/fetchAll(): No result from server");
        return [];
      }

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_models/User/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single user by ID.
  ///
  /// Returns a [User] on success or null on error. When [withDetails] is
  /// true (default), includes tags, references, category, and allowedApps
  /// with full design info.
  Future<User?> fetch({
    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,

    /// The user ecosystem variant to query.
    UserVariant variant = .standard,

    /// Optional app ID scope for the query.
    String? appId,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final variables = <GqlVariable>[
        GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
      ];
      if (appId != null) {
        variables.add(GqlVariable(name: 'appId', type: .id, isRequired: false, value: appId));
      }

      final resultField = GqlField(
        name: 'result',
        fragment: fragment(variant: variant),
      );

      final response = await connector.query(
        GqlQuery(
          variables: variables,
          name: _getGqlQueryName(variant: variant),
        )..add(
          GqlField(
              name: _getGqlQueryName(variant: variant),
              args: {
                'id': 'id',
                if (appId != null) 'appId': 'appId',
              },
            )
            ..add(GqlField(name: 'status'))
            ..add(resultField),
        ),
        _userListDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status.toJson());
        Log.error("layrz_models/User/fetch(): No response from server");
        return null;
      }

      final result = response.result;
      if (result == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/User/fetch(): No result from server");
        return null;
      }

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return null;
      }

      return result.isNotEmpty ? result.first : null;
    } catch (e, stack) {
      Log.critical("layrz_models/User/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all users for app user management (includes username and
  /// email).
  ///
  /// Always uses the standard `users` query; not variant-aware by design.
  /// Returns a list of [User] on success, empty list on error.
  static Future<List<User>> fetchAllForAppUsers({
    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [],
          name: 'users',
        )..add(
          GqlField(name: 'users')
            ..add(GqlField(name: 'status'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'id'))
                ..add(GqlField(name: 'name'))
                ..add(GqlField(name: 'username'))
                ..add(GqlField(name: 'email'))
                ..add(GqlField(name: 'dynamicAvatar', fragment: Avatar.fragment)),
            ),
        ),
        _userListDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status.toJson());
        Log.error("layrz_models/User/fetchAllForAppUsers(): No response from server");
        return [];
      }

      final result = response.result;
      if (result == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/User/fetchAllForAppUsers(): No result from server");
        return [];
      }

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_models/User/fetchAllForAppUsers(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Logs in as a subaccount (delegate login).
  ///
  /// Returns a [Token] on success or null on error.
  Future<Token?> loginAs({
    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.perform(
        GqlMutation(
          variables: [
            GqlVariable(name: 'userId', type: .id, isRequired: true, value: id),
          ],
          name: 'loginAsSubaccount',
        )..add(
          GqlField(name: 'loginAsSubaccount', args: {'userId': 'userId'})
            ..add(GqlField(name: 'status'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'token'))
                ..add(GqlField(name: 'validBefore')),
            ),
        ),
      );

      final data = response.data;
      if (data == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/User/loginAs(): No response from server");
        return null;
      }

      final result = data['data']['loginAsSubaccount'];
      if (result == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/User/loginAs(): No result from server");
        return null;
      }

      final status = ApiStatus.fromJson(result['status']);
      if (status != ApiStatus.ok) {
        onResponse?.call(status.toJson());
        return null;
      }

      onResponse?.call(status.toJson());
      return result['result'] != null ? Token.fromJson(Map<String, dynamic>.from(result['result'] as Map)) : null;
    } catch (e, stack) {
      Log.critical("layrz_models/User/loginAs(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes multiple users by their IDs.
  ///
  /// Returns true on success, false on error. [mappitModule] is required for
  /// mappit variants when provided; specifies which Mappit module to delete
  /// from.
  static Future<bool> deleteMultiple({
    /// The IDs of the users to delete.
    required List<String> ids,

    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,

    /// The user ecosystem variant to delete from.
    UserVariant variant = .standard,

    /// Optional app ID scope for the mutation.
    String? appId,

    /// The Mappit module to delete from, required for Mappit variants when
    /// provided.
    String? mappitModule,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final isMappit = [
        UserVariant.mappitOperator,
        UserVariant.mappitCustomer,
        UserVariant.mappitSupervisor,
        UserVariant.mappitEmployee,
        UserVariant.mappitSeller,
      ].contains(variant);

      final variables = <GqlVariable>[
        GqlVariable(
          name: 'ids',
          type: .list(of: .id, isRequired: true),
          isRequired: true,
          value: ids,
        ),
      ];
      if (appId != null) {
        variables.add(GqlVariable(name: 'appId', type: .id, isRequired: false, value: appId));
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
        'ids': 'ids',
        if (appId != null) 'appId': 'appId',
        if (isMappit && mappitModule != null) 'module': 'module',
      };

      final response = await connector.mutate(
        GqlMutation(
          variables: variables,
          name: _getDeleteMutationName(variant: variant),
        )..add(
          GqlField(
            name: _getDeleteMutationName(variant: variant),
            args: args,
          )..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return false;
      }
      return true;
    } catch (e, stack) {
      Log.critical("layrz_models/User/deleteMultiple(): General exception => $e\n$stack");
      return false;
    }
  }

  // coverage:ignore-end

  // coverage:ignore-start
  /// Imports a list of users into an app.
  ///
  /// Returns true on success, false on error.
  static Future<bool> importIntoApp({
    /// The ID of the app to import users into.
    required String appId,

    /// The IDs of the users to import.
    required List<String> usersIds,

    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(name: 'appId', type: .id, isRequired: true, value: appId),
            GqlVariable(
              name: 'usersIds',
              type: .list(of: .id, isRequired: true),
              isRequired: true,
              value: usersIds,
            ),
          ],
          name: 'importUsersIntoApp',
        )..add(
          GqlField(
              name: 'importUsersIntoApp',
              args: {'appId': 'appId', 'usersIds': 'usersIds'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return false;
      }
      return true;
    } catch (e, stack) {
      Log.critical("layrz_models/User/importIntoApp(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Sends a password reset request for a user.
  ///
  /// Returns true on success, false on error.
  Future<bool> resetPassword({
    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(name: 'userId', type: .id, isRequired: true, value: id),
          ],
          name: 'resetPassword',
        )..add(
          GqlField(
              name: 'resetPassword',
              args: {'userId': 'userId'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return false;
      }
      return true;
    } catch (e, stack) {
      Log.critical("layrz_models/User/resetPassword(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Sets or clears the payment warning flag for a user.
  ///
  /// Returns true on success, false on error.
  Future<bool> setPaymentWarning({
    /// The new payment warning state.
    required bool state,

    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(name: 'userId', type: .id, isRequired: true, value: id),
            GqlVariable(name: 'state', type: .boolean, isRequired: true, value: state),
          ],
          name: 'setPaymentWarningToUser',
        )..add(
          GqlField(
              name: 'setPaymentWarningToUser',
              args: {'userId': 'userId', 'state': 'state'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return false;
      }
      return true;
    } catch (e, stack) {
      Log.critical("layrz_models/User/setPaymentWarning(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Locks or unlocks a user account.
  ///
  /// Returns true on success, false on error.
  Future<bool> lock({
    /// The new lock state.
    required bool state,

    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(name: 'userId', type: .id, isRequired: true, value: id),
            GqlVariable(name: 'state', type: .boolean, isRequired: true, value: state),
          ],
          name: 'lockUserAccount',
        )..add(
          GqlField(
              name: 'lockUserAccount',
              args: {'userId': 'userId', 'state': 'state'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return false;
      }
      return true;
    } catch (e, stack) {
      Log.critical("layrz_models/User/lock(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Suspends or reactivates a user account.
  ///
  /// Returns true on success, false on error.
  Future<bool> suspend({
    /// The new suspension state.
    required bool state,

    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(name: 'userId', type: .id, isRequired: true, value: id),
            GqlVariable(name: 'state', type: .boolean, isRequired: true, value: state),
          ],
          name: 'suspendUserAccount',
        )..add(
          GqlField(
              name: 'suspendUserAccount',
              args: {'userId': 'userId', 'state': 'state'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return false;
      }
      return true;
    } catch (e, stack) {
      Log.critical("layrz_models/User/suspend(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Sends an invitation email to a user by email address.
  ///
  /// Returns a record with status and the generated invite link (or null on
  /// error).
  static Future<(ApiStatus, String?)> invite({
    /// The email address to invite.
    String? email,

    /// The language ID to use for the invitation email.
    String? languageId,

    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final variables = <GqlVariable>[];
      if (email != null) {
        variables.add(GqlVariable(name: 'email', type: .string, isRequired: false, value: email));
      }
      if (languageId != null) {
        variables.add(GqlVariable(name: 'languageId', type: .id, isRequired: false, value: languageId));
      }

      final args = <String, String>{};
      if (email != null) args['email'] = 'email';
      if (languageId != null) args['languageId'] = 'languageId';

      final response = await connector.mutate(
        GqlMutation(
          variables: variables,
          name: 'inviteUser',
        )..add(
          GqlField(
              name: 'inviteUser',
              args: args,
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'inviteLink', alias: 'result')),
        ),
        _stringOrNullDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return (response.status, null);
      }

      return (response.status, response.result);
    } catch (e, stack) {
      Log.critical("layrz_models/User/invite(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null);
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Requests an activity report for a user.
  ///
  /// Returns a record with status, uri, and data from the report (or nulls
  /// on error).
  Future<(ApiStatus, String?, dynamic)> requestActivityReport({
    /// The language ID to use for the report.
    String? languageId,

    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final variables = <GqlVariable>[
        GqlVariable(name: 'userId', type: .id, isRequired: true, value: id),
      ];
      if (languageId != null) {
        variables.add(GqlVariable(name: 'languageId', type: .id, isRequired: false, value: languageId));
      }

      final args = <String, String>{'userId': 'userId'};
      if (languageId != null) args['languageId'] = 'languageId';

      final response = await connector.mutate(
        GqlMutation(
          variables: variables,
          name: 'requestActivityReport',
        )..add(
          GqlField(
              name: 'requestActivityReport',
              args: args,
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'uri'))
                ..add(GqlField(name: 'data')),
            ),
        ),
        _mapOrNullDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return (response.status, null, null);
      }

      return (response.status, response.result?['uri'] as String?, response.result?['data']);
    } catch (e, stack) {
      Log.critical("layrz_models/User/requestActivityReport(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }

  // coverage:ignore-end

  // coverage:ignore-start
  /// The GraphQL fragment for a user session.
  static GqlFragment sessionFragment({UserVariant variant = .standard}) {
    return GqlFragment(
      name: 'sessionFragment',
      onType: _getGqlEntityName(variant: variant),
      fields: [
        GqlField(name: 'id'),
        GqlField(name: 'name'),
        GqlField(name: 'email'),
        GqlField(name: 'username'),
        GqlField(name: 'dynamicAvatar', fragment: Avatar.fragment),
        GqlField(
          name: 'token',
          fields: [
            GqlField(name: 'token'),
            GqlField(name: 'validBefore'),
          ],
        ),
      ],
    );
  }

  // coverage:ignore-end
  // coverage:ignore-start
  /// Logs in a user with username/email and password.
  ///
  /// Returns a record with status, errors, and the logged-in user (or null
  /// on error).
  static Future<StandardResponse<User>> login({
    /// The username or email to log in with.
    required String usernameOrEmail,

    /// The password to log in with.
    required String password,

    /// The language ID to use for the session.
    String? languageId,

    /// Optional app ID scope for the login.
    String? appId,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// The user ecosystem variant to log in against.
    UserVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(name: 'usernameOrEmail', type: .string, isRequired: true, value: usernameOrEmail),
            GqlVariable(name: 'password', type: .string, isRequired: true, value: password),
            if (languageId != null) GqlVariable(name: 'languageId', type: .id, isRequired: false, value: languageId),
            if (appId != null) GqlVariable(name: 'appId', type: .id, isRequired: false, value: appId),
          ],
          name: 'login',
        )..add(
          GqlField(
              name: _getGqlLoginMutationName(variant: variant),
              args: {
                'username': 'usernameOrEmail',
                'password': 'password',
                if (languageId != null) 'languageId': 'languageId',
                if (appId != null) 'appId': 'appId',
              },
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fragment: sessionFragment(variant: variant),
              ),
            ),
        ),
        _userDecoder,
      );

      if (response.status != .ok) {
        return (response.status, response.errors, null);
      }

      return (response.status, null, response.result);
    } catch (e, stack) {
      Log.critical("layrz_models/User/login(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }

  // coverage:ignore-end

  // coverage:ignore-start
  /// Retrieves the current user session based on the provided API token.
  ///
  /// Returns a record with status, errors, and the current user (or null on
  /// error).
  static Future<StandardResponse<User>> getSession({
    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Optional app ID scope for the session lookup.
    String? appId,

    /// The user ecosystem variant to query.
    UserVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            if (appId != null) GqlVariable(name: 'appId', type: .id, isRequired: false, value: appId),
          ],
          name: 'getSession',
        )..add(
          GqlField(
              name: _getGqlGetSessionName(variant: variant),
              args: {
                if (appId != null) 'appId': 'appId',
              },
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fragment: sessionFragment(variant: variant),
              ),
            ),
        ),
        _userDecoder,
      );
      if (response.status != .ok) {
        return (response.status, response.errors, null);
      }

      return (response.status, null, response.result);
    } catch (e, stack) {
      Log.critical("layrz_models/User/getSession(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }

  // coverage:ignore-end
  // coverage:ignore-start
  /// Returns the GraphQL login mutation name for the given [variant].
  static String _getGqlLoginMutationName({UserVariant variant = .standard}) {
    switch (variant) {
      case .brickhouse:
        return 'brickhouseLogin';
      case .mappitOperator:
      case .mappitCustomer:
      case .mappitSupervisor:
      case .mappitEmployee:
      case .mappitSeller:
        return 'mappitLogin';
      case .ats:
      case .atsAdmin:
        return 'atsLogin';
      case .sdm:
      case .tagon:
      case .standard:
      default:
        return 'login';
    }
  }

  // coverage:ignore-end
  // coverage:ignore-start
  /// Returns the GraphQL get-session query name for the given [variant].
  static String _getGqlGetSessionName({UserVariant variant = .standard}) {
    switch (variant) {
      case .brickhouse:
        return 'brickhouseGetSession';
      case .mappitOperator:
      case .mappitCustomer:
      case .mappitSupervisor:
      case .mappitEmployee:
      case .mappitSeller:
        return 'mappitGetSession';
      case .ats:
      case .atsAdmin:
        return 'atsGetSession';
      case .sdm:
      case .tagon:
      case .standard:
      default:
        return 'getSession';
    }
  }

  // coverage:ignore-end
}
