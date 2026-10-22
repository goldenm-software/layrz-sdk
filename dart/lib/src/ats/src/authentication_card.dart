part of '../ats.dart';

/// The physical medium of an [AtsAuthenticationCard].
///
/// If deserialization encounters an unrecognized value, it defaults to
/// [cardboard].
enum AtsSelectCard {
  /// A printed cardboard card. API reference: `CARDBOARD`.
  cardboard,

  /// An NFC card. API reference: `NFC`.
  nfc,

  /// A tag-based credential. API reference: `TAG`.
  tag;

  @override
  String toString() => toJson();

  /// Converts this [AtsSelectCard] to its wire JSON string.
  String toJson() {
    switch (this) {
      case AtsSelectCard.cardboard:
        return 'CARDBOARD';

      case AtsSelectCard.nfc:
        return 'NFC';

      case AtsSelectCard.tag:
        return 'TAG';
    }
  }

  /// Converts a JSON string to an [AtsSelectCard].
  ///
  /// Returns [cardboard] when the input does not match any known value.
  static AtsSelectCard fromJson(String json) {
    switch (json) {
      case 'NFC':
        return AtsSelectCard.nfc;

      case 'TAG':
        return AtsSelectCard.tag;

      case 'CARDBOARD':
      default:
        return AtsSelectCard.cardboard;
    }
  }
}

/// An authentication card used to authorize ATS operations.
///
/// [AtsAuthenticationCard] represents a physical/NFC/tag credential
/// ([typeId]) identified by its printed [number] and external identifier,
/// optionally bound to an [asset] and/or an [owner], with its
/// [AtsHistoryAuthenticationCard] audit trail available in [history].
@freezed
abstract class AtsAuthenticationCard with _$AtsAuthenticationCard {
  const AtsAuthenticationCard._();

  /// Constructs an immutable [AtsAuthenticationCard].
  const factory AtsAuthenticationCard({
    /// The unique identifier of the card.
    required String id,

    /// The number printed on the card.
    required int number,

    /// The external identifier of the card, in decimal format.
    required int externalIdentifier,

    /// The external identifier of the card, in hexadecimal format.
    required String externalIdentifierHex,

    /// The [Asset] linked to this card, or null when not bound.
    Asset? asset,

    /// The [User] who owns this card, or null when not assigned.
    User? owner,

    /// Whether the card is suspended, or null when not applicable.
    bool? isSuspended,

    /// The physical medium of the card.
    @AtsSelectCardConverter() required AtsSelectCard typeId,

    /// The audit trail of this card, or null when not requested.
    List<AtsHistoryAuthenticationCard>? history,

    /// The date the card was created, or null when unknown.
    @TimestampOrNullConverter() DateTime? createdAt,
  }) = _AtsAuthenticationCard;

  /// Deserializes an [AtsAuthenticationCard] from a JSON map.
  factory AtsAuthenticationCard.fromJson(Map<String, dynamic> json) => _$AtsAuthenticationCardFromJson(json);

  /// The key under which [uploadFromFile] keeps the spreadsheet rows the API rejected.
  static const uploadRowErrorsKey = 'rows';

  /// Returns the rejected spreadsheet rows that [uploadFromFile] keeps under [uploadRowErrorsKey].
  static List<int> uploadErrorRows(Map<String, dynamic>? errors) {
    final rows = errors?[uploadRowErrorsKey];
    if (rows is! List) return const [];
    return [
      for (final row in rows)
        if (row is num) row.toInt(),
    ];
  }

