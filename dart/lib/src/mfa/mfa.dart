/// Multi-factor authentication (MFA) models and enums for Layrz platform.
///
/// This module provides models and enumerations for MFA configuration and
/// credential management:
/// - [MfaMethod]: enumeration of supported MFA algorithms (TOTP, HOTP, PASSKEY,
///   BACKUP_CODE)
/// - [MfaInput]: mutable input model for MFA method selection and token
///   submission in mutations
/// - [Passkey]: immutable representation of WebAuthn/FIDO2 credentials
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/app/app.dart';

part 'mfa.freezed.dart';
part 'mfa.g.dart';

part 'src/mfa_method.dart';
part 'src/mfa_input.dart';
part 'src/passkey.dart';
