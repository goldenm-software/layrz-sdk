part of '../inbound.dart';

/// [ConfigGroupingInput] is the mutable, input counterpart of [ConfigGrouping].
///
/// It is used when building or editing a configuration grouping, for example in a form,
/// before it is persisted back to the Layrz API.
@unfreezed
abstract class ConfigGroupingInput with _$ConfigGroupingInput {
  factory ConfigGroupingInput({
    /// [name] is the name of the grouping.
    /// This is the translation key.
    @Default('') String name,

    /// [kind] is the kind of the grouping.
    @JsonKey(unknownEnumValue: ConfigKind.unknown) @Default(ConfigKind.grouping) ConfigKind kind,

    /// [description] is the fallback name of the grouping, when the translation is not available.
    /// This is the translation key.
    @Default('') String description,

    /// [setupCapable] is the flag that indicates if the grouping is capable of being set up.
    @Default(false) bool setupCapable,

    /// [items] is the list of items of the grouping.
    @Default([]) List<ConfigDefinitionInput> items,
  }) = _ConfigGroupingInput;

  factory ConfigGroupingInput.fromJson(Map<String, dynamic> json) => _$ConfigGroupingInputFromJson(json);
}
