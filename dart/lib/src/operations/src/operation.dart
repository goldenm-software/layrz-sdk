part of '../operations.dart';

/// A configured action triggered by the platform's rule engine.
///
/// [Operation] models a single automation/notification action -- a webhook
/// call, an email, an in-app notification, a push notification, an SMS, a
/// WhatsApp message, and so on, depending on [operationType]. Only the
/// fields relevant to the configured [operationType] are populated; see
/// each field's documentation for the [operationType] values it applies to.
@freezed
abstract class Operation with _$Operation {
  /// Private constructor used by the code generator.
  const Operation._();

  /// Constructs an immutable [Operation].
  const factory Operation({
    /// The unique identifier of the operation.
    required String id,

    /// The name of the operation.
    required String name,

    /// The type of the operation.
    @JsonKey(unknownEnumValue: OperationType.unknown) required OperationType operationType,

    /// The HTTP request type to perform.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.webhook].
    @JsonKey(unknownEnumValue: HttpRequestType.httpGet) HttpRequestType? requestType,

    /// The URL to perform the request against.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.webhook].
    String? url,

    /// The headers to send in the HTTP request.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.webhook].
    @Default([]) List<HttpHeader>? headers,

    /// The payload to send in the submission.
    String? payload,

    /// The language identifier of the message. Used to define the default
    /// language of the message.
    String? languageId,

    /// The timezone of the message. Used to define the default timezone of
    /// the message.
    @Deprecated('Use `timezoneName` instead') Timezone? timezone,

    /// The IANA name of the timezone.
    @Default('UTC') String timezoneName,

    /// The date/time format to use for the operation.
    ///
    /// This overrides the user's date/time format preference.
    @Default('%Y-%m-%d %I:%M %p') String dateTimeFormat,

    /// The reception email addresses to send the message to.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.email].
    @Default([]) List<String>? receptionEmails,

    /// The subject of the email.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.email].
    String? emailSubject,

    /// The color of the inline notification.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.inAppNotification].
    @ColorOrNullConverter() Color? color,

    /// The text color of the inline notification.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.inAppNotification].
    @ColorOrNullConverter() Color? textColor,

    /// The receiver phone numbers to send the message to.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.twilio].
    List<PhoneNumber>? destinationPhones,

    /// The notification type to perform.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.twilio].
    @JsonKey(unknownEnumValue: NotificationType.unknown) NotificationType? notificationType,

    /// The identifier of the external account of the operation.
    @JsonKey(name: 'accountId') String? externalAccountId,

    /// The list of granted access entries of the operation.
    List<Access>? access,

    /// The list of triggers (directly or indirectly) associated with the
    /// operation.
    List<Trigger>? triggers,

    /// Whether to use the asset contacts instead of the submission
    /// contacts.
    bool? useAssetContactsInstead,

    /// Whether to attach the image of the submission to the email.
    bool? attachImage,

    /// The identifier of the email template of the operation.
    String? emailTemplateId,

    /// The list of platforms where the operation should be received.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.bhsPush].
    @JsonKey(unknownEnumValue: AppPlatform.web) List<AppPlatform>? pushPlatforms,

    /// The title of the push notification.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.bhsPush].
    String? pushTitle,

    /// The sound effect to play when the notification arrives.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.inAppNotification].
    @JsonKey(unknownEnumValue: SoundEffect.none) @Default(SoundEffect.none) SoundEffect soundEffect,

    /// The URI of the sound effect to play when the notification arrives.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.inAppNotification].
    String? soundEffectUri,

    /// The icon of the notification.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.inAppNotification].
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// The duration of the notification.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.inAppNotification].
    @DurationOrNullConverter() Duration? duration,

    /// The content SID to use for [OperationType.sms] and
    /// [OperationType.whatsappMessage].
    String? layrzTemplate,

    /// Binds a `PUSH_NOTIFICATION`-type operation to a [RegisteredApp] via
    /// its identifier. Set via mutation.
    String? appId,
  }) = _Operation;

  /// Deserializes an [Operation] from a JSON map.
  factory Operation.fromJson(Map<String, dynamic> json) => _$OperationFromJson(json);

