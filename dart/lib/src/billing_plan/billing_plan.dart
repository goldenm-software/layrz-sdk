/// Billing plan model describing entitlement limits for a Layrz account.
///
/// A [BillingPlan] captures the quotas (max assets, devices, users, and so
/// on) and allowed catalog entries (apps, algorithms, protocols) granted to
/// an account. Use [BillingPlanInput] for creating or updating billing plans.
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'billing_plan.freezed.dart';
part 'billing_plan.g.dart';

part 'src/billing_plan.dart';
part 'src/billing_plan_input.dart';
