/// Function models for the Layrz automation pipeline.
///
/// [LayrzFunction] represents a configured integration function driven by an [Algorithm], with
/// [FtpAccount] describing the FTP credentials some algorithms require to exchange files.
library;

import 'package:flutter/widgets.dart' show Color;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/credential_fields/credential_fields.dart';
import 'package:layrz_sdk/src/icons/icons.dart';
import 'package:layrz_sdk/src/tag/tag.dart';

part 'function.freezed.dart';
part 'function.g.dart';

part 'src/ftp_account.dart';
part 'src/algorithm.dart';
part 'src/algorithm_input.dart';
part 'src/function.dart';