  // coverage:ignore-start
  /// A lightweight GraphQL fragment for [Operation], including access and
  /// trigger details.
  static GqlFragment get gqlFragment => GqlFragment(name: 'operationFragment', onType: 'Operation')
    ..add(GqlField(name: 'id'))
    ..add(GqlField(name: 'name'))
    ..add(GqlField(name: 'operationType'))
    ..add(GqlField(name: 'appId'))
    ..add(GqlField(name: 'requestType'))
    ..add(GqlField(name: 'url'))
    ..add(
      GqlField(name: 'headers')
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'value')),
    )
    ..add(GqlField(name: 'payload'))
    ..add(GqlField(name: 'languageId'))
    ..add(GqlField(name: 'timezoneName'))
    ..add(GqlField(name: 'dateTimeFormat'))
    ..add(GqlField(name: 'receptionEmails'))
    ..add(GqlField(name: 'emailSubject'))
    ..add(GqlField(name: 'color'))
    ..add(GqlField(name: 'textColor'))
    ..add(
      GqlField(name: 'destinationPhones')
        ..add(GqlField(name: 'countryCode'))
        ..add(GqlField(name: 'phoneNumber')),
    )
    ..add(GqlField(name: 'notificationType'))
    ..add(GqlField(name: 'accountId'))
    ..add(GqlField(name: 'useAssetContactsInstead'))
    ..add(GqlField(name: 'attachImage'))
    ..add(GqlField(name: 'pushTitle'))
    ..add(GqlField(name: 'pushPlatforms'))
    ..add(GqlField(name: 'icon'))
    ..add(GqlField(name: 'duration'))
    ..add(GqlField(name: 'soundEffect'))
    ..add(GqlField(name: 'soundEffectUri'))
    ..add(GqlField(name: 'layrzTemplate'))
    ..add(
      GqlField(name: 'access')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'read'))
        ..add(GqlField(name: 'write'))
        ..add(GqlField(name: 'manage'))
        ..add(GqlField(name: 'objectId'))
        ..add(GqlField(name: 'userId'))
        ..add(GqlField(name: 'module')),
    )
    ..add(
      GqlField(name: 'triggers')
        ..add(GqlField(name: 'id'))
        ..add(GqlField(name: 'name'))
        ..add(GqlField(name: 'code'))
        ..add(GqlField(name: 'kind')),
    );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single operation by [id] from the server.
  ///
  /// Returns an [Operation] with full details including access and
  /// triggers, or null on error. Authentication is carried via [apiToken].
  ///
  /// Optional callback invoked with the raw status code string of the
  /// response.
  static Future<Operation?> fetch({
    /// The identifier of the operation to fetch.
    required String id,

    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// The identifier of the app to scope the fetch to, when the variant
    /// supports it.
    String? appId,

    /// Optional callback invoked with the raw status code string of the
    /// response.
    void Function(String statusCode)? onResponse,

    /// The product variant of the operations module.
    OperationVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final variables = <GqlVariable>[
        GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
      ];
      final args = <String, String>{'id': 'id'};

      if (variant.supportsAppId) {
        variables.add(GqlVariable(name: 'appId', type: .id, isRequired: false, value: appId));
        args['appId'] = 'appId';
      }

      final response = await connector.query(
        GqlQuery(
          variables: variables,
          name: 'fetchOperation',
        )..add(
          GqlField(name: variant.queryName, args: args)
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: gqlFragment)),
        ),
        _operationListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return null;
      }

      final resultList = response.result ?? [];
      if (resultList.isEmpty) {
        Log.warning("layrz_sdk/Operation/fetch(): No result in list");
        return null;
      }
      return resultList.first;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Operation/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all operations from the server, optionally filtered by
  /// [appId].
  ///
  /// Returns a list of [Operation], or an empty list on error.
  ///
  /// Optional callback invoked with the raw status code string of the
  /// response.
  static Future<List<Operation>> fetchAll({
    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// The identifier of the app to filter by, when the variant supports
    /// it.
    String? appId,

    /// Optional callback invoked with the raw status code string of the
    /// response.
    void Function(String statusCode)? onResponse,

    /// The product variant of the operations module.
    OperationVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final variables = <GqlVariable>[];
      final args = <String, String>{};

      if (appId != null && variant.supportsAppId) {
        variables.add(GqlVariable(name: 'appId', type: .id, isRequired: false, value: appId));
        args['appId'] = 'appId';
      }

      final response = await connector.query(
        GqlQuery(
          variables: variables,
          name: 'fetchOperations',
        )..add(
          GqlField(name: variant.queryName, args: args)
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(name: 'result')
                ..add(GqlField(name: 'id'))
                ..add(GqlField(name: 'name'))
                ..add(GqlField(name: 'operationType')),
            ),
        ),
        _operationListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/Operation/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes a single operation by [id].
  ///
  /// Returns true on success, false on error.
  ///
  /// Optional callback invoked with the raw status code string of the
  /// response.
  static Future<bool> delete({
    /// The identifier of the operation to delete.
    required String id,

    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the raw status code string of the
    /// response.
    void Function(String statusCode)? onResponse,

    /// The product variant of the operations module.
    OperationVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'ids',
              type: .list(of: .id),
              isRequired: true,
              value: [id],
            ),
          ],
          name: variant.deleteMutationName,
        )..add(
          GqlField(name: variant.deleteMutationName, args: {'ids': 'ids'})
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
      Log.critical("layrz_sdk/Operation/delete(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes multiple operations by their [ids].
  ///
  /// Returns true on success, false on error.
  ///
  /// Optional callback invoked with the raw status code string of the
  /// response.
  static Future<bool> deleteMany({
    /// The identifiers of the operations to delete.
    required List<String> ids,

    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the raw status code string of the
    /// response.
    void Function(String statusCode)? onResponse,

    /// The product variant of the operations module.
    OperationVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'ids',
              type: .list(of: .id),
              isRequired: true,
              value: ids,
            ),
          ],
          name: variant.deleteMutationName,
        )..add(
          GqlField(name: variant.deleteMutationName, args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
      }
      return response.status == .ok;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Operation/deleteMany(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}

/// Mutable input data for an [Operation], suitable for form binding.
@unfreezed
abstract class OperationInput with _$OperationInput {
  /// Private constructor used by the code generator.
  const OperationInput._();

  /// Constructs a mutable [OperationInput].
  factory OperationInput({
    /// The unique identifier of the operation. Null when creating a new
    /// operation.
    String? id,

    /// The name of the operation.
    @Default('') String name,

    /// The type of the operation.
    @JsonKey(unknownEnumValue: OperationType.unknown)
    @Default(OperationType.inAppNotification)
    OperationType operationType,

    /// The HTTP request type to perform.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.webhook].
    @JsonKey(unknownEnumValue: HttpRequestType.httpGet) HttpRequestType? requestType,

    /// The URL to perform the request against.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.webhook].
    String? url,

    /// The headers to send in the HTTP request.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.webhook].
    @Default([]) List<HttpHeaderInput> headers,

    /// The payload to send in the submission.
    String? payload,

    /// The language identifier of the message. Used to define the default
    /// language of the message.
    String? languageId,

    /// The IANA name of the timezone.
    @Default('UTC') String timezoneName,

    /// The date/time format to use for the operation.
    ///
    /// This overrides the user's date/time format preference.
    @Default('%Y-%m-%d %I:%M %p') String dateTimeFormat,

    /// The reception email addresses to send the message to.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.email].
    @Default([]) List<String> receptionEmails,

    /// The subject of the email.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.email].
    @Default('') String emailSubject,

    /// The color of the inline notification.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.inAppNotification].
    @ColorOrNullConverter() Color? color,

    /// The text color of the inline notification.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.inAppNotification].
    @ColorOrNullConverter() Color? textColor,

    /// The receiver phone numbers to send the message to.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.twilio].
    @Default([]) List<PhoneNumberInput> destinationPhones,

    /// The notification type to perform.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.twilio].
    @JsonKey(unknownEnumValue: NotificationType.unknown) NotificationType? notificationType,

    /// The identifier of the external account of the operation.
    String? externalAccountId,

    /// Whether to use the asset contacts instead of the submission
    /// contacts.
    @Default(false) bool useAssetContactsInstead,

    /// Whether to attach the image of the submission to the email.
    @Default(false) bool attachImage,

    /// The identifier of the email template of the operation.
    String? emailTemplateId,

    /// The list of platforms where the operation should be received.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.bhsPush].
    @JsonKey(unknownEnumValue: AppPlatform.web) List<AppPlatform>? pushPlatforms,

    /// The title of the push notification.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.bhsPush].
    String? pushTitle,

    /// The sound effect to play when the notification arrives.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.inAppNotification].
    @JsonKey(unknownEnumValue: SoundEffect.none) @Default(SoundEffect.none) SoundEffect soundEffect,

    /// The URI of the sound effect to play when the notification arrives.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.inAppNotification].
    String? soundEffectUri,

    /// The icon of the notification.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.inAppNotification].
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// The duration of the notification.
    ///
    /// This field is only considered when [operationType] is
    /// [OperationType.inAppNotification].
    @DurationConverter() @Default(Duration(seconds: 5)) Duration duration,

    /// The content SID to use for [OperationType.sms] and
    /// [OperationType.whatsappMessage].
    String? layrzTemplate,

    /// Binds a `PUSH_NOTIFICATION`-type operation to a [RegisteredApp] via
    /// its identifier. Set via mutation.
    String? appId,
  }) = _OperationInput;

  /// Deserializes an [OperationInput] from a JSON map.
  factory OperationInput.fromJson(Map<String, dynamic> json) => _$OperationInputFromJson(json);

  // coverage:ignore-start
  /// Creates or updates this operation on the server, depending on whether
  /// [id] is null.
  ///
  /// If [id] is null, uses the variant's add mutation; otherwise uses the
  /// variant's edit mutation.
  ///
  /// Returns the saved [Operation] with full details, or null on error.
  ///
  /// Optional callback invoked with the raw status code string of the
  /// response.
  Future<Operation?> save({
    /// The API token for authentication. Obtain via the `login` mutation
    /// on the GraphQL API.
    required String apiToken,

    /// The Layrz GraphQL API endpoint (e.g.,
    /// `https://api.example.com/graphql`).
    required Uri uri,

    /// Optional callback invoked with the raw status code string of the
    /// response.
    void Function(String statusCode)? onResponse,

    /// The product variant of the operations module.
    OperationVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final mutationName = id == null ? variant.addMutationName : variant.editMutationName;
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: .input(of: 'OperationInput'),
              isRequired: true,
              value: this,
            ),
          ],
          name: mutationName,
        )..add(
          GqlField(name: mutationName, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: Operation.gqlFragment)),
        ),
        (json) => Operation.fromJson(json as Map<String, dynamic>),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return null;
      }

      if (response.result == null) {
        Log.warning("layrz_sdk/OperationInput/save(): No result in list");
        return null;
      }
      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/OperationInput/save(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end
}
