# Changelog

## 4.22.0

### Python

* No changes in this release.

### Dart

* Added `MappitRecalculate.fetchAll` (`mappitRecalculates`, optional `limit`/`offset`, `fields` selection with the asset and requester plus `extraFields`) and `MappitRecalculate.request` (`requestMappitRecalc`, returns `StandardResponse<void>` with the field errors).
* Added Mappit assignment callers, each returning `bool`: `Asset.assignToMappitUser` (`mappitAssignAssetsToUser`), `Tag.assignToMappitUser` (`assignMappitTagsToUser`), `Geofence.assignToMappitUser` (`assignMappitGeofencesToUser`), `MappitRoute.assignToUser` (`assignMappitRoutesToUser`) and `MappitRoute.assignToSeller` (`assignMappitRouteToSeller`; a `null` route unassigns it).
* `Asset.fetchSensorsLastUpdate` accepts `variant`; `AssetVariant.mappit` uses `mappitSensorsLastUpdate`. The default keeps `sensorsLastUpdate`.
* Added `DeviceCommand.fetchAllMappit` (`mappitDeviceCommands`, filtered by `protocolsIds`/`modelsIds`, optional `includeGlobals`).
* Added `RegisteredApp.fetchAllMappit` (`mappitRegisteredApps`, optional `appIdentifier`), selecting the legal and design information and the instances with their builds.
* Added `Timezone.fetchAll` (`timezones`, token optional).
* `Geofence` reduced fragment selects `ownerId` and `owner` for `GeofenceVariant.mappit`.
* `User.fetchAll` selects `references` (`id`, `name`, `category`) for the Mappit variants.
* Fixed `GeofenceVariant.mappit` delete mutation name: `deleteMappitGeofences`.

## 4.21.0

### Python

* No changes in this release.

### Dart

* Added Mappit route API callers (Mappit API only): `MappitRoute.fetchAll` (`mappitRoutes`, lightweight `fragment` with `geofencesIds`, `ownerId` and `currentSeller`, plus `extraFields`), `MappitRoute.fetch` (geofences with custom fields, secondary sellers and the assignments history), `MappitRoute.deleteMany` (`deleteMappitRoutes`), `MappitRoute.export` (`exportMappitRoute`) and `MappitRoute.importFromWialon` (`importMappitGeofencesGroupsFromWialon`). Added `MappitRouteInput` (`save` through `addMappitRoute`/`editMappitRoute`, `fromRoute`).
* Added `ExternalGeofenceGroup` with `fetchAll` (`externalGeofencesGroups`) and `Geofence.saveMappitCustomFields` (`editMappitGeofenceCustomFields`, Mappit API only).
* Added `MappitFreeDay` with `fetchAll` (`mappitFreeDays`, `seePast`, `extraFields`), `fetch`, `deleteMany` (`deleteMappitFreeDays`) and `assignToSellers` (`assignMappitFreeDaysToSellers`), and `MappitFreeDayInput` (`save` through `addMappitFreeDay`/`editMappitFreeDay`, `fromFreeDay`).
* Ported the remaining Mappit models from `layrz_models` (same names, fields and JSON shape): `MappitProfile`, `MappitProfileGeofence`, `MappitHomeConfig`, `MappitDurationRange`, `MappitIntRange`, `MappitDoubleRange`, `PolygonDetails`, `ContainedRouteCategory`, `MappitRecalculate`, `MappitRecalculateStatus`, `MappitReportInput` and `MappitReportMultiInput`. Material colors are replaced by their `Color` values. Requires `layrz_models` 3.47.0, which removes its copies.
* Added `Geofence.exportMappit` (`exportMappitGeofences`, Mappit and public APIs): exports every visible Mappit geofence to an Excel file and returns its URL.
* Fixed `Geofence.export` and `Geofence.exportMany`: the `format` variable is now declared as `GeofenceExportFormat!` instead of `String!`, which the API rejected.
* Fixed `LayrzConnector.query` and `LayrzConnector.mutate` throwing when the API sends `errors` as a list: the status now reaches the caller (and its `onResponse`), and `errors` is empty unless it is a field map.

## 4.20.0

### Python

* No changes in this release.

### Dart

* Added asset API callers: `Asset.fetchAll` (listing selection per variant plus `extraFields`), `Asset.fetch` (full record, optional `withStorageTerminalRelations` for ATS), `AssetInput.save` (add/edit), `Asset.deleteMany`, `Asset.clone` and `Asset.updateWidgets` (`updateAssetWidgets`). Added the `AssetVariant` enum (`standard`, `ats`, `mappit`, `tenvioWarehouses`; Tenvio uses the standard operations) and `AssetInput.toVariantJson`, which drops the ATS and Mappit keys the other input types reject; `geofencesIds` is ATS-only, so other variants never send it and the backend keeps the asset's geofence links.
* Added asset operations: `Asset.fetchParameters` (`assetParameters`), `Asset.fetchSensorsLastUpdate` (`sensorsLastUpdate`), `Asset.fetchSensorImages` (`driveImagesFromSensors`, new `AssetSensorImage` model), `Asset.setSensorValue` (`setAssetSensorValue`), `Asset.convertSensorToGlobal` (`convertSensorToGlobalSensor`), `Asset.linkGlobalSensor` (`linkAssetToGlobalSensor`) and `Asset.loginAsSeller` (Mappit). ATS API only: `Asset.recalculateEntities`, `Asset.downloadAtsUploadFormat` (`downloadAssetsFormat`), `Asset.uploadAtsFromFile` (`uploadAssetsFromFile`) and `Asset.uploadAtsExitsFromFile` (`uploadExitsFile`), with `Asset.parseUploadResponse`.
* Added manual trigger callers to the `triggers` module: `Trigger.fetchManualFromAsset` (`findManualTriggersFromAsset`, lightweight fields plus `manualActionFields`), `Trigger.fetchManualAssets` (`findAssetsFromManualTrigger`, assets `id name`) and `Trigger.registerManualActivation` (`registerManualTriggerActivation`, answers as `Json`, returns `StandardResponse<void>` with the field errors).
* Added ATS monitor callers: `AtsMonitor.fetchAll` (`monitors`, optional `appId`/`id`), `AtsMonitor.deleteMany` (`deleteMonitors`) and `AtsMonitorInput.save` (`addMonitor`/`editMonitor`), plus the monitor card list callers `AtsPurchaseOrder.fetchAll` (`purchaseOrders`), `AtsEntry.fetchAll` (`entries`), `AtsExit.fetchAll` (`exits`), `AtsExecuteExitHistory.fetchAll` (`exitExecutions`, `fromAssetIds`) and `AtsRecalculation.fetchAll` (`recalculations`, `assetsIds`), each filtered by assets and dates with a `fields` selection plus `extraFields`. Added the `AtsRecalculation` model.

