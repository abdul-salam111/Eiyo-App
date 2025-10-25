// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

@JsonKey(name: "username") String? get username;@JsonKey(name: "password") String? get password;@JsonKey(name: "full_name") String? get fullName;@JsonKey(name: "age_from") int? get ageFrom;@JsonKey(name: "age_to") int? get ageTo;@JsonKey(name: "goals") List<int>? get goals;@JsonKey(name: "diet_preferences") List<int>? get dietPreferences;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.ageFrom, ageFrom) || other.ageFrom == ageFrom)&&(identical(other.ageTo, ageTo) || other.ageTo == ageTo)&&const DeepCollectionEquality().equals(other.goals, goals)&&const DeepCollectionEquality().equals(other.dietPreferences, dietPreferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password,fullName,ageFrom,ageTo,const DeepCollectionEquality().hash(goals),const DeepCollectionEquality().hash(dietPreferences));

@override
String toString() {
  return 'UserModel(username: $username, password: $password, fullName: $fullName, ageFrom: $ageFrom, ageTo: $ageTo, goals: $goals, dietPreferences: $dietPreferences)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "username") String? username,@JsonKey(name: "password") String? password,@JsonKey(name: "full_name") String? fullName,@JsonKey(name: "age_from") int? ageFrom,@JsonKey(name: "age_to") int? ageTo,@JsonKey(name: "goals") List<int>? goals,@JsonKey(name: "diet_preferences") List<int>? dietPreferences
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = freezed,Object? password = freezed,Object? fullName = freezed,Object? ageFrom = freezed,Object? ageTo = freezed,Object? goals = freezed,Object? dietPreferences = freezed,}) {
  return _then(_self.copyWith(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,ageFrom: freezed == ageFrom ? _self.ageFrom : ageFrom // ignore: cast_nullable_to_non_nullable
as int?,ageTo: freezed == ageTo ? _self.ageTo : ageTo // ignore: cast_nullable_to_non_nullable
as int?,goals: freezed == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as List<int>?,dietPreferences: freezed == dietPreferences ? _self.dietPreferences : dietPreferences // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "username")  String? username, @JsonKey(name: "password")  String? password, @JsonKey(name: "full_name")  String? fullName, @JsonKey(name: "age_from")  int? ageFrom, @JsonKey(name: "age_to")  int? ageTo, @JsonKey(name: "goals")  List<int>? goals, @JsonKey(name: "diet_preferences")  List<int>? dietPreferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.username,_that.password,_that.fullName,_that.ageFrom,_that.ageTo,_that.goals,_that.dietPreferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "username")  String? username, @JsonKey(name: "password")  String? password, @JsonKey(name: "full_name")  String? fullName, @JsonKey(name: "age_from")  int? ageFrom, @JsonKey(name: "age_to")  int? ageTo, @JsonKey(name: "goals")  List<int>? goals, @JsonKey(name: "diet_preferences")  List<int>? dietPreferences)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.username,_that.password,_that.fullName,_that.ageFrom,_that.ageTo,_that.goals,_that.dietPreferences);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "username")  String? username, @JsonKey(name: "password")  String? password, @JsonKey(name: "full_name")  String? fullName, @JsonKey(name: "age_from")  int? ageFrom, @JsonKey(name: "age_to")  int? ageTo, @JsonKey(name: "goals")  List<int>? goals, @JsonKey(name: "diet_preferences")  List<int>? dietPreferences)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.username,_that.password,_that.fullName,_that.ageFrom,_that.ageTo,_that.goals,_that.dietPreferences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({@JsonKey(name: "username") this.username, @JsonKey(name: "password") this.password, @JsonKey(name: "full_name") this.fullName, @JsonKey(name: "age_from") this.ageFrom, @JsonKey(name: "age_to") this.ageTo, @JsonKey(name: "goals") final  List<int>? goals, @JsonKey(name: "diet_preferences") final  List<int>? dietPreferences}): _goals = goals,_dietPreferences = dietPreferences;
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(name: "username") final  String? username;
@override@JsonKey(name: "password") final  String? password;
@override@JsonKey(name: "full_name") final  String? fullName;
@override@JsonKey(name: "age_from") final  int? ageFrom;
@override@JsonKey(name: "age_to") final  int? ageTo;
 final  List<int>? _goals;
@override@JsonKey(name: "goals") List<int>? get goals {
  final value = _goals;
  if (value == null) return null;
  if (_goals is EqualUnmodifiableListView) return _goals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<int>? _dietPreferences;
@override@JsonKey(name: "diet_preferences") List<int>? get dietPreferences {
  final value = _dietPreferences;
  if (value == null) return null;
  if (_dietPreferences is EqualUnmodifiableListView) return _dietPreferences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.ageFrom, ageFrom) || other.ageFrom == ageFrom)&&(identical(other.ageTo, ageTo) || other.ageTo == ageTo)&&const DeepCollectionEquality().equals(other._goals, _goals)&&const DeepCollectionEquality().equals(other._dietPreferences, _dietPreferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password,fullName,ageFrom,ageTo,const DeepCollectionEquality().hash(_goals),const DeepCollectionEquality().hash(_dietPreferences));

@override
String toString() {
  return 'UserModel(username: $username, password: $password, fullName: $fullName, ageFrom: $ageFrom, ageTo: $ageTo, goals: $goals, dietPreferences: $dietPreferences)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "username") String? username,@JsonKey(name: "password") String? password,@JsonKey(name: "full_name") String? fullName,@JsonKey(name: "age_from") int? ageFrom,@JsonKey(name: "age_to") int? ageTo,@JsonKey(name: "goals") List<int>? goals,@JsonKey(name: "diet_preferences") List<int>? dietPreferences
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = freezed,Object? password = freezed,Object? fullName = freezed,Object? ageFrom = freezed,Object? ageTo = freezed,Object? goals = freezed,Object? dietPreferences = freezed,}) {
  return _then(_UserModel(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,ageFrom: freezed == ageFrom ? _self.ageFrom : ageFrom // ignore: cast_nullable_to_non_nullable
as int?,ageTo: freezed == ageTo ? _self.ageTo : ageTo // ignore: cast_nullable_to_non_nullable
as int?,goals: freezed == goals ? _self._goals : goals // ignore: cast_nullable_to_non_nullable
as List<int>?,dietPreferences: freezed == dietPreferences ? _self._dietPreferences : dietPreferences // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}


}

// dart format on
