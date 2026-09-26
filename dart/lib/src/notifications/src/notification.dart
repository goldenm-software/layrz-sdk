part of '../notifications.dart';

/// The payload of an in-app notification shown to a user.
///
/// Carries a [title] and [message] (each optionally routed through the
/// Layrz Translation system via [titleTranslate]/[messageTranslate] and
/// their matching argument maps), the [sound] played when the notification
/// arrives, an optional [icon] and [color], an optional [uri] used when
/// [sound] is [SoundEffect.custom], and how long the notification should
/// remain visible via [duration].
///
/// This model is pure data: it does not resolve translations itself. Callers
/// that need the translated strings should read [title]/[message] together
/// with [titleTranslate]/[titleArgs] and [messageTranslate]/[messageArgs] and
/// apply their own translation lookup.
@freezed
abstract class LayrzNotification with _$LayrzNotification {
  const LayrzNotification._();

  /// Constructs an immutable [LayrzNotification].
  const factory LayrzNotification({
    /// [title] is the title of the notification.
    ///
    /// If you want to use the Layrz Translation system, please set the [titleTranslate] to enable it.
    required String title,

    /// [titleTranslate] is the key to use the Layrz Translation system for the title.
    @Default(false) bool titleTranslate,

    /// [titleArgs] is the list of arguments to use with the Layrz Translation system for the title.
    ///
    /// If [titleTranslate] is `false`, this field will be ignored.
    @Default({}) Map<String, dynamic> titleArgs,

    /// [message] is the body of the notification.
    ///
    /// If you want to use the Layrz Translation system, please set the [messageTranslate] to enable it.
    required String message,

    /// [messageTranslate] is the key to use the Layrz Translation system for the message.
    @Default(false) bool messageTranslate,

    /// [messageArgs] is the list of arguments to use with the Layrz Translation system for the message.
    ///
    /// If [messageTranslate] is `false`, this field will be ignored.
    @Default({}) Map<String, dynamic> messageArgs,

    /// [sound] is the sound effect to play when the notification arrives.
    @Default(SoundEffect.none) SoundEffect sound,

    /// [icon] is the icon to display with the notification.
    /// Due to `@Default()` constants requirements, the default value is `null`, but in practice,
    /// it will be `LayrzIcons.solarOutlineBell`.
    ///
    /// You can find the available icons on `https://icons.layrz.com`.
    @IconOrNullConverter() MdiRemapIcon? icon,

    /// [color] is the color of the notification.
    @ColorConverter() @Default(Color(0xFF2196F3)) Color color,

    /// [uri] is the URI of the sound effect to play when the notification arrives.
    ///
    /// This will only be considered if the [sound] is set to `SoundEffect.custom`.
    String? uri,

    /// [duration] is the duration of the notification.
    @DurationConverter() @Default(Duration(seconds: 5)) Duration duration,
  }) = _LayrzNotification;

  /// Deserializes a [LayrzNotification] from a JSON map.
  factory LayrzNotification.fromJson(Map<String, dynamic> json) => _$LayrzNotificationFromJson(json);

  // String formatTitle(BuildContext context) {
  //   if (titleTranslate) {
  //     String? translation = LayrzAppLocalizations.maybeOf(context)?.t(title, titleArgs);
  //     if (translation != null) return translation;
  //   }
  //   return title;
  // }

  // String formatMessage(BuildContext context) {
  //   if (messageTranslate) {
  //     String? translation = LayrzAppLocalizations.maybeOf(context)?.t(message, messageArgs);
  //     if (translation != null) return translation;
  //   }
  //   return message;
  // }

  /// [soundFile] returns the sound file name for the sound effect.
  String? get soundFile {
    switch (sound) {
      case SoundEffect.beep:
        return 'beep';
      case SoundEffect.mechanical:
        return 'mechanical';
      case SoundEffect.peal:
        return 'peal';
      case SoundEffect.pop:
        return 'pop';
      case SoundEffect.resonant:
        return 'resonant';
      case SoundEffect.tone:
        return 'tone';
      case SoundEffect.custom:
        return uri;
      case SoundEffect.none:
        return null;
    }
  }
}
