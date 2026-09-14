part of '../users.dart';

/// The Layrz product ecosystem a [User] belongs to.
///
/// [UserVariant] selects which GraphQL query/mutation/fragment family is
/// used when fetching or saving a [User], since each Layrz product exposes
/// its own user entity and operations on the backend.
enum UserVariant {
  /// The standard user variant, which is the default and most common variant
  /// along Layrz apps.
  standard,

  /// Dedicated to ATS, a variant of the user model used for the ATS
  /// product.
  ats,

  /// Dedicated to ATS, a variant of the user model used only for ATS Admin.
  atsAdmin,

  /// Dedicated to Brickhouse, a variant of the user model used for the
  /// Brickhouse product.
  brickhouse,

  /// Dedicated to SDM, a variant of the user model used for the SDM
  /// product.
  sdm,

  /// Dedicated to Tagon, a variant of the user model used for the Tagon
  /// product.
  tagon,

  /// Dedicated to Mappit; [mappitOperator] is the variant implemented in the
  /// Mappit ecosystem.
  mappitOperator,

  /// Dedicated to Mappit; [mappitCustomer] is the variant implemented in the
  /// Mappit ecosystem.
  mappitCustomer,

  /// Dedicated to Mappit; [mappitEmployee] is the variant implemented in the
  /// Mappit ecosystem.
  mappitEmployee,

  /// Dedicated to Mappit; [mappitSupervisor] is the variant implemented in
  /// the Mappit ecosystem.
  mappitSupervisor,

  /// Dedicated to Mappit; [mappitSeller] is the variant implemented in the
  /// Mappit ecosystem.
  mappitSeller,
}
