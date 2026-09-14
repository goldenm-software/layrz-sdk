part of '../../workspace.dart';

/// The column/row configuration for a workspace's table monitor.
@freezed
abstract class TableItem with _$TableItem {
  const TableItem._();

  /// Constructs an immutable [TableItem].
  const factory TableItem({
    /// [assetsIds] is the list of ids of the [assets] associated with the table
    @Default([]) List<String> assetsIds,

    /// [sensorsIds] is the list of ids of the [sensors] associated with the table
    @Default([]) List<String> sensorsIds,

    /// [attributes] is the list of  assets [attributes] associated with the table
    @Default([]) List<String> attributes,
  }) = _TableItem;

  /// Deserializes a [TableItem] from a JSON map.
  factory TableItem.fromJson(Map<String, dynamic> json) => _$TableItemFromJson(json);
}

/// [TableItemInput] is the input variant of [TableItem].
@unfreezed
abstract class TableItemInput with _$TableItemInput {
  const TableItemInput._();

  /// Constructs a mutable [TableItemInput].
  factory TableItemInput({
    /// [assetsIds] is the list of ids of the [assets] associated with the table
    @Default([]) List<String> assetsIds,

    /// [sensorsIds] is the list of ids of the [sensors] associated with the table
    @Default([]) List<String> sensorsIds,

    /// [attributes] is the list of  assets [attributes] associated with the table
    @Default([]) List<String> attributes,
  }) = _TableItemInput;

  /// Deserializes a [TableItemInput] from a JSON map.
  factory TableItemInput.fromJson(Map<String, dynamic> json) => _$TableItemInputFromJson(json);
}