## 4.19.0

### Python

* No changes in this release.

### Dart

* Added trigger API callers to the `triggers` module: `Trigger.fetchAll` (lightweight `id name code kind isPaused` plus `extraFields`), `Trigger.fetch` (full record with `access`), `TriggerInput.save`, `Trigger.deleteMany`, `Trigger.toggle` (`toggleTriggerState`) and `TriggerActivation.fetchLast10` (`last10TriggerActivations`). Added `Trigger.fragment` and the `TriggerVariant` enum (`standard`, `mappit`).
* Added inbound service API callers: `InboundService.fetchAll` (lightweight `fragment` plus `extraFields`), `fetch` (`detailedFragment`), `toggle`, `generateManual` and `deleteMany`; `InboundServiceInput.save` (add/edit) and `InboundServiceInput.fromInboundService`. `InboundServiceInput.fromJson` deep-copies `credentials`.
* `InboundStructure` defaults `hasPosition`/`hasPayload` to `false` and `payload` to `[]`, so a `null` or missing value from the backend decodes.
* Added outbound service API callers: `OutboundService.fetchAll`, `fetch`, `deleteMany`, `toggle`, `importIntoApp` and `generateManual`, plus `OutboundService.fragment` and `structureMaxDepth`. Added `OutboundServiceInput` (`save`, `fromService`, `copy`), `OutboundStructureInput` (`fromStructure`) and the `AtsStreamExitStructureType` enum.
* Added the `report_job` module: `ReportJob.run`, `ReportJob.poll` and `ReportJobPollResult`.
* Added ATS authentication card operations: `AtsAuthenticationCard.fetchAll`, `fetch`, `assignToUser`, `assignByRangeToUser`, `unassignMany`, `unsuspendMany` and `uploadFromFile` (with `parseUploadResponse`, `uploadErrorRows` and `uploadRowErrorsKey`), and `AtsHistoryAuthenticationCard.fetchCommandResult`. Added `AtsAssignCardsResult` and `AtsCommandResult`.
* Added NS Tecnologia licenses: `AtsNsLicense` (`fetchAll`, `fetch`, `deleteMany`), `AtsNsLicenseInput.save`, `AtsNsAddress`/`AtsNsAddressInput`, the `AtsNsStatus`/`AtsNsProjectId`/`AtsIcmsType` enums and the `AtsNsCountryState`/`AtsNsCity` catalogs with `fetchAll`.
* Added `RegisteredAppInput`, `AppWithoutCustomizationInput` and `AppInstanceInput` with `save` (`editApp`/`registerAppWithCustomization`, `registerAppWithoutCustomization`, `requestInstance`), returning field errors. Added `AppLegalInput.fromLegal`, `AppDesignInput.fromDesign`, `kAppDefaultColor` and `kAppDefaultFontName`.
* Added `OperationInput.saveWithResponse`, which returns `StandardResponse<Operation>` with the field errors of a rejected save, and `OperationInput.fromOperation`, which keeps the external account that `Operation` serializes as `accountId`. `OperationInput.save` is deprecated in favor of `saveWithResponse`.
* `RegisteredApp.fetchAll` now selects `isCustomized`, `technology` and `legalInformation`, and accepts `extraFields`.
* The remaining ATS models moved from `layrz_models`: authentication identifiers, bookings, events, feedback messages, exits, entries, manifest and CACL inputs, monitors, SIL trailers and unloading orders, stock closings, and their enums and converters. Names, fields and JSON shape are unchanged.
* Added `AtsNsStatusOrNullConverter`.
* Added `AtsStreamExitStructureType.isCustom`; `AtsStreamExitStructureType.fromJson` falls back to `constant` for unknown values.
* Added `OutboundServiceInput.token`, serialized only when set.
* Added `ExternalResource` (`fetchAll`), `ExternalGeofence` (`fetchAll`, `import` returning `StandardResponse<void>` with the field errors) and `ReverseGeocode.fetchAddresses` to the `geofences` module, moved from `layrz_models`.

## 4.18.0

### Python

* No changes in this release.

### Dart

