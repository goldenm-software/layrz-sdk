/// Immutable realtime message model for websocket communication in Layrz.
///
/// [RealtimeMessage] is the typed envelope for realtime/websocket messages
/// exchanged with the Layrz platform, carrying a [RealtimeMessage.topic] and
/// an arbitrary [RealtimeMessage.payload].
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'realtime.freezed.dart';
part 'realtime.g.dart';

part 'src/message.dart';
