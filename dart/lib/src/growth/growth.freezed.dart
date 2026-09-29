// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'growth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyGrowthItem {

@DateConverter() DateTime get day; int get totalAssets; int get totalDevices; int get totalUsers;
/// Create a copy of DailyGrowthItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyGrowthItemCopyWith<DailyGrowthItem> get copyWith => _$DailyGrowthItemCopyWithImpl<DailyGrowthItem>(this as DailyGrowthItem, _$identity);

  /// Serializes this DailyGrowthItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyGrowthItem&&(identical(other.day, day) || other.day == day)&&(identical(other.totalAssets, totalAssets) || other.totalAssets == totalAssets)&&(identical(other.totalDevices, totalDevices) || other.totalDevices == totalDevices)&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,totalAssets,totalDevices,totalUsers);

@override
String toString() {
  return 'DailyGrowthItem(day: $day, totalAssets: $totalAssets, totalDevices: $totalDevices, totalUsers: $totalUsers)';
}


}

/// @nodoc
abstract mixin class $DailyGrowthItemCopyWith<$Res>  {
  factory $DailyGrowthItemCopyWith(DailyGrowthItem value, $Res Function(DailyGrowthItem) _then) = _$DailyGrowthItemCopyWithImpl;
@useResult
$Res call({
@DateConverter() DateTime day, int totalAssets, int totalDevices, int totalUsers
});




}
/// @nodoc
class _$DailyGrowthItemCopyWithImpl<$Res>
    implements $DailyGrowthItemCopyWith<$Res> {
  _$DailyGrowthItemCopyWithImpl(this._self, this._then);

  final DailyGrowthItem _self;
  final $Res Function(DailyGrowthItem) _then;

/// Create a copy of DailyGrowthItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? totalAssets = null,Object? totalDevices = null,Object? totalUsers = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as DateTime,totalAssets: null == totalAssets ? _self.totalAssets : totalAssets // ignore: cast_nullable_to_non_nullable
as int,totalDevices: null == totalDevices ? _self.totalDevices : totalDevices // ignore: cast_nullable_to_non_nullable
as int,totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyGrowthItem].
extension DailyGrowthItemPatterns on DailyGrowthItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyGrowthItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyGrowthItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyGrowthItem value)  $default,){
final _that = this;
switch (_that) {
case _DailyGrowthItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyGrowthItem value)?  $default,){
final _that = this;
switch (_that) {
case _DailyGrowthItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@DateConverter()  DateTime day,  int totalAssets,  int totalDevices,  int totalUsers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyGrowthItem() when $default != null:
return $default(_that.day,_that.totalAssets,_that.totalDevices,_that.totalUsers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@DateConverter()  DateTime day,  int totalAssets,  int totalDevices,  int totalUsers)  $default,) {final _that = this;
switch (_that) {
case _DailyGrowthItem():
return $default(_that.day,_that.totalAssets,_that.totalDevices,_that.totalUsers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@DateConverter()  DateTime day,  int totalAssets,  int totalDevices,  int totalUsers)?  $default,) {final _that = this;
switch (_that) {
case _DailyGrowthItem() when $default != null:
return $default(_that.day,_that.totalAssets,_that.totalDevices,_that.totalUsers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyGrowthItem implements DailyGrowthItem {
  const _DailyGrowthItem({@DateConverter() required this.day, required this.totalAssets, required this.totalDevices, required this.totalUsers});
  factory _DailyGrowthItem.fromJson(Map<String, dynamic> json) => _$DailyGrowthItemFromJson(json);

@override@DateConverter() final  DateTime day;
@override final  int totalAssets;
@override final  int totalDevices;
@override final  int totalUsers;

/// Create a copy of DailyGrowthItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyGrowthItemCopyWith<_DailyGrowthItem> get copyWith => __$DailyGrowthItemCopyWithImpl<_DailyGrowthItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyGrowthItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyGrowthItem&&(identical(other.day, day) || other.day == day)&&(identical(other.totalAssets, totalAssets) || other.totalAssets == totalAssets)&&(identical(other.totalDevices, totalDevices) || other.totalDevices == totalDevices)&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,totalAssets,totalDevices,totalUsers);

@override
String toString() {
  return 'DailyGrowthItem(day: $day, totalAssets: $totalAssets, totalDevices: $totalDevices, totalUsers: $totalUsers)';
}


}

/// @nodoc
abstract mixin class _$DailyGrowthItemCopyWith<$Res> implements $DailyGrowthItemCopyWith<$Res> {
  factory _$DailyGrowthItemCopyWith(_DailyGrowthItem value, $Res Function(_DailyGrowthItem) _then) = __$DailyGrowthItemCopyWithImpl;
@override @useResult
$Res call({
@DateConverter() DateTime day, int totalAssets, int totalDevices, int totalUsers
});




}
/// @nodoc
class __$DailyGrowthItemCopyWithImpl<$Res>
    implements _$DailyGrowthItemCopyWith<$Res> {
  __$DailyGrowthItemCopyWithImpl(this._self, this._then);

  final _DailyGrowthItem _self;
  final $Res Function(_DailyGrowthItem) _then;

/// Create a copy of DailyGrowthItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? totalAssets = null,Object? totalDevices = null,Object? totalUsers = null,}) {
  return _then(_DailyGrowthItem(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as DateTime,totalAssets: null == totalAssets ? _self.totalAssets : totalAssets // ignore: cast_nullable_to_non_nullable
as int,totalDevices: null == totalDevices ? _self.totalDevices : totalDevices // ignore: cast_nullable_to_non_nullable
as int,totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$GrowthItem {

@MonthConverter() DateTime get month; int get totalAssets; int get totalDevices; int get totalUsers; bool get predicted;
/// Create a copy of GrowthItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GrowthItemCopyWith<GrowthItem> get copyWith => _$GrowthItemCopyWithImpl<GrowthItem>(this as GrowthItem, _$identity);

  /// Serializes this GrowthItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GrowthItem&&(identical(other.month, month) || other.month == month)&&(identical(other.totalAssets, totalAssets) || other.totalAssets == totalAssets)&&(identical(other.totalDevices, totalDevices) || other.totalDevices == totalDevices)&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&(identical(other.predicted, predicted) || other.predicted == predicted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,totalAssets,totalDevices,totalUsers,predicted);

@override
String toString() {
  return 'GrowthItem(month: $month, totalAssets: $totalAssets, totalDevices: $totalDevices, totalUsers: $totalUsers, predicted: $predicted)';
}


}

/// @nodoc
abstract mixin class $GrowthItemCopyWith<$Res>  {
  factory $GrowthItemCopyWith(GrowthItem value, $Res Function(GrowthItem) _then) = _$GrowthItemCopyWithImpl;
@useResult
$Res call({
@MonthConverter() DateTime month, int totalAssets, int totalDevices, int totalUsers, bool predicted
});




}
/// @nodoc
class _$GrowthItemCopyWithImpl<$Res>
    implements $GrowthItemCopyWith<$Res> {
  _$GrowthItemCopyWithImpl(this._self, this._then);

  final GrowthItem _self;
  final $Res Function(GrowthItem) _then;

/// Create a copy of GrowthItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? totalAssets = null,Object? totalDevices = null,Object? totalUsers = null,Object? predicted = null,}) {
  return _then(_self.copyWith(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as DateTime,totalAssets: null == totalAssets ? _self.totalAssets : totalAssets // ignore: cast_nullable_to_non_nullable
as int,totalDevices: null == totalDevices ? _self.totalDevices : totalDevices // ignore: cast_nullable_to_non_nullable
as int,totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,predicted: null == predicted ? _self.predicted : predicted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GrowthItem].
extension GrowthItemPatterns on GrowthItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GrowthItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GrowthItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GrowthItem value)  $default,){
final _that = this;
switch (_that) {
case _GrowthItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GrowthItem value)?  $default,){
final _that = this;
switch (_that) {
case _GrowthItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@MonthConverter()  DateTime month,  int totalAssets,  int totalDevices,  int totalUsers,  bool predicted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GrowthItem() when $default != null:
return $default(_that.month,_that.totalAssets,_that.totalDevices,_that.totalUsers,_that.predicted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@MonthConverter()  DateTime month,  int totalAssets,  int totalDevices,  int totalUsers,  bool predicted)  $default,) {final _that = this;
switch (_that) {
case _GrowthItem():
return $default(_that.month,_that.totalAssets,_that.totalDevices,_that.totalUsers,_that.predicted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@MonthConverter()  DateTime month,  int totalAssets,  int totalDevices,  int totalUsers,  bool predicted)?  $default,) {final _that = this;
switch (_that) {
case _GrowthItem() when $default != null:
return $default(_that.month,_that.totalAssets,_that.totalDevices,_that.totalUsers,_that.predicted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GrowthItem implements GrowthItem {
  const _GrowthItem({@MonthConverter() required this.month, required this.totalAssets, required this.totalDevices, required this.totalUsers, this.predicted = false});
  factory _GrowthItem.fromJson(Map<String, dynamic> json) => _$GrowthItemFromJson(json);

@override@MonthConverter() final  DateTime month;
@override final  int totalAssets;
@override final  int totalDevices;
@override final  int totalUsers;
@override@JsonKey() final  bool predicted;

/// Create a copy of GrowthItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrowthItemCopyWith<_GrowthItem> get copyWith => __$GrowthItemCopyWithImpl<_GrowthItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrowthItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrowthItem&&(identical(other.month, month) || other.month == month)&&(identical(other.totalAssets, totalAssets) || other.totalAssets == totalAssets)&&(identical(other.totalDevices, totalDevices) || other.totalDevices == totalDevices)&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&(identical(other.predicted, predicted) || other.predicted == predicted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,totalAssets,totalDevices,totalUsers,predicted);

@override
String toString() {
  return 'GrowthItem(month: $month, totalAssets: $totalAssets, totalDevices: $totalDevices, totalUsers: $totalUsers, predicted: $predicted)';
}


}

/// @nodoc
abstract mixin class _$GrowthItemCopyWith<$Res> implements $GrowthItemCopyWith<$Res> {
  factory _$GrowthItemCopyWith(_GrowthItem value, $Res Function(_GrowthItem) _then) = __$GrowthItemCopyWithImpl;
@override @useResult
$Res call({
@MonthConverter() DateTime month, int totalAssets, int totalDevices, int totalUsers, bool predicted
});




}
/// @nodoc
class __$GrowthItemCopyWithImpl<$Res>
    implements _$GrowthItemCopyWith<$Res> {
  __$GrowthItemCopyWithImpl(this._self, this._then);

  final _GrowthItem _self;
  final $Res Function(_GrowthItem) _then;

/// Create a copy of GrowthItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? totalAssets = null,Object? totalDevices = null,Object? totalUsers = null,Object? predicted = null,}) {
  return _then(_GrowthItem(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as DateTime,totalAssets: null == totalAssets ? _self.totalAssets : totalAssets // ignore: cast_nullable_to_non_nullable
as int,totalDevices: null == totalDevices ? _self.totalDevices : totalDevices // ignore: cast_nullable_to_non_nullable
as int,totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,predicted: null == predicted ? _self.predicted : predicted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$GrowthSummary {

 int get totalAssets; int get totalDevices; int get totalUsers; List<TopAccount> get topAccounts; List<GrowthItem> get accumulatedGrowth;
/// Create a copy of GrowthSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GrowthSummaryCopyWith<GrowthSummary> get copyWith => _$GrowthSummaryCopyWithImpl<GrowthSummary>(this as GrowthSummary, _$identity);

  /// Serializes this GrowthSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GrowthSummary&&(identical(other.totalAssets, totalAssets) || other.totalAssets == totalAssets)&&(identical(other.totalDevices, totalDevices) || other.totalDevices == totalDevices)&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&const DeepCollectionEquality().equals(other.topAccounts, topAccounts)&&const DeepCollectionEquality().equals(other.accumulatedGrowth, accumulatedGrowth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalAssets,totalDevices,totalUsers,const DeepCollectionEquality().hash(topAccounts),const DeepCollectionEquality().hash(accumulatedGrowth));

@override
String toString() {
  return 'GrowthSummary(totalAssets: $totalAssets, totalDevices: $totalDevices, totalUsers: $totalUsers, topAccounts: $topAccounts, accumulatedGrowth: $accumulatedGrowth)';
}


}

/// @nodoc
abstract mixin class $GrowthSummaryCopyWith<$Res>  {
  factory $GrowthSummaryCopyWith(GrowthSummary value, $Res Function(GrowthSummary) _then) = _$GrowthSummaryCopyWithImpl;
@useResult
$Res call({
 int totalAssets, int totalDevices, int totalUsers, List<TopAccount> topAccounts, List<GrowthItem> accumulatedGrowth
});




}
/// @nodoc
class _$GrowthSummaryCopyWithImpl<$Res>
    implements $GrowthSummaryCopyWith<$Res> {
  _$GrowthSummaryCopyWithImpl(this._self, this._then);

  final GrowthSummary _self;
  final $Res Function(GrowthSummary) _then;

/// Create a copy of GrowthSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalAssets = null,Object? totalDevices = null,Object? totalUsers = null,Object? topAccounts = null,Object? accumulatedGrowth = null,}) {
  return _then(_self.copyWith(
totalAssets: null == totalAssets ? _self.totalAssets : totalAssets // ignore: cast_nullable_to_non_nullable
as int,totalDevices: null == totalDevices ? _self.totalDevices : totalDevices // ignore: cast_nullable_to_non_nullable
as int,totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,topAccounts: null == topAccounts ? _self.topAccounts : topAccounts // ignore: cast_nullable_to_non_nullable
as List<TopAccount>,accumulatedGrowth: null == accumulatedGrowth ? _self.accumulatedGrowth : accumulatedGrowth // ignore: cast_nullable_to_non_nullable
as List<GrowthItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [GrowthSummary].
extension GrowthSummaryPatterns on GrowthSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GrowthSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GrowthSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GrowthSummary value)  $default,){
final _that = this;
switch (_that) {
case _GrowthSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GrowthSummary value)?  $default,){
final _that = this;
switch (_that) {
case _GrowthSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalAssets,  int totalDevices,  int totalUsers,  List<TopAccount> topAccounts,  List<GrowthItem> accumulatedGrowth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GrowthSummary() when $default != null:
return $default(_that.totalAssets,_that.totalDevices,_that.totalUsers,_that.topAccounts,_that.accumulatedGrowth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalAssets,  int totalDevices,  int totalUsers,  List<TopAccount> topAccounts,  List<GrowthItem> accumulatedGrowth)  $default,) {final _that = this;
switch (_that) {
case _GrowthSummary():
return $default(_that.totalAssets,_that.totalDevices,_that.totalUsers,_that.topAccounts,_that.accumulatedGrowth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalAssets,  int totalDevices,  int totalUsers,  List<TopAccount> topAccounts,  List<GrowthItem> accumulatedGrowth)?  $default,) {final _that = this;
switch (_that) {
case _GrowthSummary() when $default != null:
return $default(_that.totalAssets,_that.totalDevices,_that.totalUsers,_that.topAccounts,_that.accumulatedGrowth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GrowthSummary implements GrowthSummary {
  const _GrowthSummary({required this.totalAssets, required this.totalDevices, required this.totalUsers, required this.topAccounts, required this.accumulatedGrowth});
  factory _GrowthSummary.fromJson(Map<String, dynamic> json) => _$GrowthSummaryFromJson(json);

@override final  int totalAssets;
@override final  int totalDevices;
@override final  int totalUsers;
@override final  List<TopAccount> topAccounts;
@override final  List<GrowthItem> accumulatedGrowth;

/// Create a copy of GrowthSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GrowthSummaryCopyWith<_GrowthSummary> get copyWith => __$GrowthSummaryCopyWithImpl<_GrowthSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GrowthSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GrowthSummary&&(identical(other.totalAssets, totalAssets) || other.totalAssets == totalAssets)&&(identical(other.totalDevices, totalDevices) || other.totalDevices == totalDevices)&&(identical(other.totalUsers, totalUsers) || other.totalUsers == totalUsers)&&const DeepCollectionEquality().equals(other.topAccounts, topAccounts)&&const DeepCollectionEquality().equals(other.accumulatedGrowth, accumulatedGrowth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalAssets,totalDevices,totalUsers,const DeepCollectionEquality().hash(topAccounts),const DeepCollectionEquality().hash(accumulatedGrowth));

@override
String toString() {
  return 'GrowthSummary(totalAssets: $totalAssets, totalDevices: $totalDevices, totalUsers: $totalUsers, topAccounts: $topAccounts, accumulatedGrowth: $accumulatedGrowth)';
}


}

/// @nodoc
abstract mixin class _$GrowthSummaryCopyWith<$Res> implements $GrowthSummaryCopyWith<$Res> {
  factory _$GrowthSummaryCopyWith(_GrowthSummary value, $Res Function(_GrowthSummary) _then) = __$GrowthSummaryCopyWithImpl;
@override @useResult
$Res call({
 int totalAssets, int totalDevices, int totalUsers, List<TopAccount> topAccounts, List<GrowthItem> accumulatedGrowth
});




}
/// @nodoc
class __$GrowthSummaryCopyWithImpl<$Res>
    implements _$GrowthSummaryCopyWith<$Res> {
  __$GrowthSummaryCopyWithImpl(this._self, this._then);

  final _GrowthSummary _self;
  final $Res Function(_GrowthSummary) _then;

/// Create a copy of GrowthSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalAssets = null,Object? totalDevices = null,Object? totalUsers = null,Object? topAccounts = null,Object? accumulatedGrowth = null,}) {
  return _then(_GrowthSummary(
totalAssets: null == totalAssets ? _self.totalAssets : totalAssets // ignore: cast_nullable_to_non_nullable
as int,totalDevices: null == totalDevices ? _self.totalDevices : totalDevices // ignore: cast_nullable_to_non_nullable
as int,totalUsers: null == totalUsers ? _self.totalUsers : totalUsers // ignore: cast_nullable_to_non_nullable
as int,topAccounts: null == topAccounts ? _self.topAccounts : topAccounts // ignore: cast_nullable_to_non_nullable
as List<TopAccount>,accumulatedGrowth: null == accumulatedGrowth ? _self.accumulatedGrowth : accumulatedGrowth // ignore: cast_nullable_to_non_nullable
as List<GrowthItem>,
  ));
}


}


/// @nodoc
mixin _$AccountGrowth {

 TopAccount get account; List<GrowthItem> get growth;
/// Create a copy of AccountGrowth
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountGrowthCopyWith<AccountGrowth> get copyWith => _$AccountGrowthCopyWithImpl<AccountGrowth>(this as AccountGrowth, _$identity);

  /// Serializes this AccountGrowth to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountGrowth&&(identical(other.account, account) || other.account == account)&&const DeepCollectionEquality().equals(other.growth, growth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,account,const DeepCollectionEquality().hash(growth));

@override
String toString() {
  return 'AccountGrowth(account: $account, growth: $growth)';
}


}

/// @nodoc
abstract mixin class $AccountGrowthCopyWith<$Res>  {
  factory $AccountGrowthCopyWith(AccountGrowth value, $Res Function(AccountGrowth) _then) = _$AccountGrowthCopyWithImpl;
@useResult
$Res call({
 TopAccount account, List<GrowthItem> growth
});


$TopAccountCopyWith<$Res> get account;

}
/// @nodoc
class _$AccountGrowthCopyWithImpl<$Res>
    implements $AccountGrowthCopyWith<$Res> {
  _$AccountGrowthCopyWithImpl(this._self, this._then);

  final AccountGrowth _self;
  final $Res Function(AccountGrowth) _then;

/// Create a copy of AccountGrowth
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? account = null,Object? growth = null,}) {
  return _then(_self.copyWith(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as TopAccount,growth: null == growth ? _self.growth : growth // ignore: cast_nullable_to_non_nullable
as List<GrowthItem>,
  ));
}
/// Create a copy of AccountGrowth
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopAccountCopyWith<$Res> get account {
  
  return $TopAccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}


/// Adds pattern-matching-related methods to [AccountGrowth].
extension AccountGrowthPatterns on AccountGrowth {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountGrowth value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountGrowth() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountGrowth value)  $default,){
final _that = this;
switch (_that) {
case _AccountGrowth():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountGrowth value)?  $default,){
final _that = this;
switch (_that) {
case _AccountGrowth() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TopAccount account,  List<GrowthItem> growth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountGrowth() when $default != null:
return $default(_that.account,_that.growth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TopAccount account,  List<GrowthItem> growth)  $default,) {final _that = this;
switch (_that) {
case _AccountGrowth():
return $default(_that.account,_that.growth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TopAccount account,  List<GrowthItem> growth)?  $default,) {final _that = this;
switch (_that) {
case _AccountGrowth() when $default != null:
return $default(_that.account,_that.growth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountGrowth implements AccountGrowth {
  const _AccountGrowth({required this.account, required this.growth});
  factory _AccountGrowth.fromJson(Map<String, dynamic> json) => _$AccountGrowthFromJson(json);

@override final  TopAccount account;
@override final  List<GrowthItem> growth;

/// Create a copy of AccountGrowth
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountGrowthCopyWith<_AccountGrowth> get copyWith => __$AccountGrowthCopyWithImpl<_AccountGrowth>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountGrowthToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountGrowth&&(identical(other.account, account) || other.account == account)&&const DeepCollectionEquality().equals(other.growth, growth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,account,const DeepCollectionEquality().hash(growth));

@override
String toString() {
  return 'AccountGrowth(account: $account, growth: $growth)';
}


}

/// @nodoc
abstract mixin class _$AccountGrowthCopyWith<$Res> implements $AccountGrowthCopyWith<$Res> {
  factory _$AccountGrowthCopyWith(_AccountGrowth value, $Res Function(_AccountGrowth) _then) = __$AccountGrowthCopyWithImpl;
@override @useResult
$Res call({
 TopAccount account, List<GrowthItem> growth
});


@override $TopAccountCopyWith<$Res> get account;

}
/// @nodoc
class __$AccountGrowthCopyWithImpl<$Res>
    implements _$AccountGrowthCopyWith<$Res> {
  __$AccountGrowthCopyWithImpl(this._self, this._then);

  final _AccountGrowth _self;
  final $Res Function(_AccountGrowth) _then;

/// Create a copy of AccountGrowth
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? account = null,Object? growth = null,}) {
  return _then(_AccountGrowth(
account: null == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as TopAccount,growth: null == growth ? _self.growth : growth // ignore: cast_nullable_to_non_nullable
as List<GrowthItem>,
  ));
}

/// Create a copy of AccountGrowth
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TopAccountCopyWith<$Res> get account {
  
  return $TopAccountCopyWith<$Res>(_self.account, (value) {
    return _then(_self.copyWith(account: value));
  });
}
}


/// @nodoc
mixin _$TopAccount {

 String get id; String get name;
/// Create a copy of TopAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopAccountCopyWith<TopAccount> get copyWith => _$TopAccountCopyWithImpl<TopAccount>(this as TopAccount, _$identity);

  /// Serializes this TopAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'TopAccount(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $TopAccountCopyWith<$Res>  {
  factory $TopAccountCopyWith(TopAccount value, $Res Function(TopAccount) _then) = _$TopAccountCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$TopAccountCopyWithImpl<$Res>
    implements $TopAccountCopyWith<$Res> {
  _$TopAccountCopyWithImpl(this._self, this._then);

  final TopAccount _self;
  final $Res Function(TopAccount) _then;

/// Create a copy of TopAccount
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TopAccount].
extension TopAccountPatterns on TopAccount {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopAccount value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopAccount() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopAccount value)  $default,){
final _that = this;
switch (_that) {
case _TopAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopAccount value)?  $default,){
final _that = this;
switch (_that) {
case _TopAccount() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopAccount() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _TopAccount():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _TopAccount() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopAccount implements TopAccount {
  const _TopAccount({required this.id, required this.name});
  factory _TopAccount.fromJson(Map<String, dynamic> json) => _$TopAccountFromJson(json);

@override final  String id;
@override final  String name;

/// Create a copy of TopAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopAccountCopyWith<_TopAccount> get copyWith => __$TopAccountCopyWithImpl<_TopAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopAccount&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'TopAccount(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$TopAccountCopyWith<$Res> implements $TopAccountCopyWith<$Res> {
  factory _$TopAccountCopyWith(_TopAccount value, $Res Function(_TopAccount) _then) = __$TopAccountCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$TopAccountCopyWithImpl<$Res>
    implements _$TopAccountCopyWith<$Res> {
  __$TopAccountCopyWithImpl(this._self, this._then);

  final _TopAccount _self;
  final $Res Function(_TopAccount) _then;

/// Create a copy of TopAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_TopAccount(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
