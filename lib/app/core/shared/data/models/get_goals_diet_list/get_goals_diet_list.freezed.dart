// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_goals_diet_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetGoalsDietList {

@JsonKey(name: "goals") List<DietPreference>? get goals;@JsonKey(name: "diet_preferences") List<DietPreference>? get dietPreferences;
/// Create a copy of GetGoalsDietList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGoalsDietListCopyWith<GetGoalsDietList> get copyWith => _$GetGoalsDietListCopyWithImpl<GetGoalsDietList>(this as GetGoalsDietList, _$identity);

  /// Serializes this GetGoalsDietList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGoalsDietList&&const DeepCollectionEquality().equals(other.goals, goals)&&const DeepCollectionEquality().equals(other.dietPreferences, dietPreferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(goals),const DeepCollectionEquality().hash(dietPreferences));

@override
String toString() {
  return 'GetGoalsDietList(goals: $goals, dietPreferences: $dietPreferences)';
}


}

/// @nodoc
abstract mixin class $GetGoalsDietListCopyWith<$Res>  {
  factory $GetGoalsDietListCopyWith(GetGoalsDietList value, $Res Function(GetGoalsDietList) _then) = _$GetGoalsDietListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "goals") List<DietPreference>? goals,@JsonKey(name: "diet_preferences") List<DietPreference>? dietPreferences
});




}
/// @nodoc
class _$GetGoalsDietListCopyWithImpl<$Res>
    implements $GetGoalsDietListCopyWith<$Res> {
  _$GetGoalsDietListCopyWithImpl(this._self, this._then);

  final GetGoalsDietList _self;
  final $Res Function(GetGoalsDietList) _then;

/// Create a copy of GetGoalsDietList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? goals = freezed,Object? dietPreferences = freezed,}) {
  return _then(_self.copyWith(
goals: freezed == goals ? _self.goals : goals // ignore: cast_nullable_to_non_nullable
as List<DietPreference>?,dietPreferences: freezed == dietPreferences ? _self.dietPreferences : dietPreferences // ignore: cast_nullable_to_non_nullable
as List<DietPreference>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetGoalsDietList].
extension GetGoalsDietListPatterns on GetGoalsDietList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetGoalsDietList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetGoalsDietList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetGoalsDietList value)  $default,){
final _that = this;
switch (_that) {
case _GetGoalsDietList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetGoalsDietList value)?  $default,){
final _that = this;
switch (_that) {
case _GetGoalsDietList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "goals")  List<DietPreference>? goals, @JsonKey(name: "diet_preferences")  List<DietPreference>? dietPreferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetGoalsDietList() when $default != null:
return $default(_that.goals,_that.dietPreferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "goals")  List<DietPreference>? goals, @JsonKey(name: "diet_preferences")  List<DietPreference>? dietPreferences)  $default,) {final _that = this;
switch (_that) {
case _GetGoalsDietList():
return $default(_that.goals,_that.dietPreferences);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "goals")  List<DietPreference>? goals, @JsonKey(name: "diet_preferences")  List<DietPreference>? dietPreferences)?  $default,) {final _that = this;
switch (_that) {
case _GetGoalsDietList() when $default != null:
return $default(_that.goals,_that.dietPreferences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetGoalsDietList implements GetGoalsDietList {
  const _GetGoalsDietList({@JsonKey(name: "goals") final  List<DietPreference>? goals, @JsonKey(name: "diet_preferences") final  List<DietPreference>? dietPreferences}): _goals = goals,_dietPreferences = dietPreferences;
  factory _GetGoalsDietList.fromJson(Map<String, dynamic> json) => _$GetGoalsDietListFromJson(json);

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


/// Create a copy of GetGoalsDietList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGoalsDietListCopyWith<_GetGoalsDietList> get copyWith => __$GetGoalsDietListCopyWithImpl<_GetGoalsDietList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetGoalsDietListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGoalsDietList&&const DeepCollectionEquality().equals(other._goals, _goals)&&const DeepCollectionEquality().equals(other._dietPreferences, _dietPreferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_goals),const DeepCollectionEquality().hash(_dietPreferences));

@override
String toString() {
  return 'GetGoalsDietList(goals: $goals, dietPreferences: $dietPreferences)';
}


}

/// @nodoc
abstract mixin class _$GetGoalsDietListCopyWith<$Res> implements $GetGoalsDietListCopyWith<$Res> {
  factory _$GetGoalsDietListCopyWith(_GetGoalsDietList value, $Res Function(_GetGoalsDietList) _then) = __$GetGoalsDietListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "goals") List<DietPreference>? goals,@JsonKey(name: "diet_preferences") List<DietPreference>? dietPreferences
});




}
/// @nodoc
class __$GetGoalsDietListCopyWithImpl<$Res>
    implements _$GetGoalsDietListCopyWith<$Res> {
  __$GetGoalsDietListCopyWithImpl(this._self, this._then);

  final _GetGoalsDietList _self;
  final $Res Function(_GetGoalsDietList) _then;

/// Create a copy of GetGoalsDietList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? goals = freezed,Object? dietPreferences = freezed,}) {
  return _then(_GetGoalsDietList(
goals: freezed == goals ? _self._goals : goals // ignore: cast_nullable_to_non_nullable
as List<DietPreference>?,dietPreferences: freezed == dietPreferences ? _self._dietPreferences : dietPreferences // ignore: cast_nullable_to_non_nullable
as List<DietPreference>?,
  ));
}


}


/// @nodoc
mixin _$DietPreference {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "description") String? get description;
/// Create a copy of DietPreference
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DietPreferenceCopyWith<DietPreference> get copyWith => _$DietPreferenceCopyWithImpl<DietPreference>(this as DietPreference, _$identity);

  /// Serializes this DietPreference to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DietPreference&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'DietPreference(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $DietPreferenceCopyWith<$Res>  {
  factory $DietPreferenceCopyWith(DietPreference value, $Res Function(DietPreference) _then) = _$DietPreferenceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "description") String? description
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "description")  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DietPreference() when $default != null:
return $default(_that.id,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "description")  String? description)  $default,) {final _that = this;
switch (_that) {
case _DietPreference():
return $default(_that.id,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "description")  String? description)?  $default,) {final _that = this;
switch (_that) {
case _DietPreference() when $default != null:
return $default(_that.id,_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DietPreference implements DietPreference {
  const _DietPreference({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "description") this.description});
  factory _DietPreference.fromJson(Map<String, dynamic> json) => _$DietPreferenceFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "description") final  String? description;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DietPreference&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'DietPreference(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$DietPreferenceCopyWith<$Res> implements $DietPreferenceCopyWith<$Res> {
  factory _$DietPreferenceCopyWith(_DietPreference value, $Res Function(_DietPreference) _then) = __$DietPreferenceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "description") String? description
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,}) {
  return _then(_DietPreference(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
