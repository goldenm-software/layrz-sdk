# Changelog

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