  /// Decodes the raw `uploadCardsFromFileV2` response [body] into a [StandardResponse].
  ///
  /// `UNPROCESSABLE_ENTITY` maps to [ApiStatus.unprocessable] and a list of `errors` (the rejected rows) is kept
  /// under [uploadRowErrorsKey]; any other non-map `errors` is dropped. An unexpected [body] is
  /// [ApiStatus.internalError].
  static StandardResponse<void> parseUploadResponse(Object? body) {
    final data = body is Map ? body['data'] : null;
    final envelope = data is Map ? data['uploadCardsFromFileV2'] : null;
    if (envelope is! Map) return (ApiStatus.internalError, null, null);

    final rawStatus = envelope['status']?.toString() ?? '';
    final status = rawStatus == 'UNPROCESSABLE_ENTITY' ? ApiStatus.unprocessable : ApiStatus.fromJson(rawStatus);
    final rawErrors = envelope['errors'];
    final errors = switch (rawErrors) {
      Map() => Map<String, dynamic>.from(rawErrors),
      List() => <String, dynamic>{uploadRowErrorsKey: rawErrors},
      _ => null,
    };
    return (status, errors, null);
  }

  // coverage:ignore-start
  /// The fields of an [AtsAuthenticationCard] selected by [fetchAll], with its [asset] and [owner].
  ///
  /// [history] is left out; [fetch] adds it.
  static List<GqlField> get fields => [
    GqlField(name: 'id'),
    GqlField(name: 'number'),
    GqlField(name: 'externalIdentifier'),
    GqlField(name: 'externalIdentifierHex'),
    GqlField(name: 'isSuspended'),
    GqlField(name: 'createdAt'),
    GqlField(name: 'typeId'),
    _atsCardAssetField(),
    _atsCardUserField('owner'),
  ];
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches every authentication card available to the authenticated user.
  ///
  /// Selects [fields]; add any other field with [extraFields]. Use [fetch] for the [history]. A card that does not
  /// decode is logged and skipped. Returns an empty list on any error.
  static Future<List<AtsAuthenticationCard>> fetchAll({
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
        GqlQuery(name: 'authenticationCards')..add(
          GqlField(name: 'authenticationCards')
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(GqlField(name: 'result', fields: [...fields, ...?extraFields])),
        ),
        _atsAuthenticationCardListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/AtsAuthenticationCard/fetchAll(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return [];
      }

      return response.result ?? [];
    } catch (err, stack) {
      Log.critical("layrz_sdk/AtsAuthenticationCard/fetchAll(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches the full record of this card: [fields] plus its [history].
  ///
  /// Returns `null` when the card is not found or on any error; a missing card reports [ApiStatus.notfound]
  /// through [onResponse].
  Future<AtsAuthenticationCard?> fetch({
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
          name: 'authenticationCards',
          variables: [
            GqlVariable(name: 'id', value: id, type: .id, isRequired: true),
          ],
        )..add(
          GqlField(name: 'authenticationCards', args: {'id': 'id'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fields: [
                  ...fields,
                  GqlField(name: 'history', fields: AtsHistoryAuthenticationCard.fields),
                ],
              ),
            ),
        ),
        _atsAuthenticationCardListDecoder,
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/AtsAuthenticationCard/fetch(): API returned status ${response.status}");
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
      Log.critical("layrz_sdk/AtsAuthenticationCard/fetch(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Assigns the cards [cardsIds] of [type] to the user [ownerId] (`assignCardsToUser`).
  ///
  /// Returns the [ApiStatus], the field errors (if any) and the [AtsAssignCardsResult] counts.
  static Future<StandardResponse<AtsAssignCardsResult>> assignToUser({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [ownerId] is the ID of the user that receives the cards.
    required String ownerId,

    /// [cardsIds] are the IDs of the cards to assign.
    required List<String> cardsIds,

    /// [type] is the physical medium of the cards; cards of another type are skipped.
    required AtsSelectCard type,
  }) {
    return _assign(
      mutationName: 'assignCardsToUser',
      inputType: 'AuthenticationCardMultipleInput',
      data: {'ownerId': ownerId, 'cardsIds': cardsIds, 'type': type.toJson()},
      apiToken: apiToken,
      uri: uri,
      onResponse: onResponse,
    );
  }

  /// Assigns every card of [type] numbered from [initialNumber] to [finalNumber] (inclusive) to the user [ownerId]
  /// (`assignCardsByRangeToUser`).
  ///
  /// Returns the [ApiStatus], the field errors (if any) and the [AtsAssignCardsResult] counts.
  static Future<StandardResponse<AtsAssignCardsResult>> assignByRangeToUser({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [ownerId] is the ID of the user that receives the cards.
    required String ownerId,

    /// [initialNumber] is the first printed number of the range.
    required int initialNumber,

    /// [finalNumber] is the last printed number of the range, inclusive.
    required int finalNumber,

    /// [type] is the physical medium of the cards.
    required AtsSelectCard type,
  }) {
    return _assign(
      mutationName: 'assignCardsByRangeToUser',
      inputType: 'AuthenticationCardRangeInput',
      data: {
        'ownerId': ownerId,
        'initialNumber': initialNumber,
        'finalNumber': finalNumber,
        'type': type.toJson(),
      },
      apiToken: apiToken,
      uri: uri,
      onResponse: onResponse,
    );
  }

  static Future<StandardResponse<AtsAssignCardsResult>> _assign({
    required String mutationName,
    required String inputType,
    required Map<String, dynamic> data,
    required String apiToken,
    required Uri uri,
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(
              name: 'data',
              value: data,
              type: .input(of: inputType),
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
                  fields: [
                    GqlField(name: 'assigned'),
                    GqlField(name: 'updated'),
                  ],
                ),
              ),
          ],
        ),
        (json) => AtsAssignCardsResult.fromJson(Map<String, dynamic>.from(json as Map? ?? const {})),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/AtsAuthenticationCard/$mutationName(): API returned status ${response.status}");
        onResponse?.call(response.status);
        return (response.status, response.errors, null);
      }

      return (response.status, null, response.result ?? const AtsAssignCardsResult());
    } catch (err, stack) {
      Log.critical("layrz_sdk/AtsAuthenticationCard/$mutationName(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Removes the owner of the cards [ids] (`unassignAuthenticationCards`).
  ///
  /// Returns the [ApiStatus] of the request.
  static Future<ApiStatus> unassignMany({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [ids] are the IDs of the cards to unassign.
    required List<String> ids,
  }) {
    return _mutateIds(
      mutationName: 'unassignAuthenticationCards',
      ids: ids,
      apiToken: apiToken,
      uri: uri,
      onResponse: onResponse,
    );
  }

  /// Reactivates the suspended cards [ids] (`unsuspendAuthenticationCards`).
  ///
  /// Returns the [ApiStatus] of the request.
  static Future<ApiStatus> unsuspendMany({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [ids] are the IDs of the cards to unsuspend.
    required List<String> ids,
  }) {
    return _mutateIds(
      mutationName: 'unsuspendAuthenticationCards',
      ids: ids,
      apiToken: apiToken,
      uri: uri,
      onResponse: onResponse,
    );
  }

  static Future<ApiStatus> _mutateIds({
    required String mutationName,
    required List<String> ids,
    required String apiToken,
    required Uri uri,
    ValueChanged<ApiStatus>? onResponse,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.mutate(
        GqlMutation(
          name: mutationName,
          variables: [
            GqlVariable(
              name: 'ids',
              value: ids,
              type: .list(of: .id),
              isRequired: true,
            ),
          ],
        )..add(
          GqlField(name: mutationName, args: {'ids': 'ids'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      if (response.status != .ok) {
        Log.warning("layrz_sdk/AtsAuthenticationCard/$mutationName(): API returned status ${response.status}");
        onResponse?.call(response.status);
      }

      return response.status;
    } catch (err, stack) {
      Log.critical("layrz_sdk/AtsAuthenticationCard/$mutationName(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return .internalError;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Uploads a cards spreadsheet, [dataUri] being its base64 `data:` URI (`uploadCardsFromFileV2`).
  ///
  /// The API does not return the new cards, so refetch with [fetchAll]. When the file has invalid rows the API
  /// answers [ApiStatus.unprocessable]; read their numbers from the errors with [uploadErrorRows]. See
  /// [parseUploadResponse].
  static Future<StandardResponse<void>> uploadFromFile({
    /// [apiToken] is the API token for authentication.
    required String apiToken,

    /// [uri] is the Layrz ATS GraphQL API endpoint.
    required Uri uri,

    /// [onResponse] is invoked with the [ApiStatus] when the request does not succeed.
    ValueChanged<ApiStatus>? onResponse,

    /// [dataUri] is the spreadsheet as a base64 `data:` URI.
    required String dataUri,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      // Decoded by hand: the API answers a status outside ApiStatus and a list of errors.
      final response = await connector.perform(
        GqlMutation(
          name: 'uploadCardsFromFileV2',
          variables: [
            GqlVariable(name: 'authenticationCardsFile', value: dataUri, type: .string, isRequired: true),
          ],
        )..add(
          GqlField(name: 'uploadCardsFromFileV2', args: {'authenticationCardsFile': 'authenticationCardsFile'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors')),
        ),
      );

      final result = parseUploadResponse(response.data);
      if (result.$1 != .ok) {
        Log.warning("layrz_sdk/AtsAuthenticationCard/uploadFromFile(): API returned status ${result.$1}");
        onResponse?.call(result.$1);
      }
      return result;
    } catch (err, stack) {
      Log.critical("layrz_sdk/AtsAuthenticationCard/uploadFromFile(): General exception => $err\n$stack");
      onResponse?.call(.internalError);
      return (ApiStatus.internalError, null, null);
    }
  }
  // coverage:ignore-end
}

// coverage:ignore-start
List<GqlField> _atsCardAvatarFields() => [
  GqlField(name: 'type'),
  GqlField(name: 'url'),
  GqlField(name: 'icon'),
  GqlField(name: 'emoji'),
];

GqlField _atsCardAssetField() => GqlField(
  name: 'asset',
  fields: [
    GqlField(name: 'id'),
    GqlField(name: 'name'),
    GqlField(name: 'plate'),
    GqlField(name: 'dynamicIcon', fields: _atsCardAvatarFields()),
  ],
);

GqlField _atsCardUserField(String name) => GqlField(
  name: name,
  fields: [
    GqlField(name: 'id'),
    GqlField(name: 'name'),
    GqlField(name: 'dynamicAvatar', fields: _atsCardAvatarFields()),
  ],
);

/// Decodes each card on its own, logging and skipping the ones that do not match the model.
List<AtsAuthenticationCard> _atsAuthenticationCardListDecoder(Object? json) {
  if (json is! List) return [];
  final cards = <AtsAuthenticationCard>[];
  for (final entry in json) {
    if (entry is! Map) continue;
    try {
      cards.add(AtsAuthenticationCard.fromJson(Map<String, dynamic>.from(entry)));
    } catch (err) {
      Log.warning("layrz_sdk/AtsAuthenticationCard: skipped card ${entry['id']} => $err");
    }
  }
  return cards;
}
// coverage:ignore-end

/// A [JsonConverter] that converts between [AtsSelectCard] and [String].
class AtsSelectCardConverter implements JsonConverter<AtsSelectCard, String> {
  /// Creates an [AtsSelectCardConverter].
  const AtsSelectCardConverter();

  @override
  AtsSelectCard fromJson(String json) => AtsSelectCard.fromJson(json);

  @override
  String toJson(AtsSelectCard object) => object.toJson();
}

/// A [JsonConverter] that converts between nullable [AtsSelectCard] and
/// nullable [String].
class AtsSelectCardOrNullConverter implements JsonConverter<AtsSelectCard?, String?> {
  /// Creates an [AtsSelectCardOrNullConverter].
  const AtsSelectCardOrNullConverter();

  @override
  AtsSelectCard? fromJson(String? json) {
    if (json == null) {
      return null;
    }
    return AtsSelectCard.fromJson(json);
  }

  @override
  String? toJson(AtsSelectCard? object) => object?.toJson();
}
