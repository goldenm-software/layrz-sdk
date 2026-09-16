part of '../model.dart';

/// Mutable input data for creating or updating a [ZigbeeParameter].
///
/// [ZigbeeParameterInput] mirrors the fields of [ZigbeeParameter] but is
/// mutable and provides sensible defaults, making it suitable for form
/// binding before submission as part of a [ModelInput.zigbeeParameters] list.
@unfreezed
abstract class ZigbeeParameterInput with _$ZigbeeParameterInput {
  /// Private constructor used by the code generator.
  const ZigbeeParameterInput._();

  /// Constructs a mutable [ZigbeeParameterInput].
  factory ZigbeeParameterInput({
    /// [id] unique identifier, or null when creating a new parameter.
    String? id,

    /// [name] human-readable parameter name. Defaults to an empty string.
    @Default('') String name,

    /// [alias] optional alias for the parameter.
    String? alias,

    /// [dataType] data type of the parameter.
    @JsonKey(unknownEnumValue: ZigbeeDataType.string) @Default(ZigbeeDataType.string) ZigbeeDataType dataType,

    /// [widget] rendering widget.
    @JsonKey(unknownEnumValue: RenderWidget.unknown) @Default(RenderWidget.unknown) RenderWidget widget,

    /// [access] access level (bit flags: read=1, write=2, default=3).
    int? access,

    /// [extra] optional extra configuration (e.g. enum options, range bounds).
    Map<String, dynamic>? extra,
  }) = _ZigbeeParameterInput;

  /// Deserializes a [ZigbeeParameterInput] from a JSON map.
  factory ZigbeeParameterInput.fromJson(Map<String, dynamic> json) => _$ZigbeeParameterInputFromJson(json);
}
