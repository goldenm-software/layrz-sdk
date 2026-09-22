part of '../references.dart';

/// The purpose category a [Reference] is classified under.
///
/// Most values are scoped to a specific Layrz product (ATS, Mappit, Tenvio,
/// SDM) and grant access to that product's modules; [driver], [client], and
/// [universal] are cross-product categories.
///
/// If deserialization encounters an unknown category value, it defaults to
/// [unknown].
enum ReferenceCategory {
  /// Defines the reference as a driver reference, generally used to identify
  /// a driver universally.
  /// Layrz API Reference: DRIVER
  @JsonValue('DRIVER')
  driver,

  /// Defines the reference as a client reference, generally used to identify
  /// a client universally.
  /// Layrz API Reference: CLIENT
  @JsonValue('CLIENT')
  client,

  /// Universal reference category. We recommend correctly using the custom
  /// fields to prevent confusion or mistakes with the reference.
  /// Layrz API Reference: UNIVERSAL
  @JsonValue('UNIVERSAL')
  universal,

  /// !ATS Reference
  /// Defines access to the monitorist module.
  /// Layrz API Reference: MONITORIST
  @JsonValue('MONITORIST')
  monitorist,

  /// !ATS Reference
  /// Defines access to the ATS Mobile app.
  /// Layrz API Reference: ATS_MOBILE
  @JsonValue('ATS_MOBILE')
  atsMobile,

  /// !ATS Reference
  /// Defines access to the ATS Web module tanks.
  /// Layrz API Reference: ATS_TANK
  @JsonValue('ATS_TANK')
  atsTank,

  /// !ATS Reference
  /// Defines access to the ATS Web module pumps.
  /// Layrz API Reference: ATS_PUMP
  @JsonValue('ATS_PUMP')
  atsPump,

  /// !ATS Reference
  /// Defines access to the ATS Web module fleet.
  /// Layrz API Reference: ATS_FLEET
  @JsonValue('ATS_FLEET')
  atsFleet,

  /// !ATS Reference
  /// Defines access to the ATS Web module convoy.
  /// Layrz API Reference: ATS_CONVOY
  @JsonValue('ATS_CONVOY')
  atsConvoy,

  /// !ATS Reference
  /// Defines access to the ATS Web module lubrication.
  /// Layrz API Reference: ATS_LUBRICATION
  @JsonValue('ATS_LUBRICATION')
  atsLubrication,

  /// !ATS Reference
  /// Defines access to the ATS Web module tank history.
  /// Layrz API Reference: ATS_TANK_HISTORY
  @JsonValue('ATS_TANK_HISTORY')
  atsTankHistory,

  /// !ATS Reference
  /// Defines access to the ATS Web module entries history.
  /// Layrz API Reference: ATS_ENTRIES
  @JsonValue('ATS_ENTRIES')
  atsEntries,

  /// !ATS Reference
  /// Defines access to the ATS Web module purchase orders.
  /// Layrz API Reference: ATS_PURCHASE_ORDERS
  @JsonValue('ATS_PURCHASE_ORDERS')
  atsPurchaseOrders,

  /// !ATS Reference
  /// Defines access to the ATS Web module link purchases.
  /// Layrz API Reference: ATS_LINK_PURCHASES
  @JsonValue('ATS_LINK_PURCHASES')
  atsLinkPurchases,

  /// !ATS Reference
  /// Defines access to the ATS Web module dashboard 360.
  /// Layrz API Reference: ATS_DASHBOARD_360
  @JsonValue('ATS_DASHBOARD_360')
  atsDashboard360,

  /// !ATS Reference
  /// Defines access to the ATS Web module register purchases.
  /// Layrz API Reference: ATS_REGISTER_PURCHASES
  @JsonValue('ATS_REGISTER_PURCHASES')
  atsRegisterPurchases,

  /// !ATS Reference
  /// Defines access to the ATS Web module upload purchases XML.
  /// Layrz API Reference: ATS_UPLOAD_PURCHASES_XML
  @JsonValue('ATS_UPLOAD_PURCHASES_XML')
  atsUploadPurchasesXml,

  /// !ATS Reference
  /// Defines access to the ATS Web module exit convoy.
  /// Layrz API Reference: ATS_EXECUTE_EXIT_CONVOY
  @JsonValue('ATS_EXECUTE_EXIT_CONVOY')
  atsExecuteExitConvoy,

  /// !ATS Reference
  /// Defines access to the ATS Web module exits history.
  /// Layrz API Reference: ATS_EXITS
  @JsonValue('ATS_EXITS')
  atsExits,

