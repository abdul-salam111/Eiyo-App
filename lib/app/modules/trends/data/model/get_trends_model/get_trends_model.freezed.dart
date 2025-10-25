// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_trends_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetTrendsModel {

@JsonKey(name: "good_pick_avg") double? get goodPickAvg;@JsonKey(name: "medium_pick_avg") double? get mediumPickAvg;@JsonKey(name: "poor_pick_avg") double? get poorPickAvg;@JsonKey(name: "entries") List<Entry>? get entries;
/// Create a copy of GetTrendsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTrendsModelCopyWith<GetTrendsModel> get copyWith => _$GetTrendsModelCopyWithImpl<GetTrendsModel>(this as GetTrendsModel, _$identity);

  /// Serializes this GetTrendsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTrendsModel&&(identical(other.goodPickAvg, goodPickAvg) || other.goodPickAvg == goodPickAvg)&&(identical(other.mediumPickAvg, mediumPickAvg) || other.mediumPickAvg == mediumPickAvg)&&(identical(other.poorPickAvg, poorPickAvg) || other.poorPickAvg == poorPickAvg)&&const DeepCollectionEquality().equals(other.entries, entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,goodPickAvg,mediumPickAvg,poorPickAvg,const DeepCollectionEquality().hash(entries));

@override
String toString() {
  return 'GetTrendsModel(goodPickAvg: $goodPickAvg, mediumPickAvg: $mediumPickAvg, poorPickAvg: $poorPickAvg, entries: $entries)';
}


}