* Fixed `LayrzChart.delete`, which called a non-existent `deleteChart` mutation. It now calls `deleteCharts` with the chart ID, like `LayrzChart.deleteMultiple`. The public signature is unchanged.
* Added `ChartDataSource.coreProcesses` (`CORE_PROCESSES`), including its `pythonSource` mapping. `ChartDataSource.lastMessages` is kept for compatibility.

### Go

* No changes in this release.

## 4.17.0

### Python

* No changes in this release.

### Dart

* Added sensor API callers to the `sensors` module: `Sensor.fetchAll`, `Sensor.fetch` and `Sensor.deleteMultiple` for global sensors (or nested ones with `isGlobal: false`), and `SensorInput.save` to create or update global or nested sensors. Added `Sensor.fragment`.
* Added `SensorSubType.v8`.
* Added the `scripting` module with the `Scripting` callers `lintLcl`, `lintPython`, `runLcl` and `runPython`, the `LintError` model and the `PythonScope` and `PythonSource` enums.

### Go

* No changes in this release.

## 4.16.0

### Python

* No changes in this release.

### Dart

* Added tag operations to the `tag` module: `TagVariant` (standard, Mappit), `Tag.fetch` (detail with resolved associations), `Tag.deleteMany` and `TagInput` with `save` and `TagInput.fromTag`. `Tag.fetchAll` keeps its lightweight selection, accepts a `variant` and `extraFields`.
* Added `emailTemplatesIds` and `authenticationCardsIds` to `Tag`.

### Go

* No changes in this release.

## 4.15.0

### Python

* No changes in this release.

### Dart

* Added the ATS models that `layrz_models` used to provide to the `ats` module, with the same shape and JSON contracts: entries, exits (`AtsExecuteExitInput`), operations, loading orders, purchase orders, receptions (with their products, company and loading-parameter forms), manifests, CACL entities, command execution history, transport information, SIL unloading order input, and their enums and JSON converters.
* Added the `guide` module with the `Guide` video guide model.

### Go

* No changes in this release.

## 4.14.0

### Python

* No changes in this release.

### Dart

* Added `ExternalAccount.ownerId` and `ExternalAccount.sourceName`, both selected by `ExternalAccount.gqlFragment`.
* `ExternalAccount.gqlFragment` now selects the source `requiredFields` through `CredentialField.fragment` (including `seq` and `extensions`) and uses `Access.idFragment`.
* Added `ExternalSource.fragment` and `ExternalSource.fetchAll` to the `external` module.
* Added `WialonAccount` with `fragment` and `fetchAll`.
* Added `WialonAccountsInput` with `import`, to import Wialon accounts into Layrz.

### Go

* No changes in this release.

## 4.13.0

### Python

* No changes in this release.

### Dart

* **Breaking:** `FtpAccount.port` is now `String?`, matching the `FTPCredential` schema (it was an `int?`, which made the decode of any function with FTP credentials fail against the live API).
* Added `LayrzFunction.ownerId` and `LayrzFunction.isEnabled`, both selected by `LayrzFunction.fragment`.
* **Breaking:** `LayrzFunctionInput.maximumTime` and `LayrzFunctionInput.minutesDelta` are now nullable `double?` without a default (they only apply to specific algorithms).
* Added `LayrzFunctionInput.minimumLevel` (`ats.fuel.entry` algorithm).
* Added `CredentialField.seq` and `CredentialField.extensions`, both selected by `CredentialField.fragment`.

### Go

* No changes in this release.

## 4.12.0

### Python

* No changes in this release.

### Dart

* Added `LayrzFunction.fragment`, `LayrzFunction.fetchAll`, `LayrzFunction.fetch`, `LayrzFunction.deleteMultiple` and `LayrzFunction.importIntoApp` to the `function` module.
* Added `LayrzFunctionInput` with `save` to the `function` module.

### Go

* No changes in this release.

## 4.11.0

### Python

* No changes in this release.

### Dart

* Added the `AtsReceptionInput` and `AtsReceptionProductInput` input models to the `ats` module.
* Added `AtsReceptionType` (`PA`, `TERMINAL`, `THIRD_PARTY`, `TRANSFER`, with `UNKNOWN` as read-only fallback) with its converters, and the `receptionType` field in `AtsReceptionInput`.
* Added `AtsFromApp` with `AtsFromAppOrNullConverter` to the `ats` module.

### Go

* No changes in this release.

## 4.10.1

### Python

* `RawBroadcastResult` now accepts `BADREQUEST` as an alias of `BroadcastStatus.BAD_REQUEST`.
* The invalid status error message of `RawBroadcastResult` now lists every valid `BroadcastStatus` value.

### Dart

* No changes in this release.

### Go

* No changes in this release.

## 4.10.0

### Python

* No changes in this release.

### Dart

* Added the `growth` module with the home metrics models `GrowthSummary`, `GrowthItem`, `DailyGrowthItem`, `AccountGrowth` and `TopAccount`, each with its `fragment`.
* Added GraphQL API callers: `GrowthSummary.fetch` (`homeMetrics`), `DailyGrowthItem.fetchAll` (`userGrowth`, by user and date range) and `AccountGrowth.fetchAll` (`growthPerAccount`, by date range; heavy on the server, meant to be called on demand).
* Added `MonthConverter` and `MonthOrNullConverter` for `YYYY-MM` month strings, and the `DateTime.toMonth()` extension.

### Go

* No changes in this release.

## 4.9.0

### Python

* No changes in this release.

### Dart

