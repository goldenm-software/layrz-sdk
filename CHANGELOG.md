# Changelog

## 4.4.1

- Fixed `BroadcastStatus.BAD_REQUEST` (Go and Python) value to `BAD_REQUEST`, matching the platform's actual API response (was incorrectly `BADREQUEST`).
- Added validation to `BroadcastResult.status` (Python) that accepts the legacy `BADREQUEST` string and coerces it to `BAD_REQUEST`.

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
