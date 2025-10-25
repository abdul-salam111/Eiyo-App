// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileModel {

@JsonKey(name: "full_name") String? get fullName;@JsonKey(name: "age_from") int? get ageFrom;@JsonKey(name: "age_to") int? get ageTo;@JsonKey(name: "goals") List<DietPreference>? get goals;@JsonKey(name: "diet_preferences") List<DietPreference>? get dietPreferences;
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<ProfileModel> get copyWith => _$ProfileModelCopyWithImpl<ProfileModel>(this as ProfileModel, _$identity);

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.ageFrom, ageFrom) || other.ageFrom == ageFrom)&&(identical(other.ageTo, ageTo) || other.ageTo == ageTo)&&const DeepCollectionEquality().equals(other.goals, goals)&&const DeepCollectionEquality().equals(other.dietPreferences, dietPreferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,ageFrom,ageTo,const DeepCollectionEquality().hash(goals),const DeepCollectionEquality().hash(dietPreferences));

@override
String toString() {
  return 'ProfileModel(fullName: $fullName, ageFrom: $ageFrom, ageTo: $ageTo, goals: $goals, dietPreferences: $dietPreferences)';
}


}

/// @nodoc
abstract mixin class $ProfileModelCopyWith<$Res>  {
  factory $ProfileModelCopyWith(ProfileModel value, $Res Function(ProfileModel) _then) = _$ProfileModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "full_name") String? fullName,@JsonKey(name: "age_from") int? ageFrom,@JsonKey(name: "age_to") int? ageTo,@JsonKey(name: "goals") List<DietPreference>? goals,@JsonKey(name: "diet_preferences") List<DietPreference>? dietPreferences
});




}
/// @nodoc
class _$ProfileModelCopyWithImpl<$Res>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._self, this._then);

  final ProfileModel _self;
  final $Res Function(ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = freezed,Object? ageFrom = freezed,Object? ageTo = freezed,Object? goals = freezed,Object? dietPreferences = freezed,}) {
  return _then(_self.copyWith(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,ageFrom: freezed == ageFrom ? _self.ageFrom : ageFrom // ignore: cast_nullable_to_non_nullable
as int?,ageTo: freezed == ageTo ? _self.ageTo : ageTo // ignore: cast_nullable_to_non_nullable
as int?,goals: freezed == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as List<DietPreference>?,dietPreferences: freezed == dietPreferences ? _self.dietPreferences : dietPreferences // ignore: cast_nullable_to_non_nullable
as List<DietPreference>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileModel].
extension ProfileModelPatterns on ProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "full_name")  String? fullName, @JsonKey(name: "age_from")  int? ageFrom, @JsonKey(name: "age_to")  int? ageTo, @JsonKey(name: "goals")  List<DietPreference>? goals, @JsonKey(name: "diet_preferences")  List<DietPreference>? dietPreferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.fullName,_that.ageFrom,_that.ageTo,_that.goals,_that.dietPreferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "full_name")  String? fullName, @JsonKey(name: "age_from")  int? ageFrom, @JsonKey(name: "age_to")  int? ageTo, @JsonKey(name: "goals")  List<DietPreference>? goals, @JsonKey(name: "diet_preferences")  List<DietPreference>? dietPreferences)  $default,) {final _that = this;
switch (_that) {
case _ProfileModel():
return $default(_that.fullName,_that.ageFrom,_that.ageTo,_that.goals,_that.dietPreferences);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "full_name")  String? fullName, @JsonKey(name: "age_from")  int? ageFrom, @JsonKey(name: "age_to")  int? ageTo, @JsonKey(name: "goals")  List<DietPreference>? goals, @JsonKey(name: "diet_preferences")  List<DietPreference>? dietPreferences)?  $default,) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.fullName,_that.ageFrom,_that.ageTo,_that.goals,_that.dietPreferences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileModel implements ProfileModel {
  const _ProfileModel({@JsonKey(name: "full_name") this.fullName, @JsonKey(name: "age_from") this.ageFrom, @JsonKey(name: "age_to") this.ageTo, @JsonKey(name: "goals") final  List<DietPreference>? goals, @JsonKey(name: "diet_preferences") final  List<DietPreference>? dietPreferences}): _goals = goals,_dietPreferences = dietPreferences;
  factory _ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

@override@JsonKey(name: "full_name") final  String? fullName;
@override@JsonKey(name: "age_from") final  int? ageFrom;
@override@JsonKey(name: "age_to") final  int? ageTo;
 final  List<DietPreference>? _goals;
@override@JsonKey(name: "goals") List<DietPreference>? get goals {
  final value = _goals;
  if (value == null) return null;
  if (_goals is EqualUnmodifiableListView) return _goals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<DietPreference>? _dietPreferences;
@override@JsonKey(name: "diet_preferences") List<DietPreference>? get dietPreferences {
  final value = _dietPreferences;
  if (value == null) return null;
  if (_dietPreferences is EqualUnmodifiableListView) return _dietPreferences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileModelCopyWith<_ProfileModel> get copyWith => __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.ageFrom, ageFrom) || other.ageFrom == ageFrom)&&(identical(other.ageTo, ageTo) || other.ageTo == ageTo)&&const DeepCollectionEquality().equals(other._goals, _goals)&&const DeepCollectionEquality().equals(other._dietPreferences, _dietPreferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,ageFrom,ageTo,const DeepCollectionEquality().hash(_goals),const DeepCollectionEquality().hash(_dietPreferences));

@override
String toString() {
  return 'ProfileModel(fullName: $fullName, ageFrom: $ageFrom, ageTo: $ageTo, goals: $goals, dietPreferences: $dietPreferences)';
}


}

