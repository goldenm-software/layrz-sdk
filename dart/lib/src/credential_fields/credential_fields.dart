/// Credential field structure definitions for inbound protocols.
///
/// An inbound protocol declares the credentials it requires (host, API keys,
/// FTP settings, and so on) as a list of [CredentialField] entries, each
/// describing the field's [CredentialFieldType] and validation constraints.
/// [CredentialField.requiredFields] allows nesting, used for
/// [CredentialFieldType.nestedField].
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/api/api.dart';

part 'credential_fields.freezed.dart';
part 'credential_fields.g.dart';

part 'src/credential_field.dart';
part 'src/credential_field_type.dart';
part 'src/credential_field_action.dart';