* Added GraphQL API callers for the i18n models: `Language.fetchAll`, `I18nKey.fetchAll` (optionally filtered by `ids`), `I18nKey.fetch`, `I18nKeyInput.save` (`saveI18nKey`), `I18nKeyInput.saveAll` (`saveI18nKeys`) and `I18nKeyHistory.fetchAll` (`requestI18nKeyHistory`).
* Added `Language.fragment`, `I18nKey.fragment` and `I18nKeyHistory.fragment`. The employee fields of `createdBy`, `updatedBy` and `performedBy` are selected inline instead of through `Employee.reducedFragment`, because the API does not resolve the nested `avatarFragment` for these queries.

### Go

* No changes in this release.

## 4.8.2

### Python

* No changes in this release.

### Dart

* No changes in this release. Version bump only, to retry the release pipeline after `v4.8.0` and `v4.8.1` failed to publish.

### Go

* No changes in this release.

## 4.8.1

### Python

* No changes in this release.

### Dart

* Added the `reports` library (`ReportScheduler`, `ReportSchedulerInput` and the `RelativeChoices` enum), covering the report-scheduling models that previously lived only in `layrz_models`, now moved into `layrz_sdk` and re-exported from `layrz_models` for backwards compatibility.
* The report preview models (`ReportPreview`, `ReportPage`, `ReportRow`, `ReportHeader`, `ReportCell` and `ReportDataType`) that moved to `layrz_sdk` in 4.7.0 are now joined by the rest of the report entities, so the report template feature set no longer needs `layrz_models` at all when used alongside `layrz_sdk`.
* `ReportTemplateSourceConverter`, `ReportTemplateAlgorithmConverter`, `ReportDataTypeConverter` and `ReportDataTypeOrNullConverter` are included for legacy payload compatibility and marked `@Deprecated` in favor of the native `json_serializable` / `@JsonEnum` converters.

### Go

* No changes in this release.

## 4.8.0

### Python

* No changes in this release.

### Dart

* `Asset` gains `assetsInStorageTerminal` and `assetsInStorageTerminalIds`, the inverse relation of `linkedStorageTerminals` / `linkedStorageTerminalsIds`, listing the assets that selected this asset as a storage terminal.

### Go

* No changes in this release.

## 4.7.1

### Python

* `Report.filename` now sanitizes the report name to ensure compatibility with all filesystems, preventing export failures from invalid characters in report names.

### Dart

* No changes in this release.

### Go

* No changes in this release.

## 4.7.0

### Python

* `ReportPage` now supports multi-row (grouped) headers through a new `header_rows` field, which takes the header rows top to bottom and uses the new `ReportHeader.colspan` / `ReportHeader.rowspan` fields to build groups. `headers` keeps its type and its meaning: when `header_rows` is set it is filled with the bottom-most header of each column, so `len(page.headers)` is still the column count and `page.headers[j]` still lines up with `row.content[j]`.
* Added `ReportPage.from_header_matrix`, which builds a grouped page from a column-major matrix of shape `(columns, levels)` — one top-to-bottom label stack per column. Neighbouring labels merge into a shared group only when every label above them merges too, so two unrelated groups that share a leaf label (`[['In', 'Total'], ['Out', 'Total']]`) stay apart.
* Added `ReportPage.resolved_header_rows`, `ReportPage.header_depth` and `ReportPage.column_count`, plus the `HeaderCell`, `layout_header_grid`, `leaf_headers` and `collapse_header_matrix` helpers, for consumers that render headers themselves (including `CustomReportPage` builders).
* An invalid header grid — overlapping headers, a hole, or a `rowspan` deeper than the header block — now raises when the `ReportPage` is constructed, instead of corrupting the workbook part-way through an export.
* The Excel export writes the whole header block, merging grouped cells, and offsets data rows below it. `freeze_header` now freezes every header row rather than exactly one. Reports with a single header row export exactly as before, and a page with no headers still leaves the first sheet row blank.
* The JSON export gains a `header_rows` key carrying each header's `colspan` / `rowspan`, emitted only for pages that use grouping. The existing `headers` key is unchanged: one entry per column, holding the bottom-most header of each.
* `ReportHeader` gains `colspan` and `rowspan`, both defaulting to `1`, so `model_dump()` output includes two new keys.

### Dart

* `ReportHeader` (report preview) gains `colspan` and `rowspan`, both defaulting to `1`, so an existing single-row header parses and renders as before.
* `ReportPage` (report preview) gains `headerRows`, the multi-row header definition, plus the `headerDepth` and `resolvedHeaderRows` getters matching the Python API. `headers` keeps its meaning of one entry per column, and a page with a single header row leaves `headerRows` empty, so existing payloads are unaffected. Note that the Python exporter emits snake_case keys (`header_rows`) while these models read camelCase; translating between the two happens outside this repository.

### Go

* No changes in this release.

## 4.6.4

### Dart

- Added `commandResultAdd` (`COMMAND_RESULT_ADD`) and `commandResultDel` (`COMMAND_RESULT_DEL`) to `AtsHistoryAuthenticationCardOperation`, fixing authentication card history rows falling back to `unknown` for those operations (bug 135).

### Go

* No changes in this release.

### Python

* No changes in this release.

## 4.6.3

### Dart

- Added `atsMergeOperations` (`ATS_MERGE_OPERATIONS`) to `ReferenceCategory`, gating the manual operation merge/revert actions.

### Go

* No changes in this release.

### Python

* No changes in this release.

## 4.6.2

### Dart

- Ported remaining BLE modules (`service`, `characteristic`, and `property`) into the SDK.

### Go

* No changes in this release.

### Python

* No changes in this release.

## 4.6.1

