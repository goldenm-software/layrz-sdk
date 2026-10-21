part of '../scripting.dart';

/// A problem found while linting an LCL formula or a Python script.
///
/// An empty list of [LintError] returned by a lint caller means the code is valid.
@freezed
abstract class LintError with _$LintError {
  /// Constructs an immutable [LintError].
  const factory LintError({
    /// [code] defines the error code.
    required String code,

    /// [line] defines the line number where the error occurred. `1` means the first line or an unknown line.
    @Default(1) int line,

    /// [name] defines the name of the error.
    String? name,

    /// [expected] defines the dynamic value that was expected.
    dynamic expected,

    /// [received] defines the dynamic value that was received.
    dynamic received,
  }) = _LintError;

  /// Deserializes a [LintError] from a JSON map.
  factory LintError.fromJson(Map<String, dynamic> json) => _$LintErrorFromJson(json);
}
