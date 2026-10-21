part of '../tag.dart';

/// Immutable named, colored label for grouping and cross-referencing
/// entities across the Layrz platform.
///
/// A [Tag] can be simultaneously associated with many kinds of platform
/// entities (users, assets, devices, references, and so on); each
/// association is exposed both as a resolved list (e.g. [users]) and as a
/// list of bare IDs (e.g. [usersIds]).
@freezed
abstract class Tag with _$Tag {
  const Tag._();

  /// Constructs an immutable [Tag].
  const factory Tag({
    /// The ID of the tag.
    required String id,

    /// The name of the tag.
    required String name,

    /// The color of the tag.
    @ColorConverter() required Color color,

    /// The dynamic icon of the tag.
    Avatar? dynamicIcon,

    /// The list of associated users for this tag.
    List<User>? users,

    /// The list of IDs of associated users for this tag.
    List<String>? usersIds,

    /// The list of associated outbound services for this tag.
    List<OutboundService>? outboundServices,

    /// The list of IDs of associated outbound services for this tag.
    List<String>? outboundServicesIds,

    /// The list of associated triggers for this tag.
    List<Trigger>? triggers,

    /// The list of IDs of associated triggers for this tag.
    List<String>? triggersIds,

    /// The list of associated actions for this tag.
    List<Action>? actions,

    /// The list of IDs of associated actions for this tag.
    List<String>? actionsIds,

    /// The list of associated operations for this tag.
    List<Operation>? operations,

    /// The list of IDs of associated operations for this tag.
    List<String>? operationsIds,

    /// The list of associated assets for this tag.
    List<Asset>? assets,

    /// The list of IDs of associated assets for this tag.
    List<String>? assetsIds,

    /// The list of associated devices for this tag.
    List<Device>? devices,

    /// The list of IDs of associated devices for this tag.
    List<String>? devicesIds,

    /// The list of associated geofences for this tag.
    List<Geofence>? geofences,

    /// The list of IDs of associated geofences for this tag.
    List<String>? geofencesIds,

    /// The list of associated external accounts for this tag.
    List<ExternalAccount>? externalAccounts,

    /// The list of IDs of associated external accounts for this tag.
    List<String>? externalAccountsIds,

    /// The list of associated presets for this tag.
    List<Preset>? presets,

    /// The list of IDs of associated presets for this tag.
    List<String>? presetsIds,

    /// The list of associated references for this tag.
    List<Reference>? references,

    /// The list of IDs of associated references for this tag.
    List<String>? referencesIds,

    /// The list of associated checkpoints for this tag.
    List<Checkpoint>? checkpoints,

    /// The list of IDs of associated checkpoints for this tag.
    List<String>? checkpointsIds,

    /// The list of associated care protocols for this tag.
    List<CareProtocol>? careProtocols,

    /// The list of IDs of associated care protocols for this tag.
    List<String>? careProtocolsIds,

    /// The list of associated inbound services for this tag.
    List<InboundService>? inboundServices,

    /// The list of IDs of associated inbound services for this tag.
    List<String>? inboundServicesIds,

    /// The list of associated functions for this tag.
    List<LayrzFunction>? functions,

    /// The list of IDs of associated functions for this tag.
    List<String>? functionsIds,

    /// The list of associated concierge forms for this tag.
    List<ConciergeForm>? conciergeForms,

    /// The list of IDs of associated concierge forms for this tag.
    List<String>? conciergeFormsIds,

    /// The list of associated report templates for this tag.
    List<ReportTemplate>? reportTemplates,

    /// The list of IDs of associated report templates for this tag.
    List<String>? reportTemplatesIds,

    /// The list of associated charts for this tag.
    List<LayrzChart>? charts,

    /// The list of IDs of associated charts for this tag.
    List<String>? chartsIds,

    /// The list of associated workspaces for this tag.
    List<Workspace>? workspaces,

    /// The list of IDs of associated workspaces for this tag.
    List<String>? workspacesIds,

    /// The list of associated vision profiles for this tag.
    List<VisionProfile>? visionProfiles,

    /// The list of IDs of associated vision profiles for this tag.
    List<String>? visionProfilesIds,

    /// The list of associated Mappit routes for this tag.
    List<MappitRoute>? mappitRoutes,

    /// The list of IDs of associated Mappit routes for this tag.
    List<String>? mappitRoutesIds,

    /// The list of associated exchange services for this tag.
    List<ExchangeService>? exchangeServices,

    /// The list of IDs of associated exchange services for this tag.
    List<String>? exchangeServicesIds,

    /// The list of granted access entries for this tag.
    List<Access>? access,

    /// The owner of this tag.
    User? owner,

    /// The ID of the owner of this tag.
    String? ownerId,

    /// The list of IDs of associated sensors for this tag.
    List<String>? sensorsIds,

    /// The list of associated sensors for this tag.
    List<Sensor>? sensors,

    /// The list of IDs of associated email templates for this tag.
    List<String>? emailTemplatesIds,

    /// The list of IDs of associated authentication cards for this tag.
    List<String>? authenticationCardsIds,
  }) = _Tag;