  /// !ATS Reference
  /// Defines access to the ATS Web module pump history.
  /// Layrz API Reference: ATS_PUMP_HISTORY
  @JsonValue('ATS_PUMP_HISTORY')
  atsPumpHistory,

  /// !ATS Reference
  /// Defines access to the ATS Web module execute exit.
  /// Layrz API Reference: ATS_EXECUTE_EXIT
  @JsonValue('ATS_EXECUTE_EXIT')
  atsExecuteExit,

  /// !ATS Reference
  /// Defines access to the ATS Web module tank levels.
  /// Layrz API Reference: ATS_TANK_LEVELS
  @JsonValue('ATS_TANK_LEVELS')
  atsTankLevels,

  /// !ATS Reference
  /// Defines access to the ATS Web module execute NFC exits.
  /// Layrz API Reference: ATS_NFC_EXECUTE_EXIT
  @JsonValue('ATS_NFC_EXECUTE_EXIT')
  atsNfcExecuteExit,

  /// !ATS Reference
  /// Defines access to the ATS Web module manual exits.
  /// Layrz API Reference: ATS_SELECTION_MANUAL_EXECUTE_EXIT
  @JsonValue('ATS_SELECTION_MANUAL_EXECUTE_EXIT')
  atsSelectionManualExecuteExit,

  /// !ATS Reference
  /// Defines access to the ATS Web module automatic reception.
  /// Layrz API Reference: ATS_AUTOMATIC_RECEPTION
  @JsonValue('ATS_AUTOMATIC_RECEPTION')
  atsAutomaticReception,

  /// !ATS Reference
  /// Defines the access user as a driver on the ATS ecosystem.
  /// Layrz API Reference: ATS_DRIVER
  @JsonValue('ATS_DRIVER')
  atsDriver,

  /// !ATS Reference
  /// Defines access to the ATS Web module terminal operations.
  /// Layrz API Reference: ATS_TERMINAL_OPERATIONS
  @JsonValue('ATS_TERMINAL_OPERATIONS')
  atsTerminalOperations,

  /// !ATS Reference
  /// Defines access to the ATS Web module terminal loading grid.
  /// Layrz API Reference: ATS_TERMINAL_LOADING_GRID
  @JsonValue('ATS_TERMINAL_LOADING_GRID')
  atsTerminalLoadingGrid,

  /// !ATS Reference
  /// Defines access to the ATS Web module terminal access control.
  /// Layrz API Reference: ATS_TERMINAL_ACCESS_CONTROL
  @JsonValue('ATS_TERMINAL_ACCESS_CONTROL')
  atsTerminalAccessControl,

  /// !ATS Reference
  /// Defines access to the ATS Web module terminal yard alerts.
  /// Layrz API Reference: ATS_TERMINAL_YARD_ALERTS
  @JsonValue('ATS_TERMINAL_YARD_ALERTS')
  atsTerminalYardAlerts,

  /// !ATS Reference
  /// Defines access to the ATS Web module terminal load formatting.
  /// Layrz API Reference: ATS_TERMINAL_LOAD_FORMATTING
  @JsonValue('ATS_TERMINAL_LOAD_FORMATTING')
  atsTerminalLoadFormatting,

  /// !ATS Reference
  /// Defines access to the ATS Web module terminal stock management.
  /// Layrz API Reference: ATS_TERMINAL_STOCK_MANAGEMENT
  @JsonValue('ATS_TERMINAL_STOCK_MANAGEMENT')
  atsTerminalStockManagement,

  /// !ATS Reference
  /// Defines access to the ATS Web module terminal CACL.
  /// Layrz API Reference: ATS_TERMINAL_CACL
  @JsonValue('ATS_TERMINAL_CACL')
  atsTerminalCacl,

  /// !ATS Reference
  /// Defines access to the ATS Web module terminal edit transport.
  /// Layrz API Reference: ATS_TERMINAL_EDIT_TRANSPORT
  @JsonValue('ATS_TERMINAL_EDIT_TRANSPORT')
  atsTerminalEditTransport,

  /// !ATS Reference
  /// Defines access to the ATS Web module terminal edit transport (Coleta).
  /// Layrz API Reference: ATS_ACCESS_COLETA
  @JsonValue('ATS_ACCESS_COLETA')
  atsAccessColeta,

  /// !ATS Reference
  /// Defines access to the ATS Web module terminal edit transport (PA Load
  /// Comboio).
  /// Layrz API Reference: ATS_PA_LOAD_COMBOIO
  @JsonValue('ATS_PA_LOAD_COMBOIO')
  atsPaLoadComboio,

