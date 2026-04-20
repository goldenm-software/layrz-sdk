# Changelog

## 4.3.8

- Fixed `BroadcastPayload.asset` to be required (non-optional) to match Python parity.
- Fixed `BroadcastPayload.message_id` type from `*int64` to `types.Uuid` to match Python `UUID` field.
- Fixed `BroadcastPayload.received_at` to be required (non-optional) to match Python parity.
- Fixed `BroadcastPayload.position`, `payload`, and `sensors` fields to always serialize (no `omitempty`) to match Python `default_factory=dict` behavior.
- Fixed `types.Uuid.MarshalJSON` to return a properly quoted JSON string instead of raw unquoted text bytes.
