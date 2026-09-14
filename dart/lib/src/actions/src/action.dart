part of '../actions.dart';

/// [_actionListDecoder] decodes a raw listing `result` payload into a list of [Action].
/// Used by listing queries (fetchAll, fetch).
List<Action> _actionListDecoder(Object? json) {
  return List<Action>.from(
    (json as List? ?? []).map((e) => Action.fromJson(Map<String, dynamic>.from(e as Map))),
  );
}

/// [_actionDecoder] decodes a single-object `result` payload into an [Action].
/// Used by result-bearing mutations (add/edit-style).
Action _actionDecoder(Object? json) {
  return Action.fromJson(Map<String, dynamic>.from(json as Map));
}

/// Immutable action data for the Layrz platform.
///
/// An [Action] is a rule that performs a side effect (specified by [kind] and,
/// for links, further narrowed by [subkind]) when any of its [triggersIds] fire, or
/// when it is invoked directly. Depending on [kind], it may link/unlink an asset,
/// perform one or more [operationsIds], perform a command via [commandId], broadcast to
/// [outboundServicesIds], watch monitor-center images via [watchImage], create a
/// geofence via [geofenceSettings], or apply Zigbee settings via [zigbeeSettings].
@freezed
abstract class Action with _$Action {
  /// Private constructor used by the code generator.
  const Action._();

  /// Constructs an immutable [Action].
  const factory Action({
    /// Unique identifier for this action.
    required String id,

    /// Human-readable name of the action.
    required String name,

    /// The kind of side effect this action performs.
    @JsonKey(unknownEnumValue: ActionType.performOperation) required ActionType kind,

    /// The link direction of this action, when [kind] is [ActionType.link].
    @JsonKey(unknownEnumValue: ActionSubtype.unused) @Default(ActionSubtype.unused) ActionSubtype subkind,

    /// The ID of the commands tag to perform, when [kind] is [ActionType.performCommand].
    String? commandId,

    /// The triggers bound to this action, or null when not requested.
    List<Trigger>? triggers,

    /// The IDs of the triggers bound to this action.
    List<String>? triggersIds,

    /// The outbound services this action broadcasts to, when [kind] is
    /// [ActionType.sendToOutbound], or null when not requested.
    List<OutboundService>? outboundServices,

    /// The IDs of the outbound services this action broadcasts to, when [kind] is
    /// [ActionType.sendToOutbound].
    List<String>? outboundServicesIds,

    /// The operations this action performs, when [kind] is
    /// [ActionType.performOperation], or null when not requested.
    List<Operation>? operations,

    /// The IDs of the operations this action performs, when [kind] is
    /// [ActionType.performOperation].
    List<String>? operationsIds,

    /// The list of access grants for this action.
    List<Access>? access,

    /// Whether arriving data needs image conversion, used only when [kind] is
    /// [ActionType.sendToMonitorCenter].
    bool? watchImage,

    /// The geofence settings, used only when [kind] is [ActionType.createGeofence].
    ActionGeofenceSettings? geofenceSettings,

    /// The Zigbee settings, used only when [kind] is [ActionType.zigbeeChange].
    ActionZigbeeSettings? zigbeeSettings,
  }) = _Action;

