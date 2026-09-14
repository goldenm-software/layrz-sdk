// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MapLayer {

/// The unique identifier of the layer.
 String get id;/// The name of the layer.
 String get name;/// The tile provider this layer draws its background from.
@JsonKey(unknownEnumValue: MapSource.custom) MapSource get source;/// The raster server URL for light mode and default rendering.
///
/// Only used when [source] is [MapSource.custom].
 String? get rasterServerLight;/// The raster server URL for dark mode.
///
/// Only used when [source] is [MapSource.custom].
 String? get rasterServerDark;/// The Google Maps token with Map Tiles API capabilities.
///
/// Only used when [source] is [MapSource.google].
 String? get googleToken;/// The list of enabled Google Maps layers.
///
/// Only used when [source] is [MapSource.google].
@JsonKey(unknownEnumValue: GoogleMapLayer.roadmap) List<GoogleMapLayer>? get googleLayers;/// The Mapbox token with Static Tiles API capabilities.
///
/// Only used when [source] is [MapSource.mapbox].
 String? get mapboxToken;/// The list of enabled Mapbox styles for the layer.
///
/// Only used when [source] is [MapSource.mapbox].
@JsonKey(unknownEnumValue: MapboxStyle.navigation) List<MapboxStyle>? get mapboxLayers;/// The Mapbox custom username.
///
/// Only used when [source] is [MapSource.mapbox] and [mapboxLayers]
/// contains [MapboxStyle.custom].
 String? get mapboxCustomUsername;/// The Mapbox custom style id.
///
/// Only used when [source] is [MapSource.mapbox] and [mapboxLayers]
/// contains [MapboxStyle.custom].
 String? get mapboxCustomStyleId;/// The HERE token with Map Tiles API capabilities.
///
/// Only used when [source] is [MapSource.here].
 String? get hereToken;/// The list of enabled HERE Maps styles.
///
/// Only used when [source] is [MapSource.here].
@JsonKey(unknownEnumValue: HereStyle.lite) List<HereStyle>? get hereLayers;/// The URI for the attribution logo shown over the layer.
 String get attributionUrl;/// The URI for the attribution logo shown over the layer in dark mode.
 String? get attributionUrlDark;/// The width of the attribution logo, in logical pixels.
 double get attributionWidth;/// The height of the attribution logo, in logical pixels.
 double get attributionHeight;/// The list of app ids this layer is associated with.
 List<String> get appsIds;
/// Create a copy of MapLayer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapLayerCopyWith<MapLayer> get copyWith => _$MapLayerCopyWithImpl<MapLayer>(this as MapLayer, _$identity);

  /// Serializes this MapLayer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapLayer&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.rasterServerLight, rasterServerLight) || other.rasterServerLight == rasterServerLight)&&(identical(other.rasterServerDark, rasterServerDark) || other.rasterServerDark == rasterServerDark)&&(identical(other.googleToken, googleToken) || other.googleToken == googleToken)&&const DeepCollectionEquality().equals(other.googleLayers, googleLayers)&&(identical(other.mapboxToken, mapboxToken) || other.mapboxToken == mapboxToken)&&const DeepCollectionEquality().equals(other.mapboxLayers, mapboxLayers)&&(identical(other.mapboxCustomUsername, mapboxCustomUsername) || other.mapboxCustomUsername == mapboxCustomUsername)&&(identical(other.mapboxCustomStyleId, mapboxCustomStyleId) || other.mapboxCustomStyleId == mapboxCustomStyleId)&&(identical(other.hereToken, hereToken) || other.hereToken == hereToken)&&const DeepCollectionEquality().equals(other.hereLayers, hereLayers)&&(identical(other.attributionUrl, attributionUrl) || other.attributionUrl == attributionUrl)&&(identical(other.attributionUrlDark, attributionUrlDark) || other.attributionUrlDark == attributionUrlDark)&&(identical(other.attributionWidth, attributionWidth) || other.attributionWidth == attributionWidth)&&(identical(other.attributionHeight, attributionHeight) || other.attributionHeight == attributionHeight)&&const DeepCollectionEquality().equals(other.appsIds, appsIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,source,rasterServerLight,rasterServerDark,googleToken,const DeepCollectionEquality().hash(googleLayers),mapboxToken,const DeepCollectionEquality().hash(mapboxLayers),mapboxCustomUsername,mapboxCustomStyleId,hereToken,const DeepCollectionEquality().hash(hereLayers),attributionUrl,attributionUrlDark,attributionWidth,attributionHeight,const DeepCollectionEquality().hash(appsIds));

