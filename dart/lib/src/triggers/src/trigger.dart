part of '../triggers.dart';

/// A rule that detects changes or activity and performs actions in response.
///
/// [Trigger] is the model of a trigger. To get more information about each
/// field, refer to the API documentation using GraphiQL
/// `https://api.layrz.com/graphql`.
@freezed
abstract class Trigger with _$Trigger {
  const Trigger._();

  /// Creates a new [Trigger].
  const factory Trigger({
    /// [id] is the unique identifier of the trigger.
    required String id,

    /// [name] is the name of the trigger.
    required String name,

    /// [code] is the code of the trigger.
    required String code,

    /// [geofencesIds] is the list of ID's of the linked geofences.
    List<String>? geofencesIds,

    /// [tagsGeofencesIds] is the list of ID's of the linked geofences through
    /// tags.
    List<String>? tagsGeofencesIds,

    /// [assetsIds] is the list of ID's of the linked assets.
    List<String>? assetsIds,

    /// [tagsAssetsIds] is the list of ID's of the linked assets through tags.
    List<String>? tagsAssetsIds,

    /// [parameters] is the list of parameters of the trigger.
    List<String>? parameters,

    /// [authAssetsIds] is the list of ID's of the assets for authentication.
    List<String>? authAssetsIds,

    /// [authUsersIds] is the list of ID's of the users for authentication.
    List<String>? authUsersIds,

    /// [authTagsIds] is the list of ID's of the tags for authentication.
    List<String>? authTagsIds,

    /// [kind] is the type of the trigger.
    @JsonKey(unknownEnumValue: TriggerType.presenceInGeofences) required TriggerType kind,

    /// [geofenceKind] is the type of the geofence detection.
    ///
    /// Only used when [kind] is [TriggerType.presenceInGeofences].
    @JsonKey(unknownEnumValue: TriggerGeofenceDetectionMode.both) TriggerGeofenceDetectionMode? geofenceKind,

    /// [formula] is the formula of the trigger. Only used when [kind] is
    /// [TriggerType.formula].
    ///
    /// The formula is a script that returns a boolean value (true or false).
    /// Also, the formula should be written in LCL (Layrz Compute Language).
    String? formula,

    /// [script] is the script of the trigger. Only used when [kind] is
    /// [TriggerType.pythonScript].
    ///
    /// The script is a script that returns a boolean value (true or false).
    /// Also, the script should be written in Python (Version 3.8).
    String? script,

    /// [exactHour] is the exact hour of the trigger. Only used when [kind] is
    /// [TriggerType.exactTime].
    @TimeOfDayOrNullConverter() TimeOfDay? exactHour,

    /// [crontabFormat] is the crontab format of the trigger. Only used when
    /// [kind] is [TriggerType.exactTime].
    ///
    /// The crontab format is a string that represents the exact time of the
    /// trigger.
    String? crontabFormat,

    /// [weekdays] is the list of weekdays of the trigger. Only used when
    /// [kind] is [TriggerType.exactTime].
    @JsonKey(unknownEnumValue: Weekday.monday) List<Weekday>? weekdays,

    /// [isPlainCrontab] is a boolean that indicates if the crontab format is
    /// plain or not. Only used when [kind] is [TriggerType.exactTime].
    bool? isPlainCrontab,

    /// [timezoneId] is the ID of the timezone of the trigger. Only used when
    /// [kind] is [TriggerType.exactTime].
    String? timezoneId,

    /// [priority] is the priority of the trigger.
    int? priority,

    /// [color] is the color of the trigger.
    @ColorOrNullConverter() Color? color,

    /// [visualEventEffect] is the visual effect of the trigger.
    @JsonKey(unknownEnumValue: CaseEventEffect.none) CaseEventEffect? visualEventEffect,

    /// [careProtocolId] is the ID of the care protocol to execute when the
    /// trigger is activated.
    String? careProtocolId,

    /// [careProtocol] is the care protocol to execute when the trigger is
    /// activated.
    CareProtocol? careProtocol,

    /// [caseKind] represents the type of case to generate when the trigger is
    /// activated.
    ///
    /// This field is required for `kind=[TriggerType.casesChanges]`.
    @JsonKey(unknownEnumValue: CaseType.onFollow) CaseType? caseKind,

    /// [caseCommentPattern] represents the type of comment pattern to detect
    /// changes on cases to perform actions.
    ///
    /// This field is required for `kind=[TriggerType.casesChanges]` and
    /// `caseKind=[CaseType.onCommentPattern]`.
    @JsonKey(unknownEnumValue: CaseCommentPattern.contains) CaseCommentPattern? caseCommentPattern,

    /// [caseCommentPatternValue] represents the value of the comment pattern
    /// to detect changes on cases to perform actions.
    ///
    /// This field is required for `kind=[TriggerType.casesChanges]` and
    /// `caseKind=[CaseType.onCommentPattern]`.
    String? caseCommentPatternValue,

    /// [cooldownTime] represents the cooldown time of the trigger.
    @DurationOrNullConverter() Duration? cooldownTime,

    /// [manualActionFields] represents the list of fields to use for the
    /// manual action.
    List<CareTask>? manualActionFields,

    /// [children] represents the list of children triggers.
    List<Trigger>? children,

    /// [childrenIds] represents the list of ID's of the children triggers.
    List<String>? childrenIds,

    /// [searchTimeDelta] represents the search time delta of the trigger.
    @DurationOrNullConverter() Duration? searchTimeDelta,

    /// [access] represents the list of accesses to the trigger.
    List<Access>? access,

    /// [hasCaseExpirity] indicates if the trigger has case expiry.
    bool? hasCaseExpirity,

    /// [whenCaseExpiresDelta] represents the duration after which the case
    /// expires.
    @DurationOrNullConverter() Duration? whenCaseExpiresDelta,

    /// [shouldStack] indicates if the cases generated by the trigger should
    /// be stacked.
    @Default(false) bool shouldStack,

    /// [stackUpperLimit] represents the maximum number of cases that can be
    /// stacked.
    ///
    /// If the limit is reached, cases will start stacking on top of each
    /// other. If `null`, there is no limit.
    int? stackUpperLimit,

    /// [isPaused] indicates if the trigger is paused or not.
    ///
    /// To toggle this value, use the mutation `toggleTriggerState`.
    @Default(false) bool isPaused,

    /// [shouldGenerateLocator] indicates if the trigger should generate a
    /// locator when activated.
    @Default(false) bool shouldGenerateLocator,

    /// [locatorExpiresDelta] represents the duration after which the locator
    /// expires, counted from the trigger activation.
    @DurationOrNullConverter() Duration? locatorExpiresDelta,

    /// [locatorExpiresTriggersIds] represents the list of ID's of the
    /// triggers that can expire the locator.
    List<String>? locatorExpiresTriggersIds,

    /// [locatorGeofencesIds] represents the list of ID's of the geofences
    /// that can expire the locator.
    List<String>? locatorGeofencesIds,

    /// [locatorCustomization] is the registered app that will act as a
    /// customization for this locator.
    RegisteredApp? locatorCustomization,

    /// [locatorCustomizationId] is the ID of the registered app that will act
    /// as a customization for this locator.
    String? locatorCustomizationId,
  }) = _Trigger;