  /// Deserializes a [Tag] from a JSON map.
  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment definition for querying tag fields.
  ///
  /// Only the lightweight fields needed to display a [Tag] (e.g. in a
  /// dropdown) are selected. The heavier associated-entity lists (assets,
  /// devices, users, functions, and their `*Ids` counterparts) are
  /// intentionally omitted; fetch a single [Tag] separately when that detail
  /// is required.
  static GqlFragment get fragment => GqlFragment(
    name: 'tagFragment',
    onType: 'Tag',
    fields: [
      GqlField(name: 'id'),
      GqlField(name: 'name'),
      GqlField(name: 'color'),
      GqlField(name: 'dynamicIcon', fragment: Avatar.fragment),
      GqlField(name: 'access', fragment: Access.idFragment),
    ],
  );
  // coverage:ignore-end

  // coverage:ignore-start
  /// The `*Ids` association fields selected next to [fragment] when listing or saving.
  static List<GqlField> get _idsFields => [
    for (final name in [
      'actionsIds',
      'assetsIds',
      'careProtocolsIds',
      'chartsIds',
      'checkpointsIds',
      'conciergeFormsIds',
      'devicesIds',
      'externalAccountsIds',
      'functionsIds',
      'geofencesIds',
      'inboundServicesIds',
      'mappitRoutesIds',
      'operationsIds',
      'outboundServicesIds',
      'presetsIds',
      'referencesIds',
      'reportTemplatesIds',
      'sensorsIds',
      'triggersIds',
      'usersIds',
      'visionProfilesIds',
      'workspacesIds',
    ])
      GqlField(name: name),
  ];

  /// The resolved association lists of a [Tag], with the minimum fields each nested model needs to
  /// decode.
  static List<GqlField> get _associationFields {
    GqlField association(String name, [List<String> extra = const []]) {
      return GqlField(
        name: name,
        fields: [
          for (final field in ['id', 'name', ...extra]) GqlField(name: field),
        ],
      );
    }

    return [
      association('users'),
      association('outboundServices'),
      association('triggers', ['code', 'kind']),
      association('actions', ['kind']),
      association('operations', ['operationType']),
      association('assets'),
      association('devices', ['ident']),
      association('geofences', ['color', 'mode']),
      association('externalAccounts'),
      association('presets'),
      association('references'),
      association('checkpoints'),
      association('careProtocols'),
      association('inboundServices'),
      association('functions'),
      association('conciergeForms'),
      association('reportTemplates'),
      association('charts'),
      association('workspaces'),
      association('visionProfiles'),
      association('mappitRoutes'),
      association('sensors', ['slug']),
    ];
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all tags available to the authenticated user.
  ///
  /// Selects the lightweight [fragment] plus the `*Ids` association lists; add any other field with
  /// [extraFields]. Use [fetch] for the full record. Returns an empty list on any error. Errors are
  /// logged internally.
  static Future<List<Tag>> fetchAll({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [variant] selects the standard or Mappit query.
    TagVariant variant = .standard,

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
                fields: [..._idsFields, ...?extraFields],
              ),
            ),
        ),
        _tagListDecoder,
      );

      if (response.status != .ok) {
        Log.warning(
          "layrz_sdk/Tag/fetchAll(): API returned status ${response.status}",
        );
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical(
        "layrz_sdk/Tag/fetchAll(): General exception => $err\n$stack",
      );
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the full record of this tag: the `*Ids` lists (including [emailTemplatesIds] and
  /// [authenticationCardsIds]) and the resolved association objects (e.g. [users], [assets]) with
  /// their `id` and `name`.
  ///
  /// Returns `null` when the tag is not found or on any error; a missing tag reports
  /// [ApiStatus.notfound] through [onResponse].
  Future<Tag?> fetch({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [variant] selects the standard or Mappit query.
    TagVariant variant = .standard,
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
                  ..._idsFields,
                  GqlField(name: 'emailTemplatesIds'),
                  GqlField(name: 'authenticationCardsIds'),
                  ..._associationFields,
                ],
              ),
            ),
        ),
        _tagListDecoder,
      );

      if (response.status != .ok) {
        Log.warning(
          "layrz_sdk/Tag/fetch(): API returned status ${response.status}",
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
      Log.critical("layrz_sdk/Tag/fetch(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes the tags with the given [ids].
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
    TagVariant variant = .standard,

    /// [ids] are the IDs of the tags to delete.
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
          GqlField(name: mutationName, args: {'ids': 'ids'})
            ..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        Log.warning(
          "layrz_sdk/Tag/deleteMany(): API returned status ${response.status}",
        );
        onResponse?.call(response.status);
        return false;
      }

      return true;
    } catch (err, stack) {
      Log.critical(
        "layrz_sdk/Tag/deleteMany(): General exception => $err\n$stack",
      );
      onResponse?.call(.internalError);
      return false;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  static String _getQueryNameFromVariant(TagVariant variant) {
    switch (variant) {
      case .mappit:
        return 'mappitTags';
      case .standard:
        return 'tags';
    }
  }

  static String _getDeleteMutationNameFromVariant(TagVariant variant) {
    switch (variant) {
      case .mappit:
        return 'deleteMappitTags';
      case .standard:
        return 'deleteTags';
    }
  }

  // coverage:ignore-end
}

/// [_tagListDecoder] decodes a raw listing `result` payload into a list of [Tag].
List<Tag> _tagListDecoder(Object? json) {
  return List<Tag>.from(
    (json as List? ?? []).map(
      (e) => Tag.fromJson(Map<String, dynamic>.from(e as Map)),
    ),
  );
}

/// [_tagDecoder] decodes a single raw `result` payload into a [Tag].
Tag _tagDecoder(Object? json) =>
    Tag.fromJson(Map<String, dynamic>.from(json as Map));