  /// Deserializes an [Action] from a JSON map.
  factory Action.fromJson(Map<String, dynamic> json) => _$ActionFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying action fields.
  static GqlFragment get fragment => GqlFragment(
    name: 'actionFragment',
    onType: 'Action',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'kind'),
      GqlField(name: 'subkind'),
      GqlField(name: 'commandId'),
      GqlField(name: 'watchImage'),
      GqlField(name: 'triggersIds'),
      GqlField(name: 'operationsIds'),
      GqlField(name: 'outboundServicesIds'),
      GqlField(name: 'access', fragment: Access.idFragment),
      GqlField(
        name: 'geofenceSettings',
        fields: [
          GqlField(name: 'name'),
          GqlField(name: 'category'),
          GqlField(name: 'radius'),
          GqlField(name: 'whoOwner'),
          GqlField(name: 'mappitRouteId'),
        ],
      ),
      GqlField(
        name: 'zigbeeSettings',
        fields: [
          GqlField(name: 'deviceId'),
          GqlField(
            name: 'settings',
            fields: [
              GqlField(name: 'key'),
              GqlField(name: 'value'),
            ],
          ),
        ],
      ),
    ],
  );
  // coverage:ignore-end

  /// [_getQueryNameFromVariant] returns the GraphQL query name for the given [ActionVariant].
  static String _getQueryNameFromVariant(ActionVariant variant) {
    switch (variant) {
      case ActionVariant.standard:
        return 'actions';
      case ActionVariant.mappit:
        return 'mappitActions';
    }
  }

  /// [_getAddMutationNameFromVariant] returns the GraphQL mutation name used to add an
  /// action for the given [ActionVariant].
  static String _getAddMutationNameFromVariant(ActionVariant variant) {
    switch (variant) {
      case ActionVariant.standard:
        return 'addAction';
      case ActionVariant.mappit:
        return 'addMappitAction';
    }
  }

  /// [_getEditMutationNameFromVariant] returns the GraphQL mutation name used to edit
  /// an action for the given [ActionVariant].
  static String _getEditMutationNameFromVariant(ActionVariant variant) {
    switch (variant) {
      case ActionVariant.standard:
        return 'editAction';
      case ActionVariant.mappit:
        return 'editMappitAction';
    }
  }

  /// [_getDeleteMutationNameFromVariant] returns the GraphQL mutation name used to
  /// delete actions for the given [ActionVariant].
  ///
  /// Note: both names are plural, unlike the add/edit mutations which are singular.
  static String _getDeleteMutationNameFromVariant(ActionVariant variant) {
    switch (variant) {
      case ActionVariant.standard:
        return 'deleteActions';
      case ActionVariant.mappit:
        return 'deleteMappitActions';
    }
  }

  // coverage:ignore-start
  /// [fetchAll] fetches all actions visible to the user. The returned actions carry a
  /// lightweight payload (id, name, kind) suitable for listing.
  static Future<List<Action>> fetchAll({
    /// [apiToken] is the API token to use for authentication
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use
    required Uri uri,

    /// [onResponse] is the callback to call when the response is received
    void Function(String statusCode)? onResponse,

    /// [variant] is the variant of the actions module to fetch, default is
    /// [ActionVariant.standard].
    ActionVariant variant = ActionVariant.standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final queryName = _getQueryNameFromVariant(variant);
      final response = await connector.query(
        GqlQuery(variables: [])..add(
          GqlField(name: queryName, args: {})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fields: [
                  GqlField(name: 'id'),
                  GqlField(name: 'name'),
                  GqlField(name: 'kind'),
                ],
              ),
            ),
        ),
        _actionListDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        Log.error("layrz_sdk/Action/fetchAll(): ${response.status} => ${response.errors}");
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_sdk/Action/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [fetch] fetches a single action from the server by its [id]. It returns the
  /// [Action] with the fields covered by [fragment].
  static Future<Action?> fetch({
    /// [id] is the ID of the action to fetch
    required String id,

    /// [apiToken] is the API token to use for authentication
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use
    required Uri uri,

    /// [onResponse] is the callback to call when the response is received
    void Function(String statusCode)? onResponse,

    /// [variant] is the variant of the actions module to fetch, default is
    /// [ActionVariant.standard].
    ActionVariant variant = ActionVariant.standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final queryName = _getQueryNameFromVariant(variant);
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
        )..add(
          GqlField(name: queryName, args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: fragment)),
        ),
        (json) {
          final resultList = json as List<dynamic>?;
          if (resultList == null || resultList.isEmpty) {
            Log.warning("layrz_sdk/Action/fetch(): No result in list");
            return null;
          }
          return Action.fromJson(Map<String, dynamic>.from(resultList.first as Map));
        },
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        Log.error("layrz_sdk/Action/fetch(): ${response.status} => ${response.errors}");
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Action/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// [deleteMultiple] deletes multiple actions by their [ids].
  static Future<bool> deleteMultiple({
    /// [ids] is the list of action IDs to delete
    required List<String> ids,

    /// [apiToken] is the API token to use for authentication
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use
    required Uri uri,

    /// [onResponse] is the callback to call when the response is received
    void Function(String statusCode)? onResponse,

    /// [variant] is the variant of the actions module to delete from, default is
    /// [ActionVariant.standard].
    ActionVariant variant = ActionVariant.standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final mutationName = _getDeleteMutationNameFromVariant(variant);
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'ids',
              type: .list(of: .id, isRequired: true),
              isRequired: true,
              value: ids,
            ),
          ],
          name: mutationName,
        )..add(
          GqlField(name: mutationName, args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        Log.error("layrz_sdk/Action/deleteMultiple(): ${response.status} => ${response.errors}");
        return false;
      }

      return true;
    } catch (e, stack) {
      Log.critical("layrz_sdk/Action/deleteMultiple(): General exception => $e\n$stack");
      return false;
    }
  }
  // coverage:ignore-end
}