/// @nodoc
abstract mixin class $GetTrendsModelCopyWith<$Res>  {
  factory $GetTrendsModelCopyWith(GetTrendsModel value, $Res Function(GetTrendsModel) _then) = _$GetTrendsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "good_pick_avg") double? goodPickAvg,@JsonKey(name: "medium_pick_avg") double? mediumPickAvg,@JsonKey(name: "poor_pick_avg") double? poorPickAvg,@JsonKey(name: "entries") List<Entry>? entries
});




}
/// @nodoc
class _$GetTrendsModelCopyWithImpl<$Res>
    implements $GetTrendsModelCopyWith<$Res> {
  _$GetTrendsModelCopyWithImpl(this._self, this._then);

  final GetTrendsModel _self;
  final $Res Function(GetTrendsModel) _then;

/// Create a copy of GetTrendsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? goodPickAvg = freezed,Object? mediumPickAvg = freezed,Object? poorPickAvg = freezed,Object? entries = freezed,}) {
  return _then(_self.copyWith(
goodPickAvg: freezed == goodPickAvg ? _self.goodPickAvg : goodPickAvg // ignore: cast_nullable_to_non_nullable
as double?,mediumPickAvg: freezed == mediumPickAvg ? _self.mediumPickAvg : mediumPickAvg // ignore: cast_nullable_to_non_nullable
as double?,poorPickAvg: freezed == poorPickAvg ? _self.poorPickAvg : poorPickAvg // ignore: cast_nullable_to_non_nullable
as double?,entries: freezed == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<Entry>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetTrendsModel].
extension GetTrendsModelPatterns on GetTrendsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetTrendsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTrendsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetTrendsModel value)  $default,){
final _that = this;
switch (_that) {
case _GetTrendsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetTrendsModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetTrendsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "good_pick_avg")  double? goodPickAvg, @JsonKey(name: "medium_pick_avg")  double? mediumPickAvg, @JsonKey(name: "poor_pick_avg")  double? poorPickAvg, @JsonKey(name: "entries")  List<Entry>? entries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTrendsModel() when $default != null:
return $default(_that.goodPickAvg,_that.mediumPickAvg,_that.poorPickAvg,_that.entries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "good_pick_avg")  double? goodPickAvg, @JsonKey(name: "medium_pick_avg")  double? mediumPickAvg, @JsonKey(name: "poor_pick_avg")  double? poorPickAvg, @JsonKey(name: "entries")  List<Entry>? entries)  $default,) {final _that = this;
switch (_that) {
case _GetTrendsModel():
return $default(_that.goodPickAvg,_that.mediumPickAvg,_that.poorPickAvg,_that.entries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "good_pick_avg")  double? goodPickAvg, @JsonKey(name: "medium_pick_avg")  double? mediumPickAvg, @JsonKey(name: "poor_pick_avg")  double? poorPickAvg, @JsonKey(name: "entries")  List<Entry>? entries)?  $default,) {final _that = this;
switch (_that) {
case _GetTrendsModel() when $default != null:
return $default(_that.goodPickAvg,_that.mediumPickAvg,_that.poorPickAvg,_that.entries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetTrendsModel implements GetTrendsModel {
  const _GetTrendsModel({@JsonKey(name: "good_pick_avg") this.goodPickAvg, @JsonKey(name: "medium_pick_avg") this.mediumPickAvg, @JsonKey(name: "poor_pick_avg") this.poorPickAvg, @JsonKey(name: "entries") final  List<Entry>? entries}): _entries = entries;
  factory _GetTrendsModel.fromJson(Map<String, dynamic> json) => _$GetTrendsModelFromJson(json);

@override@JsonKey(name: "good_pick_avg") final  double? goodPickAvg;
@override@JsonKey(name: "medium_pick_avg") final  double? mediumPickAvg;
@override@JsonKey(name: "poor_pick_avg") final  double? poorPickAvg;
 final  List<Entry>? _entries;
@override@JsonKey(name: "entries") List<Entry>? get entries {
  final value = _entries;
  if (value == null) return null;
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetTrendsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTrendsModelCopyWith<_GetTrendsModel> get copyWith => __$GetTrendsModelCopyWithImpl<_GetTrendsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetTrendsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTrendsModel&&(identical(other.goodPickAvg, goodPickAvg) || other.goodPickAvg == goodPickAvg)&&(identical(other.mediumPickAvg, mediumPickAvg) || other.mediumPickAvg == mediumPickAvg)&&(identical(other.poorPickAvg, poorPickAvg) || other.poorPickAvg == poorPickAvg)&&const DeepCollectionEquality().equals(other._entries, _entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,goodPickAvg,mediumPickAvg,poorPickAvg,const DeepCollectionEquality().hash(_entries));

@override
String toString() {
  return 'GetTrendsModel(goodPickAvg: $goodPickAvg, mediumPickAvg: $mediumPickAvg, poorPickAvg: $poorPickAvg, entries: $entries)';
}


}

/// @nodoc
abstract mixin class _$GetTrendsModelCopyWith<$Res> implements $GetTrendsModelCopyWith<$Res> {
  factory _$GetTrendsModelCopyWith(_GetTrendsModel value, $Res Function(_GetTrendsModel) _then) = __$GetTrendsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "good_pick_avg") double? goodPickAvg,@JsonKey(name: "medium_pick_avg") double? mediumPickAvg,@JsonKey(name: "poor_pick_avg") double? poorPickAvg,@JsonKey(name: "entries") List<Entry>? entries
});




}
/// @nodoc
class __$GetTrendsModelCopyWithImpl<$Res>
    implements _$GetTrendsModelCopyWith<$Res> {
  __$GetTrendsModelCopyWithImpl(this._self, this._then);

  final _GetTrendsModel _self;
  final $Res Function(_GetTrendsModel) _then;

/// Create a copy of GetTrendsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? goodPickAvg = freezed,Object? mediumPickAvg = freezed,Object? poorPickAvg = freezed,Object? entries = freezed,}) {
  return _then(_GetTrendsModel(
goodPickAvg: freezed == goodPickAvg ? _self.goodPickAvg : goodPickAvg // ignore: cast_nullable_to_non_nullable
as double?,mediumPickAvg: freezed == mediumPickAvg ? _self.mediumPickAvg : mediumPickAvg // ignore: cast_nullable_to_non_nullable
as double?,poorPickAvg: freezed == poorPickAvg ? _self.poorPickAvg : poorPickAvg // ignore: cast_nullable_to_non_nullable
as double?,entries: freezed == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<Entry>?,
  ));
}


}