Version-sync release. Republishes the shared version line so pub.dev and PyPI match; no library code changes. Repairs the tag-cleanup CI job. See 4.6.0 for the functional Dart changes (which shipped to pub.dev but not PyPI under 4.6.0).

### Dart

* No changes since 4.6.0 (version bump only, to keep pub.dev in sync with the shared version line).

### Python

* No code changes; version bumped to 4.6.1 so the PyPI release matches the shared version line (the 4.6.0 PyPI publish failed on a stale version).

### Go

* No changes in this release.

## 4.6.0

### Dart

* Add `Tag.fetchAll` and `VisionProfile.fetchAll` static callers (with lightweight `fragment`s), so consumers can list tags and vision profiles.
* `GqlField` now emits a spread fragment together with inline fields in the same selection set (previously inline fields silently dropped the fragment).
* `Tag.fetchAll` now also selects the associated-element ID lists (e.g. `assetsIds`, `devicesIds`, `usersIds`, `functionsIds`, and the rest of the schema-present `*Ids` fields) for per-tag element counts.
* `Device.fetchAll` now selects the device's last-known `telemetry` (via `DeviceTelemetry.fragment`), so list/table connection indicators have data to render without a separate realtime feed.
* `InboundProtocol`'s fetch fragment now selects `models` (via `Model.reducedFragment`), so fetched protocols carry their models inline (used by protocol-to-model selectors).
* `InboundProtocol.fetchAll` now also selects `hasNativeCommands`, `hasSmsCommands`, and `hasModbus` so consumers can gate command UI on protocol capability without a full fragment fetch.

### Python

* No changes in this release.

### Go

* No changes in this release.

## 4.5.5+1

### Dart

* Move `LayrzNotification` into a new `notifications` module (pure-data model; previously in `layrz_models`).

## 4.5.5

### Python

* Fix `OrderCategories.SALE_FROM_THIRD_PARTY_DELIVERY_BY_SELLER` spelling to `SALE_FROM_THIRD_PARTY_DELIVERED_BY_SELLER`.

### Go

* Fix `OrderCategoriesSaleFromThirdPartyDeliveryBySeller` spelling to `OrderCategoriesSaleFromThirdPartyDeliveredBySeller`, keeping parity with the Python entities.

### Dart

* No changes in this release.

## 4.5.4

### Python

* Move ATS entities into an `ats/` subpackage.
* Add `TERMINAL_ENTRY`, `TERMINAL_EXIT`, `REDISPATCHED`, `MDFE_CONSOLIDATED`, and `CTE_OPERATION_MERGED` to `OrderStatus`, and `SALE_FROM_THIRD_PARTY_TANK`, `SALE_FROM_THIRD_PARTY_DELIVERY_BY_SELLER`, and `REMITTANCE_SALE` to `OrderCategories`.

### Go

* Rename ATS-related enum files with an `ats_` prefix (`ats_delivery_categories.go`, `ats_order_categories.go`, `ats_order_status.go`).
* Add `OrderStatusTerminalEntry`, `OrderStatusTerminalExit`, `OrderStatusRedispatched`, `OrderStatusMdfeConsolidated`, and `OrderStatusCteOperationMerged` to `OrderStatus`, and `OrderCategoriesSaleFromThirdPartyTank`, `OrderCategoriesSaleFromThirdPartyDeliveryBySeller`, and `OrderCategoriesRemittanceSale` to `OrderCategories`, keeping parity with the Python entities.

### Dart

* No changes in this release.

## 4.5.3+1

### Dart

* Make `EmployeeInput.customPermissions` nullable (`GenericPermissionInput?`), so building an `EmployeeInput` from an `Employee` that has no custom permissions no longer throws a null-cast error in `EmployeeInput.fromJson`.
* Include `customPermissions` in the `Employee` detail fragment, and switch `Employee.fetchAll` to the reduced fragment so the list query fetches only the minimum and `Employee.fetch` returns the full record.

## 4.5.3

### Dart

* Add API connectors to the `Employee` module: `Employee.fetchAll`/`Employee.fetch` (`goldenmEmployees`), `EmployeeInput.save` (`addGoldenmEmployee`/`editGoldenmEmployee`, input type `GoldenmEmployeeInput`), `Employee.deleteMany` (`deleteGoldenmEmployees`), and `Employee.resetPassword` (`resetGoldenmEmployeePassword`), so employees can be listed and saved through the SDK. Authentication is header-only.

## 4.5.2+2

### Dart

* Corrected issues with `Department` and `DepartmentInput` api connector

### Python

* No changes in this release.

### Go

* No changes in this release.

## 4.5.2+1

### Dart

* Fixed `AccessInput.save`/`delete`, the `Token` queries/mutations (`tokens`, `expireToken`, `createToken`), and `ChartInput.save` to stop sending `apiToken` as a GraphQL variable/argument; authentication is carried solely via the connector's `Authorization` header.

## 4.5.2

> Note: `4.5.1` was skipped. Its Dart package published to pub.dev, but the release run failed before the Python package was uploaded, so this version supersedes it across all three languages.

### Dart

