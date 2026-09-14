part of '../geofences.dart';

/// The file format used to export one or more [Geofence] entities.
///
/// Used by [Geofence.export] and [Geofence.exportMany] to select the output
/// format of the exported file.
enum ExportFormat {
  /// [geojson] - Export as a GeoJSON document.
  geojson,

  /// [kml] - Export as a KML document.
  kml,

  /// [kmz] - Export as a compressed KMZ document.
  kmz;

  /// Converts this [ExportFormat] to its wire string representation (e.g.,
  /// `'GEOJSON'`, `'KML'`, `'KMZ'`).
  @override
  String toString() {
    switch (this) {
      case ExportFormat.geojson:
        return 'GEOJSON';
      case ExportFormat.kml:
        return 'KML';
      case ExportFormat.kmz:
        return 'KMZ';
    }
  }

  /// Returns a human-readable label for this format (e.g., `'GeoJSON'`,
  /// `'KML'`, `'KMZ'`), suitable for display in a UI.
  String get translation {
    switch (this) {
      case ExportFormat.geojson:
        return 'GeoJSON';
      case ExportFormat.kml:
        return 'KML';
      case ExportFormat.kmz:
        return 'KMZ';
    }
  }
}
