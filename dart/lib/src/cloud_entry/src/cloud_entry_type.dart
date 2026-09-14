part of '../cloud_entry.dart';

/// The kind of a [CloudEntry]: a folder or a file.
enum CloudEntryType {
  /// [folder] is a directory entry that can contain other entries.
  folder,

  /// [file] is a leaf entry representing a stored file.
  file;

  /// Returns the JSON representation of this type (e.g., `FOLDER`, `FILE`).
  @override
  String toString() => toJson();

  /// Converts this [CloudEntryType] to its wire JSON string.
  String toJson() {
    switch (this) {
      case CloudEntryType.folder:
        return 'FOLDER';
      case CloudEntryType.file:
        return 'FILE';
    }
  }

  /// Converts a JSON string to a [CloudEntryType].
  ///
  /// Throws an [Exception] when [json] does not match a known value.
  static CloudEntryType fromJson(String json) {
    switch (json) {
      case 'FOLDER':
        return CloudEntryType.folder;
      case 'FILE':
        return CloudEntryType.file;
      default:
        throw Exception('Unknown CloudEntryType');
    }
  }
}

/// [CloudEntryTypeConverter] (de)serializes [CloudEntryType] to/from its wire JSON string.
class CloudEntryTypeConverter implements JsonConverter<CloudEntryType, String> {
  /// Creates a [CloudEntryTypeConverter].
  const CloudEntryTypeConverter();

  @override
  CloudEntryType fromJson(String json) => CloudEntryType.fromJson(json);

  @override
  String toJson(CloudEntryType object) => object.toJson();
}