* Restore the `deprecateInstance`, `migrateInstance`, and `requestInstance` static methods on `AppInstance`, which were dropped during the `layrz_models` migration; each performs its GraphQL mutation and returns `true` on `ApiStatus.ok`.
* Add an optional `second` field to `TimeOfDay` (defaults to `0`); `TimeOfDay.fromDateTime` now preserves `dateTime.second`, and the JSON serialization round-trips it.
* Select `planId` in the remaining `User` fragment variant that was still missing it.
* Restore the pre-migration `Action` surface for backwards compatibility with `layrz_models`: `Action.fetch` is an instance method again (with `withDetails`), `ActionInput.save` returns `Future<ApiResponse<Action, Map<String, dynamic>>?>`, `ActionVariant` regains its public `queryName`/`addMutationName`/`editMutationName`/`deleteMutationName` getters, and `Action.gqlFragment` is restored.
* Restore the pre-migration `MapLayer` surface: `MapLayerInput.save` returns `Future<ApiResponse<MapLayer, Map<String, dynamic>>?>` again, and `MapLayer.gqlFragment` is restored as an alias of `fragment`.
* Restore the `SensorTypeConverter`, `SensorTypeOrNullConverter`, `SensorSubTypeConverter`, and `SensorSubTypeOrNullConverter` classes, which were dropped during the `layrz_models` migration.

### Python

* No changes in this release.

### Go

* No changes in this release.

## 4.5.0+9

### Dart

* Add `MapLayerInput` with a `save` method (`addMapLayer`/`editMapLayer`) to the map module, so map layers can be created and edited through the SDK.
* Add the `BleDevice`, `BleManufacturerData`, and `BleServiceData` models to a new `ble` module (moved from `layrz_models`).
* Add `fetch`, `fetchAll`, and `save` methods to `Department`/`DepartmentInput` (`addDepartment`/`editDepartment`), so departments can be listed and saved through the SDK.
* Select `mfaEnabled`, `hasPaymentWarning`, `isLocked`, `isSuspended`, `planId`, and `billingPlan` in the full `User` fragment so `User.fetch` returns the account-state fields (previously only `fetchAll` did).

### Python

* No changes in this release.

### Go

* No changes in this release.

## 4.5.0+8

### Dart

* Make `internalIdentifier` optional on `AvailableApp.fetchAll`/`fetch` when `isGoldenm` is true (the `internalAvailableApps` query does not require it); it is now an optional filter rather than a required argument.

### Python

* No changes in this release.

### Go

* No changes in this release.

## 4.5.0+7

### Dart
* Add an `isGoldenm` flag to `AvailableApp.fetchAll`/`fetch` that queries `internalAvailableApps` (with a caller-supplied `internalIdentifier`) and populates `versions` and `implementations`.
* Add the `InternalRegisteredApp` and `InternalAppInstance` models and an `AppVersion` fragment; retype `AvailableApp.implementations` to `List<InternalRegisteredApp>`.

### Python
* No changes in this release.

### Go
* No changes in this release.

## 4.5.0+6

### Dart
* Fix the `ModelInput` create and edit mutations to pass the required `data` argument (`addModel`/`editModel` were missing `args: {'data': 'data'}`, so saving a `Model` failed with a GraphQL "argument data is required" error).

### Python
* No changes in this release.

### Go
* No changes in this release.

## 4.5.0+5

### Dart
* Fetch the nested `protocol` object in the `Model` fragment so `model.protocol` is populated on `fetchAll` (id, name, color, isEnabled, operationMode, confiotCapable, dynamicIcon).

### Python
* No changes in this release.

### Go
* No changes in this release.

## 4.5.0+4

### Dart
* Removed the `mqttTopic` and `isAsync` fields from `OutboundProtocol` and its GraphQL fragment; these fields are not exported by the API and caused "Cannot query field" errors on `OutboundProtocol.fetch`/`fetchAll`.

### Python
* No changes in this release.

### Go
* No changes in this release.

## 4.5.0+3

### Dart
* Added the `flespi` module (`FlespiProtocol`, `FlespiChannel`, `FlespiModel`) with `fetchAll`/`fromFlespi` GraphQL callers, moved from `layrz_models`.
* Added `ModelInput` and `ZigbeeParameterInput` to the `model` module, moved from `layrz_models`.
* Added `CommandDefinitionInput` and `CommandPayloadDefinitionInput` to the `commands` module, moved from `layrz_models`.
* Added `ConfigGroupingInput` and `ConfigDefinitionInput` to the `inbound` module, moved from `layrz_models`.
* Added `ConfIoTFile` and `ConfIoTNamespace` (with supporting converters) to the `inbound` module, moved from `layrz_models`.
* Added the report preview types (`ReportPreview`, `ReportPage`, `ReportRow`, `ReportHeader`, `ReportCell`, `ReportDataType`) to the `report_template` module, moved from `layrz_models`.
* All moved types were relocated so Flutter components can drop their `layrz_models` dependency.

### Python
* No changes in this release.

### Go
* No changes in this release.

## 4.5.0+2

### Dart
* Added the `VisionProtocol` write path: `VisionProtocolInput.save` (with `addVisionProtocol`/`editVisionProtocol` GraphQL callers) plus `VisionProtocol.fragment`, `VisionProtocol.fetchAll` and `VisionProtocol.fetch`.
* Added the `account_launcher` module with `GeneratorTemplateInput` and `BusTemplateInput`.

### Python
* No changes in this release.

### Go
* No changes in this release.

## 4.5.0+1

### Dart
* Added `ExchangeProtocolInput.save` for the exchange protocol module, with `addExchangeProtocol`/`editExchangeProtocol` GraphQL callers.
* Added `OutboundProtocolInput.save` for the outbound protocol module, with `addOutboundProtocol`/`editOutboundProtocol` GraphQL callers.
* Added `AlgorithmInput.save` for the function module, with `addAlgorithm`/`editAlgorithm` GraphQL callers.
* Added `SimulationCycleInput.save` for the simulation module, with `addSimulationCycle`/`editSimulationCycle` GraphQL callers.
* Added `InboundProtocolInput.save` for the inbound module, with `addInboundProtocol`/`editInboundProtocol` GraphQL callers.
* Added `AvailableApp.fetch` and `AvailableAppInput.save` GraphQL callers alongside the existing `AvailableApp.fetchAll`.
* All added callers preserve the established `onResponse` callback conventions of their module, and none of the new input types introduce a Material or Cupertino dependency.

