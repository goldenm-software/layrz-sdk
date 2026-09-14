part of '../app.dart';

/// A themed image asset (e.g., a favicon or logo) with light and dark
/// variants.
///
/// [AppThemedAsset] pairs a [normal] variant (for light backgrounds) with a
/// [white] variant (for dark backgrounds), used for [AppDesign.favicons] and
/// [AppDesign.logos].
@freezed
abstract class AppThemedAsset with _$AppThemedAsset {
  /// Private constructor used by the code generator.
  const AppThemedAsset._();

  /// Constructs an immutable [AppThemedAsset].
  const factory AppThemedAsset({
    /// The URI of the asset variant for light backgrounds.
    required String normal,

    /// The URI of the asset variant for dark backgrounds.
    required String white,
  }) = _AppThemedAsset;

  /// Deserializes an [AppThemedAsset] from a JSON map.
  factory AppThemedAsset.fromJson(Map<String, dynamic> json) => _$AppThemedAssetFromJson(json);

  /// GraphQL fragment definition for querying themed asset fields.
  static GqlFragment get fragment =>
      GqlFragment(name: 'assetFragment', onType: 'AssetInformation')
        ..add(GqlField(name: 'normal'))
        ..add(GqlField(name: 'white'));
}

/// Mutable input data for creating or updating an [AppThemedAsset].
///
/// [AppThemedAssetInput] mirrors the fields of [AppThemedAsset] but is
/// mutable and both fields are optional, making it suitable for form
/// binding before submission as part of an [AppDesignInput].
@unfreezed
abstract class AppThemedAssetInput with _$AppThemedAssetInput {
  /// Constructs a mutable [AppThemedAssetInput].
  factory AppThemedAssetInput({
    /// The URI of the asset variant for light backgrounds, or null when
    /// unset.
    String? normal,

    /// The URI of the asset variant for dark backgrounds, or null when
    /// unset.
    String? white,
  }) = _AppThemedAssetInput;

  /// Deserializes an [AppThemedAssetInput] from a JSON map.
  factory AppThemedAssetInput.fromJson(Map<String, dynamic> json) => _$AppThemedAssetInputFromJson(json);
}