/// Mutable input data for creating or updating an [Action].
///
/// [ActionInput] mirrors the fields of [Action] but is mutable and provides sensible
/// defaults, making it suitable for form binding before submission via [save]. When
/// [id] is null, [save] creates a new action; otherwise it updates the existing one.
@unfreezed
abstract class ActionInput with _$ActionInput {
  /// Private constructor used by the code generator.
  const ActionInput._();

  /// Constructs a mutable [ActionInput].
  factory ActionInput({
    /// Unique identifier for this action, or null when creating a new one.
    String? id,

    /// Human-readable name of the action. Defaults to an empty string.
    @Default('') String name,

    /// The kind of side effect this action performs. Defaults to
    /// [ActionType.performOperation].
    @JsonKey(unknownEnumValue: ActionType.performOperation) @Default(ActionType.performOperation) ActionType kind,

    /// The link direction of this action, when [kind] is [ActionType.link]. Defaults
    /// to [ActionSubtype.unused].
    @JsonKey(unknownEnumValue: ActionSubtype.unused) @Default(ActionSubtype.unused) ActionSubtype subkind,

    /// The ID of the commands tag to perform, when [kind] is [ActionType.performCommand].
    String? commandId,

    /// The IDs of the triggers bound to this action. Defaults to an empty list.
    @Default([]) List<String> triggersIds,

    /// The IDs of the operations this action performs, when [kind] is
    /// [ActionType.performOperation]. Defaults to an empty list.
    @Default([]) List<String> operationsIds,

    /// The IDs of the outbound services this action broadcasts to, when [kind] is
    /// [ActionType.sendToOutbound]. Defaults to an empty list.
    @Default([]) List<String> outboundServicesIds,

    /// Whether arriving data needs image conversion, used only when [kind] is
    /// [ActionType.sendToMonitorCenter]. Defaults to `false`.
    @Default(false) bool watchImage,

    /// The geofence settings, used only when [kind] is [ActionType.createGeofence].
    required ActionGeofenceSettingsInput geofenceSettings,

    /// The Zigbee settings, used only when [kind] is [ActionType.zigbeeChange].
    ActionZigbeeSettingsInput? zigbeeSettings,
  }) = _ActionInput;

  /// Deserializes an [ActionInput] from a JSON map.
  factory ActionInput.fromJson(Map<String, dynamic> json) => _$ActionInputFromJson(json);

  // coverage:ignore-start
  /// [save] creates or updates this action on the server.
  ///
  /// Sends the add mutation when [id] is null, or the edit mutation when [id] is set,
  /// both selected via [variant] and with this input serialized as the `ActionInput`
  /// GraphQL input type.
  ///
  /// Returns a [StandardResponse] tuple of `(ApiStatus, errors, Action?)`: on an
  /// internal error, `(ApiStatus.internalError, null, null)`; on any other non-ok
  /// status, `(status, errors, null)`; on success, `(status, errors, savedAction)`.
  Future<StandardResponse<Action>> save({
    /// [apiToken] is the API token to use for authentication
    required String apiToken,

    /// [uri] is the GraphQL endpoint to use
    required Uri uri,

    /// [onResponse] is the callback to call when the response is received
    void Function(String statusCode)? onResponse,

    /// [variant] is the variant of the actions module to save to, default is
    /// [ActionVariant.standard].
    ActionVariant variant = ActionVariant.standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    final opName = id == null
        ? Action._getAddMutationNameFromVariant(variant)
        : Action._getEditMutationNameFromVariant(variant);
    try {
      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: .input(of: 'ActionInput'),
              isRequired: true,
              value: toJson(),
            ),
          ],
          name: opName,
        )..add(
          GqlField(name: opName, args: {'data': 'data'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fragment: Action.fragment)),
        ),
        _actionDecoder,
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
      Log.critical("layrz_sdk/ActionInput/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}