### Python
* No changes in this release.

### Go
* No changes in this release.

## 4.5.0

### Dart
* Moved the `RegisteredApp`, `Tag`, and `CustomReport` model graphs from `layrz_models` into `layrz_sdk`, including their transitive closure: `User`, `Asset`, `Device`, `Workspace`, `Trigger`, `Action`, `Operation`, `Sensor`, `Geofence`, `Checkpoint`, `CareProtocol`, `CareTask`, `InboundService`, `OutboundService`, `MapLayer`, `Access`, `Reference`, `CustomField`, `ExternalAccount`, `ReportTemplate`, `Preset`, `LayrzFunction`, `ExchangeService`, and their supporting models, enums, inputs, and GraphQL callers.
* Added `LinkShortcut` model and `LinkShortcutInput` with GraphQL callers (`fetchAll`, `fetch`, `LinkShortcutInput.save`, `delete`) for managing link shortcuts (short redirecting URLs), moved from `layrz_models`.
* Added the `latlong2` dependency and bumped `flutter_mdi_remap` to `^1.0.1`, required by the moved models.
* All moved code preserves its existing API surface and `onResponse` callback signatures; no Material or Cupertino imports were introduced.

### Python
* No changes in this release.

### Go
* No changes in this release.

## 4.4.8+3

### Dart
* Moved the `Model` / `HwModel` / `InboundProtocol` type graph (`Model`, `HwModel`, `HwModelInput`, `InboundProtocol`, and their supporting command/config/credential-field/flespi/webhook/simulation/zigbee/firmware types) from `layrz_models` into `layrz_sdk`, all exported from `package:layrz_sdk/layrz_sdk.dart`.
* Added `HwModel.fetch` and `HwModelInput.save` API callers, alongside the existing `HwModel.fetchAll`.
* `HwModel.fragment` now fetches nested models: `HwModel.models` is `List<Model>` (the full device model type), and the fragment selects each model's reduced field set.

### Python
* No changes in this release.

### Go
* No changes in this release.

## 4.4.8+2

### Dart
* Category caller `onResponse` callbacks (`fetchAll`, `fetch`, `CategoryInput.save`) now receive an `ApiStatus` value directly instead of a JSON string.

### Python
* No changes in this release.

### Go
* No changes in this release.

## 4.4.8+1

### Dart
* Category callers (`fetchAll`, `fetch`, `CategoryInput.save`) no longer send `apiToken` as a GraphQL argument, the token is carried only via the connector's `Authorization` header.

### Python
* No changes in this release.

### Go
* No changes in this release.

## 4.4.8

### Dart
* Fixed freezed code generation to emit valid collection constructor parameters (disabled make_collections_unmodifiable), so generated code compiles under a real build.

### Python
* Added a `validated_at` field to `AtsOperation` and `AtsPurchaseOrder`.

### Go
* No changes in this release.

## 4.4.7

### Dart
* Added the `category` module: the `Category` model (`id`, `name`, `kind`, `assetKind`), the `CategoryKind` and `AssetKind` enums, and the mutable `CategoryInput` DTO, all exported from `package:layrz_sdk/layrz_sdk.dart`.
* `Category` exposes `fetchAll`/`fetch` API callers and `CategoryInput` exposes a `save` method for creating or updating categories against the Layrz GraphQL API.
* Added the RealtimeMessage model (moved from layrz_models): a plain data envelope for realtime/websocket messages, with `topic` and `payload` fields, exported from `package:layrz_sdk/layrz_sdk.dart`.

### Python
* No changes made to the Python module in this release.

### Go
* No changes made to the Go module in this release.

## 4.4.6

### Dart
* Replaced the remap icon registry with a new `flutter_mdi_remap` package, which is now a dependency of this package.

### Python
* No changes made to the Python module in this release.

### Go
* No changes made to the Go module in this release.

## 4.4.5

### Dart
* Added `iconData` as a getter to `MdiRemapIcon`.

### Python
* No changes made to the Python module in this release.

### Go
* No changes made to the Go module in this release.

## 4.4.4
### Dart
* Removed the `layrz_icons` dependency; icons are now generated directly from `flutter_material_design_icons`.
* Added `MdiRemapIcon`, exposing each icon's `name`, searchable `tags` and `data`.
* Added the `MdiRemapIconsClasses` registry and the `iconMapping` name lookup, covering 7447 Material Design Icons.
* Icon `tags` are now available for search and categorisation, which `layrz_icons` did not provide.
* **Breaking:** `LayrzIcon`, `LayrzIcons` and `LayrzIconsClasses` are replaced by `MdiRemapIcon` and `MdiRemapIconsClasses`.
* **Breaking:** `solar-*` and `fa-*` icon names no longer resolve. Unknown names now fall back to `mdi-help-circle-outline`, previously `solar-outline-question-square`.
* Apps consuming this package must build with `--no-tree-shake-icons`.

### Python
* No changes made to the Python module in this release.

### Go
* No changes made to the Go module in this release.

## 4.4.3

- Fixes on CI that prevented the rollout

## 4.4.2

### Dart