/// @nodoc
abstract mixin class _$ProfileModelCopyWith<$Res> implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(_ProfileModel value, $Res Function(_ProfileModel) _then) = __$ProfileModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "full_name") String? fullName,@JsonKey(name: "age_from") int? ageFrom,@JsonKey(name: "age_to") int? ageTo,@JsonKey(name: "goals") List<DietPreference>? goals,@JsonKey(name: "diet_preferences") List<DietPreference>? dietPreferences
});




}
/// @nodoc
class __$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(this._self, this._then);

  final _ProfileModel _self;
  final $Res Function(_ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = freezed,Object? ageFrom = freezed,Object? ageTo = freezed,Object? goals = freezed,Object? dietPreferences = freezed,}) {
  return _then(_ProfileModel(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,ageFrom: freezed == ageFrom ? _self.ageFrom : ageFrom // ignore: cast_nullable_to_non_nullable
as int?,ageTo: freezed == ageTo ? _self.ageTo : ageTo // ignore: cast_nullable_to_non_nullable
as int?,goals: freezed == goals ? _self._goals : goals // ignore: cast_nullable_to_non_nullable
as List<DietPreference>?,dietPreferences: freezed == dietPreferences ? _self._dietPreferences : dietPreferences // ignore: cast_nullable_to_non_nullable
as List<DietPreference>?,
  ));
}


}


/// @nodoc
mixin _$DietPreference {

@JsonKey(name: "id") int? get id;
/// Create a copy of DietPreference
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DietPreferenceCopyWith<DietPreference> get copyWith => _$DietPreferenceCopyWithImpl<DietPreference>(this as DietPreference, _$identity);

  /// Serializes this DietPreference to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DietPreference&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DietPreference(id: $id)';
}


}

/// @nodoc
abstract mixin class $DietPreferenceCopyWith<$Res>  {
  factory $DietPreferenceCopyWith(DietPreference value, $Res Function(DietPreference) _then) = _$DietPreferenceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id
});




}
/// @nodoc
class _$DietPreferenceCopyWithImpl<$Res>
    implements $DietPreferenceCopyWith<$Res> {
  _$DietPreferenceCopyWithImpl(this._self, this._then);

  final DietPreference _self;
  final $Res Function(DietPreference) _then;

/// Create a copy of DietPreference
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DietPreference].
extension DietPreferencePatterns on DietPreference {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DietPreference value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DietPreference() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DietPreference value)  $default,){
final _that = this;
switch (_that) {
case _DietPreference():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DietPreference value)?  $default,){
final _that = this;
switch (_that) {
case _DietPreference() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DietPreference() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id)  $default,) {final _that = this;
switch (_that) {
case _DietPreference():
return $default(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id)?  $default,) {final _that = this;
switch (_that) {
case _DietPreference() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DietPreference implements DietPreference {
  const _DietPreference({@JsonKey(name: "id") this.id});
  factory _DietPreference.fromJson(Map<String, dynamic> json) => _$DietPreferenceFromJson(json);

@override@JsonKey(name: "id") final  int? id;

/// Create a copy of DietPreference
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DietPreferenceCopyWith<_DietPreference> get copyWith => __$DietPreferenceCopyWithImpl<_DietPreference>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DietPreferenceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DietPreference&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DietPreference(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DietPreferenceCopyWith<$Res> implements $DietPreferenceCopyWith<$Res> {
  factory _$DietPreferenceCopyWith(_DietPreference value, $Res Function(_DietPreference) _then) = __$DietPreferenceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id
});




}
/// @nodoc
class __$DietPreferenceCopyWithImpl<$Res>
    implements _$DietPreferenceCopyWith<$Res> {
  __$DietPreferenceCopyWithImpl(this._self, this._then);

  final _DietPreference _self;
  final $Res Function(_DietPreference) _then;

/// Create a copy of DietPreference
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_DietPreference(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