@override
String toString() {
  return 'MapLayer(id: $id, name: $name, source: $source, rasterServerLight: $rasterServerLight, rasterServerDark: $rasterServerDark, googleToken: $googleToken, googleLayers: $googleLayers, mapboxToken: $mapboxToken, mapboxLayers: $mapboxLayers, mapboxCustomUsername: $mapboxCustomUsername, mapboxCustomStyleId: $mapboxCustomStyleId, hereToken: $hereToken, hereLayers: $hereLayers, attributionUrl: $attributionUrl, attributionUrlDark: $attributionUrlDark, attributionWidth: $attributionWidth, attributionHeight: $attributionHeight, appsIds: $appsIds)';
}


}

/// @nodoc
abstract mixin class $MapLayerCopyWith<$Res>  {
  factory $MapLayerCopyWith(MapLayer value, $Res Function(MapLayer) _then) = _$MapLayerCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(unknownEnumValue: MapSource.custom) MapSource source, String? rasterServerLight, String? rasterServerDark, String? googleToken,@JsonKey(unknownEnumValue: GoogleMapLayer.roadmap) List<GoogleMapLayer>? googleLayers, String? mapboxToken,@JsonKey(unknownEnumValue: MapboxStyle.navigation) List<MapboxStyle>? mapboxLayers, String? mapboxCustomUsername, String? mapboxCustomStyleId, String? hereToken,@JsonKey(unknownEnumValue: HereStyle.lite) List<HereStyle>? hereLayers, String attributionUrl, String? attributionUrlDark, double attributionWidth, double attributionHeight, List<String> appsIds
});




}
/// @nodoc
class _$MapLayerCopyWithImpl<$Res>
    implements $MapLayerCopyWith<$Res> {
  _$MapLayerCopyWithImpl(this._self, this._then);

  final MapLayer _self;
  final $Res Function(MapLayer) _then;

/// Create a copy of MapLayer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? source = null,Object? rasterServerLight = freezed,Object? rasterServerDark = freezed,Object? googleToken = freezed,Object? googleLayers = freezed,Object? mapboxToken = freezed,Object? mapboxLayers = freezed,Object? mapboxCustomUsername = freezed,Object? mapboxCustomStyleId = freezed,Object? hereToken = freezed,Object? hereLayers = freezed,Object? attributionUrl = null,Object? attributionUrlDark = freezed,Object? attributionWidth = null,Object? attributionHeight = null,Object? appsIds = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as MapSource,rasterServerLight: freezed == rasterServerLight ? _self.rasterServerLight : rasterServerLight // ignore: cast_nullable_to_non_nullable
as String?,rasterServerDark: freezed == rasterServerDark ? _self.rasterServerDark : rasterServerDark // ignore: cast_nullable_to_non_nullable
as String?,googleToken: freezed == googleToken ? _self.googleToken : googleToken // ignore: cast_nullable_to_non_nullable
as String?,googleLayers: freezed == googleLayers ? _self.googleLayers : googleLayers // ignore: cast_nullable_to_non_nullable
as List<GoogleMapLayer>?,mapboxToken: freezed == mapboxToken ? _self.mapboxToken : mapboxToken // ignore: cast_nullable_to_non_nullable
as String?,mapboxLayers: freezed == mapboxLayers ? _self.mapboxLayers : mapboxLayers // ignore: cast_nullable_to_non_nullable
as List<MapboxStyle>?,mapboxCustomUsername: freezed == mapboxCustomUsername ? _self.mapboxCustomUsername : mapboxCustomUsername // ignore: cast_nullable_to_non_nullable
as String?,mapboxCustomStyleId: freezed == mapboxCustomStyleId ? _self.mapboxCustomStyleId : mapboxCustomStyleId // ignore: cast_nullable_to_non_nullable
as String?,hereToken: freezed == hereToken ? _self.hereToken : hereToken // ignore: cast_nullable_to_non_nullable
as String?,hereLayers: freezed == hereLayers ? _self.hereLayers : hereLayers // ignore: cast_nullable_to_non_nullable
as List<HereStyle>?,attributionUrl: null == attributionUrl ? _self.attributionUrl : attributionUrl // ignore: cast_nullable_to_non_nullable
as String,attributionUrlDark: freezed == attributionUrlDark ? _self.attributionUrlDark : attributionUrlDark // ignore: cast_nullable_to_non_nullable
as String?,attributionWidth: null == attributionWidth ? _self.attributionWidth : attributionWidth // ignore: cast_nullable_to_non_nullable
as double,attributionHeight: null == attributionHeight ? _self.attributionHeight : attributionHeight // ignore: cast_nullable_to_non_nullable
as double,appsIds: null == appsIds ? _self.appsIds : appsIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MapLayer].
extension MapLayerPatterns on MapLayer {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapLayer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapLayer() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapLayer value)  $default,){
final _that = this;
switch (_that) {
case _MapLayer():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapLayer value)?  $default,){
final _that = this;
switch (_that) {
case _MapLayer() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(unknownEnumValue: MapSource.custom)  MapSource source,  String? rasterServerLight,  String? rasterServerDark,  String? googleToken, @JsonKey(unknownEnumValue: GoogleMapLayer.roadmap)  List<GoogleMapLayer>? googleLayers,  String? mapboxToken, @JsonKey(unknownEnumValue: MapboxStyle.navigation)  List<MapboxStyle>? mapboxLayers,  String? mapboxCustomUsername,  String? mapboxCustomStyleId,  String? hereToken, @JsonKey(unknownEnumValue: HereStyle.lite)  List<HereStyle>? hereLayers,  String attributionUrl,  String? attributionUrlDark,  double attributionWidth,  double attributionHeight,  List<String> appsIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapLayer() when $default != null:
return $default(_that.id,_that.name,_that.source,_that.rasterServerLight,_that.rasterServerDark,_that.googleToken,_that.googleLayers,_that.mapboxToken,_that.mapboxLayers,_that.mapboxCustomUsername,_that.mapboxCustomStyleId,_that.hereToken,_that.hereLayers,_that.attributionUrl,_that.attributionUrlDark,_that.attributionWidth,_that.attributionHeight,_that.appsIds);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(unknownEnumValue: MapSource.custom)  MapSource source,  String? rasterServerLight,  String? rasterServerDark,  String? googleToken, @JsonKey(unknownEnumValue: GoogleMapLayer.roadmap)  List<GoogleMapLayer>? googleLayers,  String? mapboxToken, @JsonKey(unknownEnumValue: MapboxStyle.navigation)  List<MapboxStyle>? mapboxLayers,  String? mapboxCustomUsername,  String? mapboxCustomStyleId,  String? hereToken, @JsonKey(unknownEnumValue: HereStyle.lite)  List<HereStyle>? hereLayers,  String attributionUrl,  String? attributionUrlDark,  double attributionWidth,  double attributionHeight,  List<String> appsIds)  $default,) {final _that = this;
switch (_that) {
case _MapLayer():
return $default(_that.id,_that.name,_that.source,_that.rasterServerLight,_that.rasterServerDark,_that.googleToken,_that.googleLayers,_that.mapboxToken,_that.mapboxLayers,_that.mapboxCustomUsername,_that.mapboxCustomStyleId,_that.hereToken,_that.hereLayers,_that.attributionUrl,_that.attributionUrlDark,_that.attributionWidth,_that.attributionHeight,_that.appsIds);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(unknownEnumValue: MapSource.custom)  MapSource source,  String? rasterServerLight,  String? rasterServerDark,  String? googleToken, @JsonKey(unknownEnumValue: GoogleMapLayer.roadmap)  List<GoogleMapLayer>? googleLayers,  String? mapboxToken, @JsonKey(unknownEnumValue: MapboxStyle.navigation)  List<MapboxStyle>? mapboxLayers,  String? mapboxCustomUsername,  String? mapboxCustomStyleId,  String? hereToken, @JsonKey(unknownEnumValue: HereStyle.lite)  List<HereStyle>? hereLayers,  String attributionUrl,  String? attributionUrlDark,  double attributionWidth,  double attributionHeight,  List<String> appsIds)?  $default,) {final _that = this;
switch (_that) {
case _MapLayer() when $default != null:
return $default(_that.id,_that.name,_that.source,_that.rasterServerLight,_that.rasterServerDark,_that.googleToken,_that.googleLayers,_that.mapboxToken,_that.mapboxLayers,_that.mapboxCustomUsername,_that.mapboxCustomStyleId,_that.hereToken,_that.hereLayers,_that.attributionUrl,_that.attributionUrlDark,_that.attributionWidth,_that.attributionHeight,_that.appsIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MapLayer extends MapLayer {
  const _MapLayer({required this.id, required this.name, @JsonKey(unknownEnumValue: MapSource.custom) required this.source, this.rasterServerLight, this.rasterServerDark, this.googleToken, @JsonKey(unknownEnumValue: GoogleMapLayer.roadmap) this.googleLayers, this.mapboxToken, @JsonKey(unknownEnumValue: MapboxStyle.navigation) this.mapboxLayers, this.mapboxCustomUsername, this.mapboxCustomStyleId, this.hereToken, @JsonKey(unknownEnumValue: HereStyle.lite) this.hereLayers, this.attributionUrl = 'https://cdn.layrz.com/resources/layrz/logo/normal.png', this.attributionUrlDark, this.attributionWidth = 100, this.attributionHeight = 30, this.appsIds = const []}): super._();
  factory _MapLayer.fromJson(Map<String, dynamic> json) => _$MapLayerFromJson(json);

/// The unique identifier of the layer.
@override final  String id;
/// The name of the layer.
@override final  String name;
/// The tile provider this layer draws its background from.
@override@JsonKey(unknownEnumValue: MapSource.custom) final  MapSource source;
/// The raster server URL for light mode and default rendering.
///
/// Only used when [source] is [MapSource.custom].
@override final  String? rasterServerLight;
/// The raster server URL for dark mode.
///
/// Only used when [source] is [MapSource.custom].
@override final  String? rasterServerDark;
/// The Google Maps token with Map Tiles API capabilities.
///
/// Only used when [source] is [MapSource.google].
@override final  String? googleToken;
/// The list of enabled Google Maps layers.
///
/// Only used when [source] is [MapSource.google].
@override@JsonKey(unknownEnumValue: GoogleMapLayer.roadmap) final  List<GoogleMapLayer>? googleLayers;
/// The Mapbox token with Static Tiles API capabilities.
///
/// Only used when [source] is [MapSource.mapbox].
@override final  String? mapboxToken;
/// The list of enabled Mapbox styles for the layer.
///
/// Only used when [source] is [MapSource.mapbox].
@override@JsonKey(unknownEnumValue: MapboxStyle.navigation) final  List<MapboxStyle>? mapboxLayers;
/// The Mapbox custom username.
///
/// Only used when [source] is [MapSource.mapbox] and [mapboxLayers]
/// contains [MapboxStyle.custom].
@override final  String? mapboxCustomUsername;
/// The Mapbox custom style id.
///
/// Only used when [source] is [MapSource.mapbox] and [mapboxLayers]
/// contains [MapboxStyle.custom].
@override final  String? mapboxCustomStyleId;
/// The HERE token with Map Tiles API capabilities.
///
/// Only used when [source] is [MapSource.here].
@override final  String? hereToken;
/// The list of enabled HERE Maps styles.
///
/// Only used when [source] is [MapSource.here].
@override@JsonKey(unknownEnumValue: HereStyle.lite) final  List<HereStyle>? hereLayers;
/// The URI for the attribution logo shown over the layer.
@override@JsonKey() final  String attributionUrl;
/// The URI for the attribution logo shown over the layer in dark mode.
@override final  String? attributionUrlDark;
/// The width of the attribution logo, in logical pixels.
@override@JsonKey() final  double attributionWidth;
/// The height of the attribution logo, in logical pixels.
@override@JsonKey() final  double attributionHeight;
/// The list of app ids this layer is associated with.
@override@JsonKey() final  List<String> appsIds;

/// Create a copy of MapLayer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapLayerCopyWith<_MapLayer> get copyWith => __$MapLayerCopyWithImpl<_MapLayer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MapLayerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapLayer&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.source, source) || other.source == source)&&(identical(other.rasterServerLight, rasterServerLight) || other.rasterServerLight == rasterServerLight)&&(identical(other.rasterServerDark, rasterServerDark) || other.rasterServerDark == rasterServerDark)&&(identical(other.googleToken, googleToken) || other.googleToken == googleToken)&&const DeepCollectionEquality().equals(other.googleLayers, googleLayers)&&(identical(other.mapboxToken, mapboxToken) || other.mapboxToken == mapboxToken)&&const DeepCollectionEquality().equals(other.mapboxLayers, mapboxLayers)&&(identical(other.mapboxCustomUsername, mapboxCustomUsername) || other.mapboxCustomUsername == mapboxCustomUsername)&&(identical(other.mapboxCustomStyleId, mapboxCustomStyleId) || other.mapboxCustomStyleId == mapboxCustomStyleId)&&(identical(other.hereToken, hereToken) || other.hereToken == hereToken)&&const DeepCollectionEquality().equals(other.hereLayers, hereLayers)&&(identical(other.attributionUrl, attributionUrl) || other.attributionUrl == attributionUrl)&&(identical(other.attributionUrlDark, attributionUrlDark) || other.attributionUrlDark == attributionUrlDark)&&(identical(other.attributionWidth, attributionWidth) || other.attributionWidth == attributionWidth)&&(identical(other.attributionHeight, attributionHeight) || other.attributionHeight == attributionHeight)&&const DeepCollectionEquality().equals(other.appsIds, appsIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,source,rasterServerLight,rasterServerDark,googleToken,const DeepCollectionEquality().hash(googleLayers),mapboxToken,const DeepCollectionEquality().hash(mapboxLayers),mapboxCustomUsername,mapboxCustomStyleId,hereToken,const DeepCollectionEquality().hash(hereLayers),attributionUrl,attributionUrlDark,attributionWidth,attributionHeight,const DeepCollectionEquality().hash(appsIds));

@override
String toString() {
  return 'MapLayer(id: $id, name: $name, source: $source, rasterServerLight: $rasterServerLight, rasterServerDark: $rasterServerDark, googleToken: $googleToken, googleLayers: $googleLayers, mapboxToken: $mapboxToken, mapboxLayers: $mapboxLayers, mapboxCustomUsername: $mapboxCustomUsername, mapboxCustomStyleId: $mapboxCustomStyleId, hereToken: $hereToken, hereLayers: $hereLayers, attributionUrl: $attributionUrl, attributionUrlDark: $attributionUrlDark, attributionWidth: $attributionWidth, attributionHeight: $attributionHeight, appsIds: $appsIds)';
}


}

/// @nodoc
abstract mixin class _$MapLayerCopyWith<$Res> implements $MapLayerCopyWith<$Res> {
  factory _$MapLayerCopyWith(_MapLayer value, $Res Function(_MapLayer) _then) = __$MapLayerCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(unknownEnumValue: MapSource.custom) MapSource source, String? rasterServerLight, String? rasterServerDark, String? googleToken,@JsonKey(unknownEnumValue: GoogleMapLayer.roadmap) List<GoogleMapLayer>? googleLayers, String? mapboxToken,@JsonKey(unknownEnumValue: MapboxStyle.navigation) List<MapboxStyle>? mapboxLayers, String? mapboxCustomUsername, String? mapboxCustomStyleId, String? hereToken,@JsonKey(unknownEnumValue: HereStyle.lite) List<HereStyle>? hereLayers, String attributionUrl, String? attributionUrlDark, double attributionWidth, double attributionHeight, List<String> appsIds
});




}
/// @nodoc
class __$MapLayerCopyWithImpl<$Res>
    implements _$MapLayerCopyWith<$Res> {
  __$MapLayerCopyWithImpl(this._self, this._then);

  final _MapLayer _self;
  final $Res Function(_MapLayer) _then;

/// Create a copy of MapLayer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? source = null,Object? rasterServerLight = freezed,Object? rasterServerDark = freezed,Object? googleToken = freezed,Object? googleLayers = freezed,Object? mapboxToken = freezed,Object? mapboxLayers = freezed,Object? mapboxCustomUsername = freezed,Object? mapboxCustomStyleId = freezed,Object? hereToken = freezed,Object? hereLayers = freezed,Object? attributionUrl = null,Object? attributionUrlDark = freezed,Object? attributionWidth = null,Object? attributionHeight = null,Object? appsIds = null,}) {
  return _then(_MapLayer(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as MapSource,rasterServerLight: freezed == rasterServerLight ? _self.rasterServerLight : rasterServerLight // ignore: cast_nullable_to_non_nullable
as String?,rasterServerDark: freezed == rasterServerDark ? _self.rasterServerDark : rasterServerDark // ignore: cast_nullable_to_non_nullable
as String?,googleToken: freezed == googleToken ? _self.googleToken : googleToken // ignore: cast_nullable_to_non_nullable
as String?,googleLayers: freezed == googleLayers ? _self.googleLayers : googleLayers // ignore: cast_nullable_to_non_nullable
as List<GoogleMapLayer>?,mapboxToken: freezed == mapboxToken ? _self.mapboxToken : mapboxToken // ignore: cast_nullable_to_non_nullable
as String?,mapboxLayers: freezed == mapboxLayers ? _self.mapboxLayers : mapboxLayers // ignore: cast_nullable_to_non_nullable
as List<MapboxStyle>?,mapboxCustomUsername: freezed == mapboxCustomUsername ? _self.mapboxCustomUsername : mapboxCustomUsername // ignore: cast_nullable_to_non_nullable
as String?,mapboxCustomStyleId: freezed == mapboxCustomStyleId ? _self.mapboxCustomStyleId : mapboxCustomStyleId // ignore: cast_nullable_to_non_nullable
as String?,hereToken: freezed == hereToken ? _self.hereToken : hereToken // ignore: cast_nullable_to_non_nullable
as String?,hereLayers: freezed == hereLayers ? _self.hereLayers : hereLayers // ignore: cast_nullable_to_non_nullable
as List<HereStyle>?,attributionUrl: null == attributionUrl ? _self.attributionUrl : attributionUrl // ignore: cast_nullable_to_non_nullable
as String,attributionUrlDark: freezed == attributionUrlDark ? _self.attributionUrlDark : attributionUrlDark // ignore: cast_nullable_to_non_nullable
as String?,attributionWidth: null == attributionWidth ? _self.attributionWidth : attributionWidth // ignore: cast_nullable_to_non_nullable
as double,attributionHeight: null == attributionHeight ? _self.attributionHeight : attributionHeight // ignore: cast_nullable_to_non_nullable
as double,appsIds: null == appsIds ? _self.appsIds : appsIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