* Ported 13 modules from `layrz_models`: `a11y`, `api`, `app`, `avatar`, `converters`, `department`, `employee`, `i18n`, `mfa`, `permissions`, `time_of_day`, `token`, `utils` — all exported from `package:layrz_sdk/layrz_sdk.dart`.
* Includes key types: `LayrzConnector`, `ApiResponse`, `ApiStatus`, GraphQL builders (`Gql`, `GqlQuery`, `GqlMutation`, `GqlSubscription`, `GqlField`, `GqlFragment`, `GqlUnion`, `GqlVariable`), `UserPreferences`, `ColorblindMode`, `Employee`, `Token`, and more.
* Framework-independent `TimeOfDay` class — JSON-serializable and intentionally shadows Flutter's `TimeOfDay`.
* Full dartdoc documentation across all public declarations.
* Added comprehensive test suite: 797 tests with 99.73% line coverage; new `make test` and `make coverage` targets in `dart/Makefile`.

### Python

* No changes made to the Python module in this release.

### Go

* No changes made to the Go module in this release.

## 4.4.1

- Fixed `BroadcastStatus.BAD_REQUEST` (Go and Python) value to `BAD_REQUEST`, matching the platform's actual API response (was incorrectly `BADREQUEST`).
- Added validation to `BroadcastResult.status` (Python) that accepts the legacy `BADREQUEST` string and coerces it to `BAD_REQUEST`.
- Initial version on Dart implementation

## 4.4.0

- Added `PUSH_NOTIFICATION` value to `OperationType` for Layrz Push (Firebase) operations.
- Added `push_service_account` (`pushServiceAccount`), `push_devices` (`pushDevices`), and `push_app_id` (`pushAppId`) fields to `OperationPayload` carrying decrypted FCM credentials, bound device UUIDs, and the owning RegisteredApp ID.
- Go module now provides the shared `OperationPayload` and `OperationType` Kafka wire-contract entities used across Python and Go consumers.

## 4.3.16

- Fixed `BroadcastStatus.INTERNAL_ERROR` (Go and Python) value to `INTERNALERROR`, matching the platform's actual API response.
- Added validation to `BroadcastResult.status` and `RawBroadcastResult.status` (Python) that accepts the legacy `INTERNAL_ERROR` string and coerces it to `INTERNALERROR`.

## 4.3.15

- Added `ActionKind.ZIGBEE_CHANGE` (Python) for actions that send a command to a Zigbee device.
- Added `zigbee_device_id` and `zigbee_settings` fields to the `Action` entity (Python), carrying the bound connectivity Device ID and the `{device_id, settings: [{key, value}]}` payload for ZIGBEE_CHANGE actions.

## 4.3.14

- Added `AuthenticatedAsset` entity (Python and Go) with `pk`/`id` and `name` fields.
- Added `authenticated_users` (list of `User`) and `authenticated_assets` (list of `AuthenticatedAsset`) fields to the `Asset` entity in both Python and Go, defaulting to an empty list.

## 4.3.11

- Fixed `types.UnixTime` JSON unmarshaling to also accept ISO 8601 datetime strings (e.g. `"2026-05-06T03:24:51.099415Z"`); `MarshalJSON` always emits a float regardless of input format.

## 4.3.10

- Fixed `types.UnixTime` JSON unmarshaling to accept string-encoded timestamps (e.g. `"1746518400.123"`) in addition to bare numbers, preventing message drops in Go consumers when producers emit quoted floats.

## 4.3.9

- Fixed `DeviceMessage.Id` JSON tag: removed `omitempty` so null id serializes as `"id": null` matching Python.
- Fixed `DeviceMessage` and `AssetMessage` nil maps/slices to serialize as `{}`/`[]` instead of `null` (matching Python `default_factory=dict/list`).
- Fixed `DeviceMessageFromMap` to read `"timestamp"` key for received-at (was incorrectly reading `"received_at"`), with fallback to current time when missing.
- Added `RejectedKeys` filtering in `DeviceMessageFromMap` — keys like `ident`, `protocol.id`, `device.id`, `server.timestamp` are now excluded from payload, matching Python's `REJECTED_KEYS` constant.
- Fixed `position.*` values in `DeviceMessageFromMap` to only accept numeric types (matching Python's `isinstance(value, (float, int))` guard).
- Fixed `AssetMessageFromDeviceMessage` to derive position from `asset.OperationMode`: `DISCONNECTED` → empty, `STATIC` → static position, `ZONE` → centroid of points, default → device position.
- Fixed `AssetMessageFromDeviceMessage` to prefix all payload keys with `"{ident}."` matching Python's `f'{device_message.ident}.{key}'`.
- Replaced haversine distance formula with Vincenty inverse on WGS-84 in `AssetMessage.ComputeDistanceTraveled`, matching `geopy.distance.geodesic` output.
- Added UUIDv7 validation on `DeviceMessage.Id` and `AssetMessage.Id` via custom `UnmarshalJSON`, matching Python's `pk` field validator.

## 4.3.8

- Fixed `BroadcastPayload.asset` to be required (non-optional) to match Python parity.
- Fixed `BroadcastPayload.message_id` type from `*int64` to `types.Uuid` to match Python `UUID` field.
- Fixed `BroadcastPayload.received_at` to be required (non-optional) to match Python parity.
- Fixed `BroadcastPayload.position`, `payload`, and `sensors` fields to always serialize (no `omitempty`) to match Python `default_factory=dict` behavior.
- Fixed `types.Uuid.MarshalJSON` to return a properly quoted JSON string instead of raw unquoted text bytes.
