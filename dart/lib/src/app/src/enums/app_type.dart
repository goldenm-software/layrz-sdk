part of '../../app.dart';

/// The visibility scope of an [AvailableApp] in the Layrz app catalog.
@JsonEnum(alwaysCreate: true)
enum AppType {
  /// [public] apps are visible to every workspace.
  @JsonValue('PUBLIC')
  public,

  /// [private] apps are visible only to the workspace that owns them.
  @JsonValue('PRIVATE')
  private,

  /// [marketplace] apps are published for other workspaces to install.
  @JsonValue('MARKETPLACE')
  marketplace,
  ;

  @override
  String toString() => toJson();

  /// [toJson] returns the string representation of the enum value.
  String toJson() => _$AppTypeEnumMap[this] ?? 'PUBLIC';

  /// [fromJson] returns the enum value from a string representation.
  static AppType fromJson(String json) {
    final found = _$AppTypeEnumMap.entries.firstWhereOrNull(
      (e) => e.value == json,
    );
    return found?.key ?? AppType.public;
  }
}
