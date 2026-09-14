part of '../references.dart';

/// Decodes a raw listing `result` payload into a list of [Reference].
List<Reference> _referenceListDecoder(Object? json) {
  return List<Reference>.from(
    (json as List).map((e) {
      return Reference.fromJson(e as Map<String, dynamic>);
    }),
  );
}

/// Decodes a single-object `result` payload into a [Reference].
Reference _referenceDecoder(Object? json) {
  return Reference.fromJson(json as Map<String, dynamic>);
}

// coverage:ignore-start
/// Returns the GraphQL query name based on the reference [variant].
String _getGqlQueryName({required ReferenceVariant variant}) {
  switch (variant) {
    case .standard:
      return 'references';
    case .mappit:
      return 'mappitReferences';
    case .sdm:
      return 'sdmReferences';
  }
}

/// Returns the GraphQL mutation name for saving a reference based on the
/// [variant] and whether it's a new reference ([isNew]).
String _getSaveMutationName({required ReferenceVariant variant, required bool isNew}) {
  switch (variant) {
    case .standard:
      return isNew ? 'addReference' : 'editReference';
    case .mappit:
      return isNew ? 'addMappitReference' : 'editMappitReference';
    case .sdm:
      return isNew ? 'addSdmReference' : 'editSdmReference';
  }
}

/// Returns the GraphQL mutation name for deleting references based on the
/// [variant].
String _getDeleteMutationName({required ReferenceVariant variant}) {
  switch (variant) {
    case .standard:
      return 'deleteReferences';
    case .mappit:
      return 'deleteMappitReferences';
    case .sdm:
      return 'deleteSdmReferences';
  }
}

/// Returns the GraphQL input type name for reference input based on the
/// [variant].
String _getInputTypeName({required ReferenceVariant variant}) {
  switch (variant) {
    case .standard:
      return 'ReferenceInput';
    case .mappit:
      return 'MappitReferenceInput';
    case .sdm:
      return 'SdmReferenceInput';
  }
}

/// Returns the GraphQL entity name based on the reference [variant].
String _getGqlEntityName({required ReferenceVariant variant}) {
  switch (variant) {
    case .standard:
      return 'Reference';
    case .mappit:
      return 'MappitReference';
    case .sdm:
      return 'SdmReference';
  }
}
// coverage:ignore-end

/// Immutable reference used to identify drivers, clients, and other entities
/// universally across Layrz apps.
///
/// [Reference] is a named, [category]-scoped identifier that can carry
/// [customFields], an optional [qrCode] URI, and a list of granted [access]
/// entries.
@freezed
abstract class Reference with _$Reference {
  /// Constructs an immutable [Reference].
  const factory Reference({
    /// Unique identifier for this reference.
    required String id,

    /// Human-readable name of the reference.
    required String name,

    /// The purpose category this reference is classified under.
    @JsonKey(unknownEnumValue: ReferenceCategory.unknown)
    @Default(ReferenceCategory.unknown)
    ReferenceCategory category,

    /// The list of custom fields attached to this reference.
    List<CustomField>? customFields,

    /// The QR code URI for this reference.
    String? qrCode,

    /// The list of granted access entries for this reference.
    List<Access>? access,
  }) = _Reference;

  /// Deserializes a [Reference] from a JSON map.
  factory Reference.fromJson(Map<String, dynamic> json) => _$ReferenceFromJson(json);

