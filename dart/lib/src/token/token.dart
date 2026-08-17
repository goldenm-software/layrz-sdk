/// Token management and authentication for the Layrz API.
///
/// This module provides the [Token] model for managing API authentication tokens,
/// including methods to fetch, create, and expire tokens via the Layrz GraphQL API.
/// It also defines [TokenAudience], an enum distinguishing between API and session
/// token audiences.
///
/// Both classes are designed for use with [LayrzConnector] to execute
/// authenticated GraphQL operations. Token values must be kept secure and must
/// never be logged, printed, or persisted in plaintext.
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';
import 'package:layrz_sdk/src/converters/converters.dart';

part 'token.freezed.dart';
part 'token.g.dart';

part 'src/token.dart';
part 'src/audience.dart';
