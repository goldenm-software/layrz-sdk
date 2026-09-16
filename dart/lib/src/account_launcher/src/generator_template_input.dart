part of '../account_launcher.dart';

/// Mutable input for the "One Generator" account launcher template.
@unfreezed
abstract class GeneratorTemplateInput with _$GeneratorTemplateInput {
  /// Constructs a [GeneratorTemplateInput] with sensible defaults.
  factory GeneratorTemplateInput({
    /// The new user's full name. Used only when [isNewUser] is `true`.
    @Default('') String name,

    /// The new user's email. Used only when [isNewUser] is `true`.
    @Default('') String email,

    /// The new user's username. Used only when [isNewUser] is `true`.
    @Default('') String username,

    /// The id of the first inbound protocol to use as a cycle.
    String? cycle1,

    /// The id of the second inbound protocol to use as a cycle.
    String? cycle2,

    /// The id of the third inbound protocol to use as a cycle.
    String? cycle3,

    /// The language id for the launched account.
    @Default('2') String languageId,

    /// Whether to create a new user, as opposed to reusing [userId].
    @Default(true) bool isNewUser,

    /// The id of the existing user to launch into. Used only when
    /// [isNewUser] is `false`.
    String? userId,
  }) = _GeneratorTemplateInput;

  /// Deserializes a [GeneratorTemplateInput] from a JSON map.
  factory GeneratorTemplateInput.fromJson(Map<String, dynamic> json) =>
      _$GeneratorTemplateInputFromJson(json);
}