  // coverage:ignore-start
  /// GraphQL fragment for a [Reference], with full parity across variants.
  static GqlFragment fragment({ReferenceVariant variant = .standard}) {
    final gql = GqlFragment(
      name: 'referenceFragment',
      onType: _getGqlEntityName(variant: variant),
    );

    gql.add(GqlField(name: 'id'));
    gql.add(GqlField(name: 'name'));
    gql.add(GqlField(name: 'category'));
    gql.add(GqlField(name: 'customFields', fragment: CustomField.fragment));
    gql.add(GqlField(name: 'qrCode'));
    gql.add(GqlField(name: 'access', fragment: Access.idFragment));

    return gql;
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches all references from the API with a lightweight payload.
  ///
  /// Returns an empty list on any error. Errors are logged internally.
  static Future<List<Reference>> fetchAll({
    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,

    /// The reference ecosystem variant to query.
    ReferenceVariant variant = .standard,
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
                  GqlField(name: 'category'),
                ],
              ),
            ),
        ),
        _referenceListDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status.toJson());
        Log.error("layrz_models/Reference/fetchAll(): No response from server");
        return [];
      }

      final result = response.result;
      if (result == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/Reference/fetchAll(): No result from server");
        return [];
      }

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return [];
      }

      return response.result ?? [];
    } catch (e, stack) {
      Log.critical("layrz_models/Reference/fetchAll(): General exception => $e\n$stack");
      return [];
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Fetches a single reference by [id].
  ///
  /// The backend always returns `result` as a list, even when filtered down
  /// to a single entity, so the first element (if any) is returned.
  ///
  /// Returns a [Reference] on success or null on any error. Errors are
  /// logged internally.
  static Future<Reference?> fetch({
    /// The ID of the [Reference] to fetch.
    required String id,

    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,

    /// The reference ecosystem variant to query.
    ReferenceVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final response = await connector.query(
        GqlQuery(
          variables: [
            GqlVariable(name: 'id', type: .id, isRequired: true, value: id),
          ],
          name: _getGqlQueryName(variant: variant),
        )..add(
          GqlField(
              name: _getGqlQueryName(variant: variant),
              args: {'id': 'id'},
            )
            ..add(GqlField(name: 'status'))
            ..add(
              GqlField(
                name: 'result',
                fragment: fragment(variant: variant),
              ),
            ),
        ),
        _referenceListDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status.toJson());
        Log.error("layrz_models/Reference/fetch(): No response from server");
        return null;
      }

      final result = response.result;
      if (result == null) {
        onResponse?.call(ApiStatus.internalError.toJson());
        Log.error("layrz_models/Reference/fetch(): No result from server");
        return null;
      }

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return null;
      }

      return result.isNotEmpty ? result.first : null;
    } catch (e, stack) {
      Log.critical("layrz_models/Reference/fetch(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Clones a reference by [referenceId].
  ///
  /// Returns the cloned [Reference] on success or null on any error. Errors
  /// are logged internally.
  static Future<Reference?> clone({
    /// The ID of the reference to clone.
    required String referenceId,

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
            GqlVariable(name: 'referenceId', type: .id, isRequired: true, value: referenceId),
          ],
          name: 'cloneReference',
        )..add(
          GqlField(name: 'cloneReference', args: {'referenceId': 'referenceId'})
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fragment: fragment(),
              ),
            ),
        ),
        _referenceDecoder,
      );

      if (response.status == .internalError) {
        onResponse?.call(response.status.toJson());
        Log.error("layrz_models/Reference/clone(): No response from server");
        return null;
      }

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return null;
      }

      return response.result;
    } catch (e, stack) {
      Log.critical("layrz_models/Reference/clone(): General exception => $e\n$stack");
      return null;
    }
  }
  // coverage:ignore-end

  // coverage:ignore-start
  /// Deletes multiple references by their [ids].
  ///
  /// Returns `true` on success, `false` on any error. Errors are logged
  /// internally.
  static Future<bool> deleteMultiple({
    /// The IDs of the references to delete.
    required List<String> ids,

    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,

    /// The reference ecosystem variant to delete from.
    ReferenceVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
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
          name: _getDeleteMutationName(variant: variant),
        )..add(
          GqlField(
            name: _getDeleteMutationName(variant: variant),
            args: {'ids': 'ids'},
          )..add(GqlField(name: 'status')),
        ),
      );

      if (response.status != .ok) {
        onResponse?.call(response.status.toJson());
        return false;
      }
      return true;
    } catch (e, stack) {
      Log.critical("layrz_models/Reference/deleteMultiple(): General exception => $e\n$stack");
      return false;
    }
  }

  // coverage:ignore-end
}

/// Mutable input data for creating or updating a [Reference].
///
/// [ReferenceInput] mirrors the fields of [Reference] but is mutable and
/// provides sensible defaults, making it suitable for form binding before
/// submission via [save]. When [id] is null, [save] creates a new reference;
/// otherwise it updates the existing one.
@unfreezed
abstract class ReferenceInput with _$ReferenceInput {
  /// Private constructor used by the code generator.
  const ReferenceInput._();

  /// Constructs a mutable [ReferenceInput].
  factory ReferenceInput({
    /// Unique identifier for this reference, or null when creating a new
    /// one.
    String? id,

    /// Human-readable name of the reference. Defaults to an empty string.
    @Default('') String name,

    /// The purpose category this reference is classified under.
    @JsonKey(unknownEnumValue: ReferenceCategory.unknown)
    @Default(ReferenceCategory.universal)
    ReferenceCategory category,

    /// The list of custom fields attached to this reference.
    @Default([]) List<CustomFieldInput> customFields,
  }) = _ReferenceInput;

  /// Deserializes a [ReferenceInput] from a JSON map.
  factory ReferenceInput.fromJson(Map<String, dynamic> json) => _$ReferenceInputFromJson(json);

  // coverage:ignore-start
  /// Saves a reference (add or edit) and returns a record with status,
  /// errors, and the saved reference.
  ///
  /// Returns `(ApiStatus, Map<String, dynamic>?, Reference?)` — on
  /// internalError: `(internalError, null, null)`; on other error:
  /// `(status, errors, null)`; on success: `(status, errors, reference)`.
  Future<StandardResponse<Reference>> save({
    /// The API token to use for authentication. Obtain via the `login`
    /// mutation on the GraphQL API.
    required String apiToken,

    /// The GraphQL endpoint to use.
    required Uri uri,

    /// Callback invoked with the response status code.
    void Function(String statusCode)? onResponse,

    /// The reference ecosystem variant to save to.
    ReferenceVariant variant = .standard,
  }) async {
    final connector = LayrzConnector(uri: uri, apiToken: apiToken);
    try {
      final isNew = id == null;
      final operation = _getSaveMutationName(variant: variant, isNew: isNew);

      final payload = toJson();

      final response = await connector.mutate(
        GqlMutation(
          variables: [
            GqlVariable(
              name: 'data',
              type: GqlVariableType.input(of: _getInputTypeName(variant: variant)),
              isRequired: true,
              value: payload,
            ),
          ],
          name: operation,
        )..add(
          GqlField(
              name: operation,
              args: {'data': 'data'},
            )
            ..add(GqlField(name: 'status'))
            ..add(GqlField(name: 'errors'))
            ..add(
              GqlField(
                name: 'result',
                fragment: Reference.fragment(variant: variant),
              ),
            ),
        ),
        _referenceDecoder,
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
      Log.critical("layrz_models/Reference/save(): General exception => $e\n$stack");
      return (ApiStatus.internalError, null, null);
    }
  }

  // coverage:ignore-end
}
