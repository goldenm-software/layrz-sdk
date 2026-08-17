part of '../converters.dart';

/// A [JsonConverter] that converts between nullable [Uint8List] and [List<int>].
///
/// Converts from JSON [List<int>?] to Dart [Uint8List?] and back. Returns
/// `null` when the input is `null`.
class ByteListOrNullConverter implements JsonConverter<Uint8List?, List<int>?> {
  /// Creates a [ByteListOrNullConverter].
  const ByteListOrNullConverter();

  @override
  Uint8List? fromJson(List<int>? json) {
    if (json == null) {
      return null;
    }
    return Uint8List.fromList(json);
  }

  @override
  List<int>? toJson(Uint8List? object) {
    if (object == null) {
      return null;
    }
    return object.toList();
  }
}

/// A [JsonConverter] that converts between non-nullable [Uint8List] and [List<int>].
///
/// Converts from JSON [List<int>] to Dart [Uint8List] and back.
class ByteListConverter implements JsonConverter<Uint8List, List<int>> {
  /// Creates a [ByteListConverter].
  const ByteListConverter();

  @override
  Uint8List fromJson(List<int> json) {
    return Uint8List.fromList(json);
  }

  @override
  List<int> toJson(Uint8List object) {
    return object.toList();
  }
}
