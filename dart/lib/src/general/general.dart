/// General-purpose value models shared across the Layrz ecosystem.
///
/// Provides [PhoneNumber] (an immutable country-code/number pair) and its
/// mutable [PhoneNumberInput] variant, [Country] (identification, display and
/// dialing information for a country), [Timezone] (an IANA timezone name
/// paired with its UTC offset and owning [Country]), and [Weekday] (a day of
/// the week, used to schedule recurring behavior).
library;

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_logging/layrz_logging.dart';
import 'package:layrz_sdk/src/api/api.dart';

part 'general.freezed.dart';
part 'general.g.dart';

part 'src/phone_number.dart';
part 'src/phone_number_input.dart';
part 'src/country.dart';
part 'src/timezone.dart';
part 'src/weekday.dart';
