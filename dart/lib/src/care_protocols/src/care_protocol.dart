part of '../care_protocols.dart';

/// A checklist or set of form pages that must be completed before a case can
/// be submitted.
///
/// A [CareProtocol] operates in one of two [CareProtocolMode]s: [tasks] is
/// used when [mode] is [CareProtocolMode.simple], while [pages] is used when
/// [mode] is [CareProtocolMode.concierge]. Use [CareProtocolInput] to create
/// or update a care protocol.
@freezed
abstract class CareProtocol with _$CareProtocol {
  const CareProtocol._();

  /// Creates a new [CareProtocol].
  const factory CareProtocol({
    /// [id] is the unique identifier of the care protocol.
    required String id,

    /// [name] is the name of the care protocol.
    required String name,

    /// [mode] indicates the design mode of the care protocol.
    @JsonKey(unknownEnumValue: CareProtocolMode.simple) CareProtocolMode? mode,

    /// [tasks] is the list of tasks to complete or fill before the case
    /// submission. Only valid when [mode] is [CareProtocolMode.simple].
    @Default([]) List<CareTask> tasks,

    /// [pages] is the list of pages to complete or fill before the case
    /// submission. Only valid when [mode] is [CareProtocolMode.concierge].
    @Default([]) List<ConciergeFormPage> pages,

    /// [associatedTriggers] is a list of triggers associated to this care
    /// protocol.
    List<Trigger>? associatedTriggers,

    /// [numOfTasks] represents the number of tasks created from this care
    /// protocol.
    ///
    /// Only present when [mode] is [CareProtocolMode.simple].
    int? numOfTasks,

    /// [numOfPages] represents the number of pages created from this care
    /// protocol.
    ///
    /// Only present when [mode] is [CareProtocolMode.concierge].
    int? numOfPages,

    /// [numOfBlocks] represents the number of blocks created from this care
    /// protocol.
    ///
    /// Only present when [mode] is [CareProtocolMode.concierge].
    int? numOfBlocks,

    /// [access] is the list of granted access to this care protocol.
    List<Access>? access,
  }) = _CareProtocol;

  /// Converts a JSON object to a [CareProtocol].
  factory CareProtocol.fromJson(Map<String, dynamic> json) => _$CareProtocolFromJson(json);
}

/// The input variant of [CareProtocol], used to create or update a care
/// protocol.
@unfreezed
abstract class CareProtocolInput with _$CareProtocolInput {
  /// Creates a new [CareProtocolInput].
  factory CareProtocolInput({
    /// [id] is the unique identifier of the care protocol. Omit to create a
    /// new care protocol.
    String? id,

    /// [name] is the name of the care protocol.
    @Default("") String name,

    /// [mode] indicates the design mode of the care protocol.
    @JsonKey(unknownEnumValue: CareProtocolMode.simple) @Default(CareProtocolMode.simple) CareProtocolMode mode,

    /// [tasks] is the list of tasks to complete or fill before the case
    /// submission. Only valid when [mode] is [CareProtocolMode.simple].
    @Default([]) List<CareTaskInput> tasks,

    /// [pages] is the list of pages to complete or fill before the case
    /// submission. Only valid when [mode] is [CareProtocolMode.concierge].
    @Default([]) List<ConciergeFormPageInput> pages,
  }) = _CareProtocolInput;

  /// Converts a JSON object to a [CareProtocolInput].
  factory CareProtocolInput.fromJson(Map<String, dynamic> json) => _$CareProtocolInputFromJson(json);
}
