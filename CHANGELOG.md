# Changelog

## 4.7.0

### Python

* `ReportPage` now supports multi-row (grouped) headers through a new `header_rows` field, which takes a list of header rows and uses the new `ReportHeader.colspan` / `ReportHeader.rowspan` fields to build groups. `headers` keeps its type and meaning: when `header_rows` is set, it is filled with the bottom-most header of each column, so `len(page.headers)` is still the column count and `page.headers[j]` still lines up with `row.content[j]`.
* Added `ReportPage.from_header_matrix`, which builds a grouped page from a column-major matrix of shape `(columns, levels)` — one top-to-bottom label stack per column. Neighbouring labels merge into a shared group only when every label above them merges too, so two unrelated groups sharing a leaf label (`[['In', 'Total'], ['Out', 'Total']]`) stay apart.
* Added `ReportPage.resolved_header_rows`, `ReportPage.header_depth` and `ReportPage.column_count`, plus the `HeaderCell`, `layout_header_grid`, `leaf_headers` and `collapse_header_matrix` helpers for consumers that render headers themselves (including `CustomReportPage` builders).
* An invalid header grid (overlapping headers, a hole, or a `rowspan` deeper than the header block) now raises at `ReportPage` construction rather than corrupting the workbook mid-export.
* The Excel export writes the whole header block and offsets data rows below it. `freeze_header` now freezes every header row instead of exactly one. Reports with a single header row export exactly as before.
* The JSON export keeps `headers` unchanged and adds a sibling `header_rows` key carrying `colspan` / `rowspan`, only for pages that use grouping. Flat pages serialize exactly as before.
* `ReportHeader` gains `colspan` and `rowspan` (both default `1`), so `model_dump()` output includes two new keys.

### Dart

* No changes in this release.

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
