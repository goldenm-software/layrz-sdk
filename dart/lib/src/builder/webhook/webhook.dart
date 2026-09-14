/// Webhook structure definitions for inbound protocols.
///
/// A protocol using [OperationMode.webhook] declares how to reach and
/// interpret its webhook endpoint via [WebhookStructure]: the base URL, the
/// [WebhookPath] entries appended to it, the [WebhookMethod] and
/// [WebhookFormat] used, and any static [WebhookHeader]s to send.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/api/api.dart';

part 'webhook.freezed.dart';
part 'webhook.g.dart';

part 'src/webhook_structure.dart';
part 'src/webhook_path.dart';
part 'src/webhook_header.dart';
part 'src/webhook_method.dart';
part 'src/webhook_format.dart';