/// @nodoc
mixin _$Entry {

@JsonKey(name: "id") int? get id;@JsonKey(name: "food_iq_score") int? get foodIqScore;@JsonKey(name: "scanned_at") String? get scannedAt;
/// Create a copy of Entry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntryCopyWith<Entry> get copyWith => _$EntryCopyWithImpl<Entry>(this as Entry, _$identity);

  /// Serializes this Entry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Entry&&(identical(other.id, id) || other.id == id)&&(identical(other.foodIqScore, foodIqScore) || other.foodIqScore == foodIqScore)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,foodIqScore,scannedAt);

@override
String toString() {
  return 'Entry(id: $id, foodIqScore: $foodIqScore, scannedAt: $scannedAt)';
}


}

/// @nodoc
abstract mixin class $EntryCopyWith<$Res>  {
  factory $EntryCopyWith(Entry value, $Res Function(Entry) _then) = _$EntryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "food_iq_score") int? foodIqScore,@JsonKey(name: "scanned_at") String? scannedAt
});




}
/// @nodoc
class _$EntryCopyWithImpl<$Res>
    implements $EntryCopyWith<$Res> {
  _$EntryCopyWithImpl(this._self, this._then);

  final Entry _self;
  final $Res Function(Entry) _then;

/// Create a copy of Entry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? foodIqScore = freezed,Object? scannedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,foodIqScore: freezed == foodIqScore ? _self.foodIqScore : foodIqScore // ignore: cast_nullable_to_non_nullable
as int?,scannedAt: freezed == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Entry].
extension EntryPatterns on Entry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Entry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Entry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Entry value)  $default,){
final _that = this;
switch (_that) {
case _Entry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Entry value)?  $default,){
final _that = this;
switch (_that) {
case _Entry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "food_iq_score")  int? foodIqScore, @JsonKey(name: "scanned_at")  String? scannedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Entry() when $default != null:
return $default(_that.id,_that.foodIqScore,_that.scannedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "food_iq_score")  int? foodIqScore, @JsonKey(name: "scanned_at")  String? scannedAt)  $default,) {final _that = this;
switch (_that) {
case _Entry():
return $default(_that.id,_that.foodIqScore,_that.scannedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "food_iq_score")  int? foodIqScore, @JsonKey(name: "scanned_at")  String? scannedAt)?  $default,) {final _that = this;
switch (_that) {
case _Entry() when $default != null:
return $default(_that.id,_that.foodIqScore,_that.scannedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Entry implements Entry {
  const _Entry({@JsonKey(name: "id") this.id, @JsonKey(name: "food_iq_score") this.foodIqScore, @JsonKey(name: "scanned_at") this.scannedAt});
  factory _Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "food_iq_score") final  int? foodIqScore;
@override@JsonKey(name: "scanned_at") final  String? scannedAt;

/// Create a copy of Entry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntryCopyWith<_Entry> get copyWith => __$EntryCopyWithImpl<_Entry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Entry&&(identical(other.id, id) || other.id == id)&&(identical(other.foodIqScore, foodIqScore) || other.foodIqScore == foodIqScore)&&(identical(other.scannedAt, scannedAt) || other.scannedAt == scannedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,foodIqScore,scannedAt);

@override
String toString() {
  return 'Entry(id: $id, foodIqScore: $foodIqScore, scannedAt: $scannedAt)';
}


}

/// @nodoc
abstract mixin class _$EntryCopyWith<$Res> implements $EntryCopyWith<$Res> {
  factory _$EntryCopyWith(_Entry value, $Res Function(_Entry) _then) = __$EntryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "food_iq_score") int? foodIqScore,@JsonKey(name: "scanned_at") String? scannedAt
});




}
/// @nodoc
class __$EntryCopyWithImpl<$Res>
    implements _$EntryCopyWith<$Res> {
  __$EntryCopyWithImpl(this._self, this._then);

  final _Entry _self;
  final $Res Function(_Entry) _then;

/// Create a copy of Entry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? foodIqScore = freezed,Object? scannedAt = freezed,}) {
  return _then(_Entry(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,foodIqScore: freezed == foodIqScore ? _self.foodIqScore : foodIqScore // ignore: cast_nullable_to_non_nullable
as int?,scannedAt: freezed == scannedAt ? _self.scannedAt : scannedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