  /// !ATS Reference
  /// [AllTank Systems] Access to send odometer in execute exits.
  /// Layrz API Reference: ATS_SEND_ODOMETER_IN_EXECUTE_EXITS
  @JsonValue('ATS_SEND_ODOMETER_IN_EXECUTE_EXITS')
  atsSendOdometerInExecuteExits,

  /// !ATS Reference
  /// [AllTank Systems] Access to the recalculate operation button.
  /// Layrz API Reference: ATS_RECALCULATE_OPERATION_BUTTON
  @JsonValue('ATS_RECALCULATE_OPERATION_BUTTON')
  atsRecalculateOperationButton,

  /// !ATS Reference
  /// [AllTank Systems] Access to the balsa bordo module.
  /// Layrz API Reference: ATS_BALSA_BORDO
  @JsonValue('ATS_BALSA_BORDO')
  atsBalsaBordo,

  /// !ATS Reference
  /// [AllTank Systems] Access to export receivement report PDF.
  /// Layrz API Reference: ATS_BALSA_EXPORT_RECEIVEMENT_REPORT_PDF
  @JsonValue('ATS_BALSA_EXPORT_RECEIVEMENT_REPORT_PDF')
  atsBalsaExportReceivementReportPdf,

  /// !ATS Reference
  /// [AllTank Systems] Access to export closure report PDF.
  /// Layrz API Reference: ATS_EXPORT_RAFT_CLOSURE_REPORT_PDF
  @JsonValue('ATS_EXPORT_RAFT_CLOSURE_REPORT_PDF')
  atsExportRaftClosureReportPdf,

  /// !ATS Reference
  /// [AllTank Systems] Access to the CACL edit in supervisorio module.
  /// Layrz API Reference: ATS_SUPERVISORIO_EDIT_CACL
  @JsonValue('ATS_SUPERVISORIO_EDIT_CACL')
  atsSupervisorioEditCacl,

  /// !ATS Reference
  /// [AllTank Systems] Access to the CACL remove in supervisorio module.
  /// Layrz API Reference: ATS_SUPERVISORIO_REMOVE_CACL
  @JsonValue('ATS_SUPERVISORIO_REMOVE_CACL')
  atsSupervisorioRemoveCacl,

  /// !ATS Reference
  /// [AllTank Systems] Access to the CACL export in supervisorio module.
  /// Layrz API Reference: ATS_SUPERVISORIO_EXPORT_CACL
  @JsonValue('ATS_SUPERVISORIO_EXPORT_CACL')
  atsSupervisorioExportCacl,

  /// !ATS Reference
  /// [AllTank Systems] Access to prevent changes in CACL telemetry inputs.
  /// Layrz API Reference: ATS_PREVENT_CHANGES_IN_CACL_TELEMETRY_INPUTS
  @JsonValue('ATS_PREVENT_CHANGES_IN_CACL_TELEMETRY_INPUTS')
  atsPreventChangesInCaclTelemetryInputs,

  /// !ATS Reference
  /// [AllTank Systems] Access to get all terminals in terminal operations
  /// module.
  /// Layrz API Reference: ATS_GET_ALL_TERMINALS
  @JsonValue('ATS_GET_ALL_TERMINALS')
  atsGetAllTerminals,

  /// !ATS Reference
  /// [AllTank Systems] Access to the storage reception module.
  /// Layrz API Reference: ATS_STORAGE_RECEPTION_ACCESS
  @JsonValue('ATS_STORAGE_RECEPTION_ACCESS')
  atsStorageReceptionAccess,

  /// !ATS Reference
  /// [AllTank Systems] Access to swap invoice in purchase order.
  /// Layrz API Reference: ATS_INVOICE_SWAP
  @JsonValue('ATS_INVOICE_SWAP')
  atsInvoiceSwap,

  /// !ATS Reference
  /// [AllTank Systems] When present on a pump asset, the history view must
  /// show only the most recent exit instead of the full list.
  /// Layrz API Reference: ATS_SHOW_ONLY_LAST_EXIT
  @JsonValue('ATS_SHOW_ONLY_LAST_EXIT')
  atsShowOnlyLastExit,

  /// !ATS Reference
  /// [AllTank Systems] Access to close raft operation in supervisorio
  /// module.
  /// Layrz API Reference: ATS_SUPERVISORIO_ALLOW_CLOSE_RAFT_OPERATION
  @JsonValue('ATS_SUPERVISORIO_ALLOW_CLOSE_RAFT_OPERATION')
  atsSupervisorioAllowCloseRaftOperation,