  /// Converts a JSON object to a [Trigger].
  factory Trigger.fromJson(Map<String, dynamic> json) => _$TriggerFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying trigger fields.
  ///
  /// Only the lightweight fields needed to list a [Trigger] are selected; fetch a single [Trigger]
  /// with [fetch] when the full record is required.
  static GqlFragment get fragment => GqlFragment(
    name: 'triggerFragment',
    onType: 'Trigger',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'code'),
      GqlField(name: 'kind'),
      GqlField(name: 'isPaused'),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// The fields of the full record selected next to [fragment] when fetching one trigger or saving.
  static List<GqlField> get _detailFields => [
    for (final name in [
      'timezoneId',
      'cooldownTime',
      'searchTimeDelta',
      'childrenIds',
      'caseKind',
      'caseCommentPattern',
      'caseCommentPatternValue',
      'geofenceKind',
      'geofencesIds',
      'tagsGeofencesIds',
      'formula',
      'script',
      'exactHour',
      'crontabFormat',
      'isPlainCrontab',
      'weekdays',
      'parameters',
      'authAssetsIds',
      'authTagsIds',
      'authUsersIds',
      'careProtocolId',
      'priority',
      'visualEventEffect',
      'color',
      'hasCaseExpirity',
      'whenCaseExpiresDelta',
      'stackUpperLimit',
      'shouldStack',
    ])
      GqlField(name: name),
    _manualActionFieldsField,
    for (final name in [
      'assetsIds',
      'tagsAssetsIds',
      'shouldGenerateLocator',
      'locatorExpiresDelta',
      'locatorGeofencesIds',
      'locatorExpiresTriggersIds',
      'locatorCustomizationId',
    ])
      GqlField(name: name),
  ];
  // coverage:ignore-end

