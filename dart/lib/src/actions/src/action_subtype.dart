part of '../actions.dart';

/// The link direction of an [Action] whose [ActionType] is [ActionType.link].
///
/// Each value is serialized to JSON as an uppercase string matching the Layrz API
/// reference. If deserialization encounters an unknown value, it defaults to [unused]
/// (the value used when the action's [ActionType] does not apply a subtype).
@JsonEnum(alwaysCreate: true)
enum ActionSubtype {
  /// Both links and unlinks the asset. Layrz API reference: `BOTH`.
  @JsonValue('BOTH')
  both,

  /// Links the asset. Layrz API reference: `LINK`.
  @JsonValue('LINK')
  link,

  /// Unlinks the asset. Layrz API reference: `UNLINK`.
  @JsonValue('UNLINK')
  unlink,

  /// No subtype applies. This is the fallback value used when an unknown subtype is
  /// received, and the value used for [ActionType]s other than [ActionType.link].
  /// Layrz API reference: `UNUSED`.
  @JsonValue('UNUSED')
  unused,
  ;

  /// Returns the JSON representation of this action subtype (e.g., `BOTH`, `UNUSED`).
  @override
  String toString() => toJson();

  /// Converts this [ActionSubtype] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum value is
  /// not found in the generated map (should never occur), defaults to `'UNUSED'`.
  String toJson() => _$ActionSubtypeEnumMap[this] ?? 'UNUSED';

  /// Converts a JSON string to an [ActionSubtype].
  ///
  /// Accepts the uppercase JSON values from the server wire format. If the input does
  /// not match any known value, returns [unused] as the fallback default.
  static ActionSubtype fromJson(String json) =>
      _$ActionSubtypeEnumMap.entries.firstWhereOrNull((e) => e.value == json)?.key ?? ActionSubtype.unused;
}