  /// !ATS Reference
  /// [AllTank Systems] Access to merge and revert merge of operations.
  /// Layrz API Reference: ATS_MERGE_OPERATIONS
  @JsonValue('ATS_MERGE_OPERATIONS')
  atsMergeOperations,

  /// !Mappit Reference
  /// Defines access to the Mappit module as an operator or Mappit employee.
  /// Layrz API Reference: MAPPIT_OPERATOR
  @JsonValue('MAPPIT_OPERATOR')
  mappitOperator,

  /// !Mappit Reference
  /// Defines access to the Mappit module as a customer.
  /// Layrz API Reference: MAPPIT_CUSTOMER
  @JsonValue('MAPPIT_CUSTOMER')
  mappitCustomer,

  /// !Mappit Reference
  /// Defines access to the Mappit module as an employee.
  /// Layrz API Reference: MAPPIT_EMPLOYEE
  @JsonValue('MAPPIT_EMPLOYEE')
  mappitEmployee,

  /// !Mappit Reference
  /// Defines access to the Mappit module as a supervisor.
  /// Layrz API Reference: MAPPIT_SUPERVISOR
  @JsonValue('MAPPIT_SUPERVISOR')
  mappitSupervisor,

  /// !Mappit Reference
  /// Defines access to the Mappit module as a seller.
  /// Layrz API Reference: MAPPIT_SELLER
  @JsonValue('MAPPIT_SELLER')
  mappitSeller,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module home.
  /// Layrz API Reference: MAPPIT_PERM_HOME
  @JsonValue('MAPPIT_PERM_HOME')
  mappitPermHome,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module geomarketing.
  /// Layrz API Reference: MAPPIT_PERM_GEOMARKETING
  @JsonValue('MAPPIT_PERM_GEOMARKETING')
  mappitPermGeomarketing,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module time management.
  /// Layrz API Reference: MAPPIT_PERM_TIME_MANAGEMENT
  @JsonValue('MAPPIT_PERM_TIME_MANAGEMENT')
  mappitPermTimeManagement,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module reports.
  /// Layrz API Reference: MAPPIT_PERM_REPORTS
  @JsonValue('MAPPIT_PERM_REPORTS')
  mappitPermReports,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module routes.
  /// Layrz API Reference: MAPPIT_PERM_ROUTES
  @JsonValue('MAPPIT_PERM_ROUTES')
  mappitPermRoutes,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module users, read only.
  /// Layrz API Reference: MAPPIT_PERM_USERS_READ
  @JsonValue('MAPPIT_PERM_USERS_READ')
  mappitPermUsersRead,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module users, full.
  /// Layrz API Reference: MAPPIT_PERM_USERS_FULL
  @JsonValue('MAPPIT_PERM_USERS_FULL')
  mappitPermUsersFull,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module supervisors, read only.
  /// Layrz API Reference: MAPPIT_PERM_SUPERVISORS_READ
  @JsonValue('MAPPIT_PERM_SUPERVISORS_READ')
  mappitPermSupervisorsRead,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module supervisors, full.
  /// Layrz API Reference: MAPPIT_PERM_SUPERVISORS_FULL
  @JsonValue('MAPPIT_PERM_SUPERVISORS_FULL')
  mappitPermSupervisorsFull,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module sellers.
  /// Layrz API Reference: MAPPIT_PERM_SELLERS
  @JsonValue('MAPPIT_PERM_SELLERS')
  mappitPermSellers,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module operators, read only.
  /// Layrz API Reference: MAPPIT_PERM_OPERATORS_READ
  @JsonValue('MAPPIT_PERM_OPERATORS_READ')
  mappitPermOperatorsRead,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module operators, full.
  /// Layrz API Reference: MAPPIT_PERM_OPERATORS_FULL
  @JsonValue('MAPPIT_PERM_OPERATORS_FULL')
  mappitPermOperatorsFull,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module geofences custom fields,
  /// write.
  /// Layrz API Reference: MAPPIT_PERM_GEOFENCES_CF_WRITE
  @JsonValue('MAPPIT_PERM_GEOFENCES_CF_WRITE')
  mappitPermGeofencesCfWrite,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module polygons, read only.
  /// Layrz API Reference: MAPPIT_PERM_POLYGONS_READ
  @JsonValue('MAPPIT_PERM_POLYGONS_READ')
  mappitPermPolygonsRead,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module polygons, full.
  /// Layrz API Reference: MAPPIT_PERM_POLYGONS_FULL
  @JsonValue('MAPPIT_PERM_POLYGONS_FULL')
  mappitPermPolygonsFull,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module profiles, read only.
  /// Layrz API Reference: MAPPIT_PERM_PROFILES_READ
  @JsonValue('MAPPIT_PERM_PROFILES_READ')
  mappitPermProfilesRead,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module profiles, full.
  /// Layrz API Reference: MAPPIT_PERM_PROFILES_FULL
  @JsonValue('MAPPIT_PERM_PROFILES_FULL')
  mappitPermProfilesFull,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module free days, read only.
  /// Layrz API Reference: MAPPIT_PERM_FREEDAYS_READ
  @JsonValue('MAPPIT_PERM_FREEDAYS_READ')
  mappitPermFreeDaysRead,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module free days, full.
  /// Layrz API Reference: MAPPIT_PERM_FREEDAYS_FULL
  @JsonValue('MAPPIT_PERM_FREEDAYS_FULL')
  mappitPermFreeDaysFull,

