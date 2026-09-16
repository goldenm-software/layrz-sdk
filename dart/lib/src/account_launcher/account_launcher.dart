/// Account launcher input models for the Layrz platform.
///
/// This module provides plain input DTOs used to drive the account launcher
/// wizard templates. These models have no accompanying API callers or save
/// methods; the launch mutations that consume them remain component-local.
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_launcher.freezed.dart';
part 'account_launcher.g.dart';

part 'src/generator_template_input.dart';
part 'src/bus_template_input.dart';
