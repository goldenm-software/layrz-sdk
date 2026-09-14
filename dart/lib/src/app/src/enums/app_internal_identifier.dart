part of '../../app.dart';

/// The internal identifier of a well-known Layrz application.
///
/// [AppInternalIdentifier] identifies a specific first-party or partner
/// application within the Layrz ecosystem (used, for example, to filter
/// apps in a pick-an-app flow via [RegisteredApp.fetchPickAndApp]). Each
/// value is serialized to JSON as an uppercase string (e.g., `ADMIN`,
/// `LAUNCHPAD`).
///
/// If deserialization encounters an unknown identifier value, it defaults to
/// [unknown].
@JsonEnum(alwaysCreate: true)
enum AppInternalIdentifier {
  /// [admin] - The Layrz Admin application.
  @JsonValue('ADMIN')
  admin,

  /// [invite] - The invite application.
  @JsonValue('INVITE')
  invite,

  /// [launchpad] - The launchpad application.
  @JsonValue('LAUNCHPAD')
  launchpad,

  /// [link] - The link application.
  @JsonValue('LINK')
  link,

  /// [one] - The Layrz One application.
  @JsonValue('ONE')
  one,

  /// [fusion] - The Layrz Fusion application.
  @JsonValue('FUSION')
  fusion,

  /// [concierge] - The concierge application.
  @JsonValue('CONCIERGE')
  concierge,

  /// [keyboard] - The keyboard application.
  @JsonValue('KEYBOARD')
  keyboard,

  /// [tenvioPickAndPack] - The Tenvio Pick and Pack application.
  @JsonValue('TENVIO_PICK_AND_PACK')
  tenvioPickAndPack,

  /// [tenvioDrivers] - The Tenvio Drivers application.
  @JsonValue('TENVIO_DRIVERS')
  tenvioDrivers,

  /// [drive] - The drive application.
  @JsonValue('DRIVE')
  drive,

  /// [repcom] - The Repcom application.
  @JsonValue('REPCOM')
  repcom,

  /// [vision] - The Vision application.
  @JsonValue('VISION')
  vision,

  /// [cloud] - The cloud application.
  @JsonValue('CLOUD')
  cloud,

  /// [confiot] - The Confiot application.
  @JsonValue('CONFIOT')
  confiot,

  /// [gaslp] - The GASLP application.
  @JsonValue('GASLP')
  gaslp,

  /// [brickhouseTracking] - The Brickhouse Tracking application.
  @JsonValue('BRICKHOUSE_TRACKING')
  brickhouseTracking,

  /// [analyticsAdmin] - The Analytics Admin application.
  @JsonValue('ANALYTICS_ADMIN')
  analyticsAdmin,

  /// [analyticsDashboard] - The Analytics Dashboard application.
  @JsonValue('ANALYTICS_DASHBOARD')
  analyticsDashboard,

  /// [atsAdmin] - The ATS Admin application.
  @JsonValue('ATS_ADMIN')
  atsAdmin,

  /// [atsWeb] - The ATS Web application.
  @JsonValue('ATS_WEB')
  atsWeb,

  /// [atsFrentista] - The ATS Frentista application.
  @JsonValue('ATS_FRENTISTA')
  atsFrentista,

  /// [atsDriver] - The ATS Driver application.
  @JsonValue('ATS_DRIVER')
  atsDriver,

  /// [meuSmartank] - The Meu Smartank application.
  @JsonValue('MEU_SMARTANK')
  meuSmartank,

  /// [mapOnly] - The map-only application.
  @JsonValue('MAP_ONLY')
  mapOnly,

  /// [tagonMap] - The Tagon Map application.
  @JsonValue('TAGON_MAP')
  tagonMap,

  /// [tagonManager] - The Tagon Manager application.
  @JsonValue('TAGON_MANAGER')
  tagonManager,

  /// [sdmManager] - The SDM Manager application.
  @JsonValue('SDM_MANAGER')
  sdmManager,

  /// [locator] - The locator application.
  @JsonValue('LOCATOR')
  locator,

  /// [unknown] - An unrecognized application identifier. This is the
  /// fallback value used when an unknown identifier is received.
  @JsonValue('UNKNOWN')
  unknown;

  /// Returns the JSON representation of this identifier value (e.g.,
  /// `ADMIN`, `UNKNOWN`).
  @override
  String toString() => toJson();

  /// Converts this [AppInternalIdentifier] to its wire JSON string.
  ///
  /// Returns the `@JsonValue` annotation for this enum member. If the enum
  /// value is not found in the generated map (should never occur), defaults
  /// to `'UNKNOWN'`.
  String toJson() => _$AppInternalIdentifierEnumMap[this] ?? 'UNKNOWN';

  /// Converts a JSON string to an [AppInternalIdentifier].
  ///
  /// Accepts the uppercase JSON values (e.g., `'ADMIN'`, `'UNKNOWN'`) from
  /// the server wire format. If the input does not match any known value,
  /// returns [unknown] as the fallback default.
  static AppInternalIdentifier fromJson(String json) {
    final found = _$AppInternalIdentifierEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? AppInternalIdentifier.unknown;
  }
}
