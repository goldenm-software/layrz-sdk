part of '../account_launcher.dart';

/// Mutable input for the "One Bus" account launcher template.
@unfreezed
abstract class BusTemplateInput with _$BusTemplateInput {
  /// Constructs a [BusTemplateInput] with sensible defaults.
  factory BusTemplateInput({
    /// The new user's full name. Used only when [isNewUser] is `true`.
    @Default('') String name,

    /// The new user's email. Used only when [isNewUser] is `true`.
    @Default('') String email,

    /// The new user's username. Used only when [isNewUser] is `true`.
    @Default('') String username,

    /// The language id for the launched account.
    @Default('2') String languageId,

    /// Whether to create a new user, as opposed to reusing [userId].
    @Default(true) bool isNewUser,

    /// The id of the existing user to launch into. Used only when
    /// [isNewUser] is `false`.
    String? userId,
  }) = _BusTemplateInput;

  /// Deserializes a [BusTemplateInput] from a JSON map.
  factory BusTemplateInput.fromJson(Map<String, dynamic> json) => _$BusTemplateInputFromJson(json);
}
