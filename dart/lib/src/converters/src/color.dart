part of '../converters.dart';

/// A [JsonConverter] that converts between [Color] and hex color strings.
///
/// Converts from JSON hex strings (e.g., `"#FF0000"`) to Dart [Color] objects
/// and back. Expects strings in the format `#RRGGBB` where RR, GG, BB are
/// two-digit hexadecimal values. Returns `Color(0xFF2196F3)` (Material blue)
/// if the input string does not start with `#`.
class ColorConverter implements JsonConverter<Color, String> {
  /// Creates a [ColorConverter].
  const ColorConverter();

  @override
  Color fromJson(String json) {
    if (json.startsWith('#')) {
      int red = int.parse(json.substring(1, 3), radix: 16);
      int green = int.parse(json.substring(3, 5), radix: 16);
      int blue = int.parse(json.substring(5, 7), radix: 16);

      return Color.fromARGB(255, red, green, blue);
    }

    return Color(0xFF2196F3);
  }

  @override
  String toJson(Color object) {
    String red = _toRadixString(object.r);
    String green = _toRadixString(object.g);
    String blue = _toRadixString(object.b);

    return "#${red.padLeft(2, '0')}${green.padLeft(2, '0')}${blue.padLeft(2, '0')}";
  }
}

/// A [JsonConverter] that converts between nullable [Color] and nullable hex
/// color strings.
///
/// Converts from JSON hex strings or `null` to Dart [Color?] and back. Expects
/// strings in the format `#RRGGBB` where RR, GG, BB are two-digit hexadecimal
/// values. Returns `null` if the input is `null`, empty, or does not start
/// with `#`.
class ColorOrNullConverter implements JsonConverter<Color?, String?> {
  /// Creates a [ColorOrNullConverter].
  const ColorOrNullConverter();

  @override
  Color? fromJson(String? json) {
    if (json == null) return null;
    if (json.isEmpty) return null;

    if (json.startsWith('#')) {
      int red = int.parse(json.substring(1, 3), radix: 16);
      int green = int.parse(json.substring(3, 5), radix: 16);
      int blue = int.parse(json.substring(5, 7), radix: 16);

      return Color.fromARGB(255, red, green, blue);
    }

    return null;
  }

  @override
  String? toJson(Color? object) {
    if (object == null) return null;
    String red = _toRadixString(object.r);
    String green = _toRadixString(object.g);
    String blue = _toRadixString(object.b);

    return "#${red.padLeft(2, '0')}${green.padLeft(2, '0')}${blue.padLeft(2, '0')}";
  }
}

/// Converts a normalized color component (0.0-1.0) to a hexadecimal string.
///
/// Takes a [value] between 0.0 and 1.0, scales it to 0-255, and converts to
/// a base-16 string representation for use in hex color codes.
String _toRadixString(double value) {
  return (value * 255).clamp(0, 255).toInt().toRadixString(16);
}