  /// !Mappit Reference
  /// Defines access to the Mappit Analytics module tags, read only.
  /// Layrz API Reference: MAPPIT_PERM_TAGS_READ
  @JsonValue('MAPPIT_PERM_TAGS_READ')
  mappitPermTagsRead,

  /// !Tenvio Reference
  /// Defines the user as a dispatcher on the Tenvio ecosystem.
  /// Layrz API Reference: TENVIO_DISPATCHER
  @JsonValue('TENVIO_DISPATCHER')
  tenvioDispatcher,

  /// !Tenvio Reference
  /// Defines the user as an operator on the Tenvio ecosystem.
  /// Layrz API Reference: TENVIO_OPERATOR
  @JsonValue('TENVIO_OPERATOR')
  tenvioOperator,

  /// !Tenvio Reference
  /// Defines the user as a driver on the Tenvio ecosystem.
  /// Layrz API Reference: TENVIO_DRIVER
  @JsonValue('TENVIO_DRIVER')
  tenvioDriver,

  /// !Tenvio Reference
  /// Defines the user as a client on the Tenvio ecosystem.
  /// Layrz API Reference: TENVIO_CLIENT
  @JsonValue('TENVIO_CLIENT')
  tenvioClient,

  /// !Tenvio Reference
  /// Defines the user as an admin on the Tenvio ecosystem.
  /// Layrz API Reference: TENVIO_ADMIN
  @JsonValue('TENVIO_ADMIN')
  tenvioAdmin,

  /// !SDM Reference
  /// Defines the user as an admin on the SDM ecosystem.
  /// Layrz API Reference: SDM_ADMIN
  @JsonValue('SDM_ADMIN')
  @Deprecated('Will be removed in future versions, use sdmSupervisor instead')
  sdmAdmin,

  /// !SDM Reference
  /// Defines the user as a supervisor on the SDM ecosystem.
  /// Layrz API Reference: SDM_SUPERVISOR
  @JsonValue('SDM_SUPERVISOR')
  sdmSupervisor,

  /// !SDM Reference
  /// Defines the user as an operator on the SDM ecosystem.
  /// Layrz API Reference: SDM_OPERATOR
  @JsonValue('SDM_OPERATOR')
  sdmOperator,

  /// !SDM Reference
  /// Defines the user as a guest on the SDM ecosystem.
  /// Layrz API Reference: SDM_GUEST
  @JsonValue('SDM_GUEST')
  sdmGuest,

  /// Defines a value that is not known or not applicable.
  /// Layrz API Reference: UNKNOWN
  @JsonValue('UNKNOWN')
  unknown,
  ;

  /// Returns the JSON representation of this category value.
  @override
  String toString() => toJson();

  /// Converts this [ReferenceCategory] to its wire JSON string.
  String toJson() => _$ReferenceCategoryEnumMap[this] ?? 'UNKNOWN';

  /// Converts a JSON string to a [ReferenceCategory].
  ///
  /// Returns [unknown] when the input does not match any known category.
  static ReferenceCategory fromJson(String json) {
    final found = _$ReferenceCategoryEnumMap.entries.firstWhereOrNull((e) => e.value == json);
    return found?.key ?? ReferenceCategory.unknown;
  }

  /// The translation key for this category value.
  ///
  /// Defined by the Golden M team and intended for use with the Layrz
  /// translation system.
  String get translationKey => 'references.categories.${toString()}';
}
