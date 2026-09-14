part of '../exchange.dart';

/// Immutable definition of a data-exchange protocol an [ExchangeService] can be driven by.
@freezed
abstract class ExchangeProtocol with _$ExchangeProtocol {
  /// Constructs an immutable [ExchangeProtocol].
  const factory ExchangeProtocol({
    /// Is the protocol ID, unique for each protocol.
    required String id,

    /// Is the name of the protocol. This name is a translation key, so check the translation
    /// messages to get the display name; the key is composed as `protocols.exchange.{name}`.
    required String name,

    /// Is the color assigned to the protocol.
    @ColorConverter() required Color color,

    /// Is the icon of the protocol, in its new schema.
    Avatar? dynamicIcon,

    /// Is the list of required fields for the protocol. Defaults to an empty list.
    @Default([]) List<CredentialField> requiredFields,

    /// Indicates if the protocol is enabled and available for use, or disabled and not
    /// available for use.
    required bool isEnabled,

    /// Indicates if the protocol requires a Flespi token to work.
    bool? requiresFlespiToken,

    /// Is the ACL for the Flespi token generation.
    List<FlespiAcl>? flespiAcl,

    /// Is the usage of the protocol. This field should only be used to show the popularity of
    /// the protocol, for marketing purposes.
    int? usage,

    /// Indicates if the protocol requires assets to work.
    bool? requiresAssets,

    /// Indicates if the protocol requires geofences to work.
    bool? requiresGeofences,
  }) = _ExchangeProtocol;

  /// Deserializes an [ExchangeProtocol] from a JSON map.
  factory ExchangeProtocol.fromJson(Map<String, dynamic> json) => _$ExchangeProtocolFromJson(json);
}