  // coverage:ignore-start
  static GqlField get _manualActionFieldsField => GqlField(
    name: 'manualActionFields',
    fields: [
      for (final name in ['question', 'answer', 'minValue', 'maxValue', 'choices']) GqlField(name: name),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all triggers available to the authenticated user.
  ///
  /// Selects the lightweight [fragment]; add any other field with [extraFields]. Use [fetch] for the
  /// full record. Returns an empty list on any error. Errors are logged internally.
  static Future<List<Trigger>> fetchAll({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [variant] selects the standard or Mappit query.
    TriggerVariant variant = .standard,

    /// [extraFields] is the list of additional fields to fetch from the API, if any.
    List<GqlField>? extraFields,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final queryName = _getQueryNameFromVariant(variant);
    try {
      final response = await connector.query(
        GqlQuery(name: queryName)..add(
          GqlField(name: queryName)
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fragment: fragment,
                fields: [...?extraFields],
              ),
            ),
        ),
        _triggerListDecoder,
      );

      if (response.status != .ok) {
        Log.warning(
          "layrz_sdk/Trigger/fetchAll(): API returned status ${response.status}",
        );
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical(
        "layrz_sdk/Trigger/fetchAll(): General exception => $err\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the full record of this trigger: every field the trigger form reads, [isPaused] and
  /// [access].
  ///
  /// Returns `null` when the trigger is not found or on any error; a missing trigger reports
  /// [ApiStatus.notfound] through [onResponse].
  Future<Trigger?> fetch({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [variant] selects the standard or Mappit query.
    TriggerVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final queryName = _getQueryNameFromVariant(variant);
    try {
      final response = await connector.query(
        GqlQuery(
          name: queryName,
          variables: [
            GqlVariable(name: 'id', value: id, type: .id, isRequired: true),
          ],
        )..add(
          GqlField(name: queryName, args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fragment: fragment,
                fields: [
                  ..._detailFields,
                  GqlField(name: 'access', fragment: Access.idFragment),
                ],
              ),
            ),
        ),
        _triggerListDecoder,
      );

      if (response.status != .ok) {
        Log.warning(
          "layrz_sdk/Trigger/fetch(): API returned status ${response.status}",
        );
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
      Log.critical("layrz_sdk/Trigger/fetch(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the triggers with the given [ids].
  ///
  /// Returns `true` when the API reports success, `false` otherwise.
  static Future<bool> deleteMany({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [variant] selects the standard or Mappit mutation.
    TriggerVariant variant = .standard,

    /// [ids] are the IDs of the triggers to delete.
    required List<String> ids,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final mutationName = _getDeleteMutationNameFromVariant(variant);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(
              name: 'ids',
              value: ids,
              type: .list(of: .id, isRequired: true),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: mutationName, args: {'ids': 'ids'})..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        Log.warning(
          "layrz_sdk/Trigger/deleteMany(): API returned status ${response.status}",
        );
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (err, stack) {
      Log.critical(
        "layrz_sdk/Trigger/deleteMany(): General exception => $err\n$stack",
      );
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Toggles the paused state of the trigger [id] with `toggleTriggerState`, which has no Mappit
  /// variant.
  ///
  /// Returns the [ApiStatus], the field errors (if any) and the updated [Trigger].
  static Future<StandardResponse<Trigger>> toggle({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [id] is the ID of the trigger to toggle.
    required String id,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    const mutationName = 'toggleTriggerState';
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(name: 'triggerId', value: id, type: .id, isRequired: true),
          ],
          fields: [
            GqlField(name: mutationName, args: {'triggerId': 'triggerId'})
              ..add(GqlField(name: 'status'))
              ..add(GqlField(name: 'errors'))
              ..add(
                GqlField(
                  name: 'result',
                  fragment: fragment,
                  fields: _detailFields,
                ),
              ),
          ],
        ),
        _triggerDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, null, response.result);
    } catch (err, stack) {
      Log.critical(
        "layrz_sdk/Trigger/toggle(): General exception => $err\n$stack",
      );
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the manual action triggers available for the asset [assetId] with
  /// `findManualTriggersFromAsset`.
  ///
  /// Selects the lightweight [fragment] plus [manualActionFields]. Returns an empty list on any error.
  static Future<List<Trigger>> fetchManualFromAsset({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [assetId] is the ID of the asset to find the manual triggers for.
    required String assetId,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    const queryName = 'findManualTriggersFromAsset';
    try {
      final response = await connector.query(
        GqlQuery(
          name: queryName,
          variables: [
            GqlVariable(name: 'assetId', value: assetId, type: .id, isRequired: true),
          ],
        )..add(
          GqlField(name: queryName, args: {'assetId': 'assetId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fragment: fragment,
                fields: [_manualActionFieldsField],
              ),
            ),
        ),
        _triggerListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Trigger/fetchManualFromAsset(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical("layrz_sdk/Trigger/fetchManualFromAsset(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the assets (`id name`) this manual action trigger can be activated for with
  /// `findAssetsFromManualTrigger`.
  ///
  /// Returns an empty list on any error.
  Future<List<Asset>> fetchManualAssets({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    const queryName = 'findAssetsFromManualTrigger';
    try {
      final response = await connector.query(
        GqlQuery(
          name: queryName,
          variables: [
            GqlVariable(name: 'triggerId', value: id, type: .id, isRequired: true),
          ],
        )..add(
          GqlField(name: queryName, args: {'triggerId': 'triggerId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fields: [
                  GqlField(name: 'id'),
                  GqlField(name: 'name'),
                ],
              ),
            ),
        ),
        _manualAssetListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/Trigger/fetchManualAssets(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical("layrz_sdk/Trigger/fetchManualAssets(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Registers a manual activation of this trigger for the asset [assetId] with
  /// `registerManualTriggerActivation`.
  ///
  /// [data] maps each [CareTask.question] of [manualActionFields] to its answer. Returns the status and,
  /// on a rejected request, the field errors keyed `manualActionFields.<index>`.
  Future<StandardResponse<void>> registerManualActivation({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [assetId] is the ID of the asset the activation is registered for.
    required String assetId,

    /// [data] are the answers keyed by question.
    required Map<String, dynamic> data,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    const mutationName = 'registerManualTriggerActivation';
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(name: 'triggerId', value: id, type: .id, isRequired: true),
            GqlVariable(name: 'assetId', value: assetId, type: .id, isRequired: true),
            GqlVariable(name: 'data', value: data, type: .json, isRequired: true),
          ],
        )..add(
          GqlField(name: mutationName, args: {'triggerId': 'triggerId', 'assetId': 'assetId', 'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (ApiStatus.ok, null, null);
    } catch (err, stack) {
      Log.critical("layrz_sdk/Trigger/registerManualActivation(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  static String _getQueryNameFromVariant(TriggerVariant variant) {
    switch (variant) {
      case .mappit:
        return 'mappitTriggers';
      case .standard:
        return 'triggers';
    }
  }

  static String _getDeleteMutationNameFromVariant(TriggerVariant variant) {
    switch (variant) {
      case .mappit:
        return 'deleteMappitTriggers';
      case .standard:
        return 'deleteTriggers';
    }
  }

  // coverage:ignore-end
}

/// [_triggerListDecoder] decodes a raw listing `result` payload into a list of [Trigger].
List<Trigger> _triggerListDecoder(Object? json) {
  return List<Trigger>.from(
    (json as List? ?? []).map(
      (e) => Trigger.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}

/// [_triggerDecoder] decodes a single raw `result` payload into a [Trigger].
Trigger _triggerDecoder(Object? json) => Trigger.fromJson(Map<String, dynamic>.from(json as Map));

/// [_manualAssetListDecoder] decodes the `result` of `findAssetsFromManualTrigger` into a list of [Asset].
List<Asset> _manualAssetListDecoder(Object? json) {
  return List<Asset>.from(
    (json as List? ?? []).map(
      (e) => Asset.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}
