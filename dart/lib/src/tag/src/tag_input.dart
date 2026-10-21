part of '../tag.dart';

/// Mutable input used to create or update a [Tag].
///
/// The API clears every association list that is sent, so every list readable from a [Tag] defaults
/// to empty and is always sent. [exchangeServicesIds] and [tagonBusRoutesIds] cannot be read back from
/// a [Tag], so they are only sent when set; leaving them `null` keeps the stored associations.
@unfreezed
abstract class TagInput with _$TagInput {
  const TagInput._();

  /// Constructs a mutable [TagInput].
  factory TagInput({
    /// The ID of the tag, `null` when creating a new one.
    String? id,

    /// The name of the tag.
    @Default('') String name,

    /// The color of the tag.
    @ColorConverter() @Default(Color(0xFF001E60)) Color color,

    /// The dynamic icon of the tag.
    AvatarInput? dynamicIcon,

    /// The IDs of the associated users.
    @Default([]) List<String> usersIds,

    /// The IDs of the associated outbound services.
    @Default([]) List<String> outboundServicesIds,

    /// The IDs of the associated triggers.
    @Default([]) List<String> triggersIds,

    /// The IDs of the associated actions.
    @Default([]) List<String> actionsIds,

    /// The IDs of the associated operations.
    @Default([]) List<String> operationsIds,

    /// The IDs of the associated assets.
    @Default([]) List<String> assetsIds,

    /// The IDs of the associated devices.
    @Default([]) List<String> devicesIds,

    /// The IDs of the associated geofences.
    @Default([]) List<String> geofencesIds,

    /// The IDs of the associated external accounts.
    @Default([]) List<String> externalAccountsIds,

    /// The IDs of the associated presets.
    @Default([]) List<String> presetsIds,

    /// The IDs of the associated references.
    @Default([]) List<String> referencesIds,

    /// The IDs of the associated checkpoints.
    @Default([]) List<String> checkpointsIds,

    /// The IDs of the associated care protocols.
    @Default([]) List<String> careProtocolsIds,

    /// The IDs of the associated inbound services.
    @Default([]) List<String> inboundServicesIds,

    /// The IDs of the associated functions.
    @Default([]) List<String> functionsIds,

    /// The IDs of the associated concierge forms.
    @Default([]) List<String> conciergeFormsIds,

    /// The IDs of the associated report templates.
    @Default([]) List<String> reportTemplatesIds,

    /// The IDs of the associated charts.
    @Default([]) List<String> chartsIds,

    /// The IDs of the associated workspaces.
    @Default([]) List<String> workspacesIds,

    /// The IDs of the associated vision profiles.
    @Default([]) List<String> visionProfilesIds,

    /// The IDs of the associated Mappit routes.
    @Default([]) List<String> mappitRoutesIds,

    /// The IDs of the associated sensors.
    @Default([]) List<String> sensorsIds,

    /// The IDs of the associated email templates.
    @Default([]) List<String> emailTemplatesIds,

    /// The IDs of the associated authentication cards.
    @Default([]) List<String> authenticationCardsIds,

    /// The IDs of the associated exchange services, only sent when set.
    @JsonKey(includeIfNull: false) List<String>? exchangeServicesIds,

    /// The IDs of the associated Tagon bus routes, only sent when set.
    @JsonKey(includeIfNull: false) List<String>? tagonBusRoutesIds,
  }) = _TagInput;

  /// Deserializes a [TagInput] from a JSON map.
  factory TagInput.fromJson(Map<String, dynamic> json) =>
      _$TagInputFromJson(json);

  /// Builds a [TagInput] that edits [tag], keeping every association readable from it.
  ///
  /// Pass the full record from [Tag.fetch]: a [Tag] from [Tag.fetchAll] lacks
  /// [Tag.emailTemplatesIds] and [Tag.authenticationCardsIds], so saving would clear them.
  factory TagInput.fromTag(Tag tag) {
    final icon = tag.dynamicIcon;
    return TagInput(
      id: tag.id,
      name: tag.name,
      color: tag.color,
      dynamicIcon: icon == null ? null : AvatarInput.fromJson(icon.toJson()),
      usersIds: [...?tag.usersIds],
      outboundServicesIds: [...?tag.outboundServicesIds],
      triggersIds: [...?tag.triggersIds],
      actionsIds: [...?tag.actionsIds],
      operationsIds: [...?tag.operationsIds],
      assetsIds: [...?tag.assetsIds],
      devicesIds: [...?tag.devicesIds],
      geofencesIds: [...?tag.geofencesIds],
      externalAccountsIds: [...?tag.externalAccountsIds],
      presetsIds: [...?tag.presetsIds],
      referencesIds: [...?tag.referencesIds],
      checkpointsIds: [...?tag.checkpointsIds],
      careProtocolsIds: [...?tag.careProtocolsIds],
      inboundServicesIds: [...?tag.inboundServicesIds],
      functionsIds: [...?tag.functionsIds],
      conciergeFormsIds: [...?tag.conciergeFormsIds],
      reportTemplatesIds: [...?tag.reportTemplatesIds],
      chartsIds: [...?tag.chartsIds],
      workspacesIds: [...?tag.workspacesIds],
      visionProfilesIds: [...?tag.visionProfilesIds],
      mappitRoutesIds: [...?tag.mappitRoutesIds],
      sensorsIds: [...?tag.sensorsIds],
      emailTemplatesIds: [...?tag.emailTemplatesIds],
      authenticationCardsIds: [...?tag.authenticationCardsIds],
    );
  }

  // coverage:ignore-start
  /// Creates the tag when [id] is `null`, otherwise updates it.
  ///
  /// Returns the [ApiStatus], the field errors (if any) and the saved [Tag].
  Future<StandardResponse<Tag>> save({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [variant] selects the standard or Mappit mutation.
    TagVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(apiToken: apiToken, uri: uri);
    final mutationName = _getSaveMutationNameFromVariant(
      variant,
      isAdd: id == null,
    );
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(
              name: 'data',
              value: toJson(),
              type: .input(of: 'TagInput'),
              isRequired: true,
            ),
          ],
          fields: [
            GqlField(name: mutationName, args: {'data': 'data'})
              ..add(GqlField(name: 'status'))
              ..add(GqlField(name: 'errors'))
              ..add(
                GqlField(
                  name: 'result',
                  fragment: Tag.fragment,
                  fields: Tag._idsFields,
                ),
              ),
          ],
        ),
        _tagDecoder,
      );

      if (response.status != .ok) {
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, null, response.result);
    } catch (err, stack) {
      Log.critical(
        "layrz_sdk/TagInput/save(): General exception => $err\n$stack",
      );
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  static String _getSaveMutationNameFromVariant(
    TagVariant variant, {
    bool isAdd = false,
  }) {
    switch (variant) {
      case .mappit:
        return isAdd ? 'addMappitTag' : 'editMappitTag';
      case .standard:
        return isAdd ? 'addTag' : 'editTag';
    }
  }

  // coverage:ignore-end
}
