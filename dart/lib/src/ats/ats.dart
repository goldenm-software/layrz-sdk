/// Automated Transport System (ATS) fuel-handling models for Layrz.
///
/// Entities, inputs, enums and converters of the ATS domain shared across
/// Layrz apps, grouped by feature under `src/`.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/users/users.dart';

part 'ats.freezed.dart';
part 'ats.g.dart';

part 'src/exits/exit.dart';
part 'src/authentication_card.dart';
part 'src/history_authentication_card.dart';
part 'src/ats_outbound_services/ats_stream_model.dart';
part 'src/exits/from_app.dart';
part 'src/reception/reception_type.dart';
part 'src/reception/reception_input.dart';
