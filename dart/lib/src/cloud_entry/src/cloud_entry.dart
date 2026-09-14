part of '../cloud_entry.dart';

/// Immutable cloud storage entry, either a folder or a file.
@freezed
abstract class CloudEntry with _$CloudEntry {
  /// Constructs an immutable [CloudEntry].
  const factory CloudEntry({
    /// [name] defines the name of the entry. If the name starts with `[translate:]`, means
    /// that the name is a translation key.
    required String name,

    /// [type] is the type of the entry.
    @CloudEntryTypeConverter() required CloudEntryType type,

    /// [path] is the absolute path of the entry.
    required String path,

    /// [serial] is the file serial. Only used for [CloudEntryType.file].
    String? serial,

    /// [fileId] is the file ID of the file. Only used for [CloudEntryType.file].
    String? fileId,

    /// [size] is the size of the file. Only used for [CloudEntryType.file].
    /// This field is defined in bytes.
    int? size,

    /// [lastModified] is the last modified date of the file. Only used for [CloudEntryType.file].
    @TimestampOrNullConverter() DateTime? lastModified,

    /// [contentType] is the content type of the file. Only used for [CloudEntryType.file].
    String? contentType,

    /// [metadata] is the metadata of the file. Only used for [CloudEntryType.file].
    /// Currently only works for images.
    Map<String, dynamic>? metadata,

    /// [sensorId] is the ID of the sensor associated with this file, if applicable.
    ///
    /// This value is only used for [CloudEntryType.file] and when it's populated by an asset, also
    /// this property will only be populated after `2025-10-27`, before that, it will be null for all entries.
    String? sensorId,
  }) = _CloudEntry;

  /// Deserializes a [CloudEntry] from a JSON map.
  factory CloudEntry.fromJson(Map<String, dynamic> json) => _$CloudEntryFromJson(json);
}
