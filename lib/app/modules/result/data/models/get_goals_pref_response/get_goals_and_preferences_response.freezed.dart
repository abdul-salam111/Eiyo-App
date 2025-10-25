// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_goals_and_preferences_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetGoalsAndPreferencesResponse {

@JsonKey(name: "goals_met") List<GoalsMet>? get goalsMet;@JsonKey(name: "preferences_violated") List<GoalsMet>? get preferencesViolated;
/// Create a copy of GetGoalsAndPreferencesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetGoalsAndPreferencesResponseCopyWith<GetGoalsAndPreferencesResponse> get copyWith => _$GetGoalsAndPreferencesResponseCopyWithImpl<GetGoalsAndPreferencesResponse>(this as GetGoalsAndPreferencesResponse, _$identity);

  /// Serializes this GetGoalsAndPreferencesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetGoalsAndPreferencesResponse&&const DeepCollectionEquality().equals(other.goalsMet, goalsMet)&&const DeepCollectionEquality().equals(other.preferencesViolated, preferencesViolated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(goalsMet),const DeepCollectionEquality().hash(preferencesViolated));

@override
String toString() {
  return 'GetGoalsAndPreferencesResponse(goalsMet: $goalsMet, preferencesViolated: $preferencesViolated)';
}


}

/// @nodoc
abstract mixin class $GetGoalsAndPreferencesResponseCopyWith<$Res>  {
  factory $GetGoalsAndPreferencesResponseCopyWith(GetGoalsAndPreferencesResponse value, $Res Function(GetGoalsAndPreferencesResponse) _then) = _$GetGoalsAndPreferencesResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "goals_met") List<GoalsMet>? goalsMet,@JsonKey(name: "preferences_violated") List<GoalsMet>? preferencesViolated
});




}
/// @nodoc
class _$GetGoalsAndPreferencesResponseCopyWithImpl<$Res>
    implements $GetGoalsAndPreferencesResponseCopyWith<$Res> {
  _$GetGoalsAndPreferencesResponseCopyWithImpl(this._self, this._then);

  final GetGoalsAndPreferencesResponse _self;
  final $Res Function(GetGoalsAndPreferencesResponse) _then;

/// Create a copy of GetGoalsAndPreferencesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? goalsMet = freezed,Object? preferencesViolated = freezed,}) {
  return _then(_self.copyWith(
goalsMet: freezed == goalsMet ? _self.goalsMet : goalsMet // ignore: cast_nullable_to_non_nullable
as List<GoalsMet>?,preferencesViolated: freezed == preferencesViolated ? _self.preferencesViolated : preferencesViolated // ignore: cast_nullable_to_non_nullable
as List<GoalsMet>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetGoalsAndPreferencesResponse].
extension GetGoalsAndPreferencesResponsePatterns on GetGoalsAndPreferencesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetGoalsAndPreferencesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetGoalsAndPreferencesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetGoalsAndPreferencesResponse value)  $default,){
final _that = this;
switch (_that) {
case _GetGoalsAndPreferencesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetGoalsAndPreferencesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GetGoalsAndPreferencesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "goals_met")  List<GoalsMet>? goalsMet, @JsonKey(name: "preferences_violated")  List<GoalsMet>? preferencesViolated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetGoalsAndPreferencesResponse() when $default != null:
return $default(_that.goalsMet,_that.preferencesViolated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "goals_met")  List<GoalsMet>? goalsMet, @JsonKey(name: "preferences_violated")  List<GoalsMet>? preferencesViolated)  $default,) {final _that = this;
switch (_that) {
case _GetGoalsAndPreferencesResponse():
return $default(_that.goalsMet,_that.preferencesViolated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "goals_met")  List<GoalsMet>? goalsMet, @JsonKey(name: "preferences_violated")  List<GoalsMet>? preferencesViolated)?  $default,) {final _that = this;
switch (_that) {
case _GetGoalsAndPreferencesResponse() when $default != null:
return $default(_that.goalsMet,_that.preferencesViolated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetGoalsAndPreferencesResponse implements GetGoalsAndPreferencesResponse {
  const _GetGoalsAndPreferencesResponse({@JsonKey(name: "goals_met") final  List<GoalsMet>? goalsMet, @JsonKey(name: "preferences_violated") final  List<GoalsMet>? preferencesViolated}): _goalsMet = goalsMet,_preferencesViolated = preferencesViolated;
  factory _GetGoalsAndPreferencesResponse.fromJson(Map<String, dynamic> json) => _$GetGoalsAndPreferencesResponseFromJson(json);

 final  List<GoalsMet>? _goalsMet;
@override@JsonKey(name: "goals_met") List<GoalsMet>? get goalsMet {
  final value = _goalsMet;
  if (value == null) return null;
  if (_goalsMet is EqualUnmodifiableListView) return _goalsMet;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<GoalsMet>? _preferencesViolated;
@override@JsonKey(name: "preferences_violated") List<GoalsMet>? get preferencesViolated {
  final value = _preferencesViolated;
  if (value == null) return null;
  if (_preferencesViolated is EqualUnmodifiableListView) return _preferencesViolated;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetGoalsAndPreferencesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetGoalsAndPreferencesResponseCopyWith<_GetGoalsAndPreferencesResponse> get copyWith => __$GetGoalsAndPreferencesResponseCopyWithImpl<_GetGoalsAndPreferencesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetGoalsAndPreferencesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetGoalsAndPreferencesResponse&&const DeepCollectionEquality().equals(other._goalsMet, _goalsMet)&&const DeepCollectionEquality().equals(other._preferencesViolated, _preferencesViolated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_goalsMet),const DeepCollectionEquality().hash(_preferencesViolated));

@override
String toString() {
  return 'GetGoalsAndPreferencesResponse(goalsMet: $goalsMet, preferencesViolated: $preferencesViolated)';
}


}

/// @nodoc
abstract mixin class _$GetGoalsAndPreferencesResponseCopyWith<$Res> implements $GetGoalsAndPreferencesResponseCopyWith<$Res> {
  factory _$GetGoalsAndPreferencesResponseCopyWith(_GetGoalsAndPreferencesResponse value, $Res Function(_GetGoalsAndPreferencesResponse) _then) = __$GetGoalsAndPreferencesResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "goals_met") List<GoalsMet>? goalsMet,@JsonKey(name: "preferences_violated") List<GoalsMet>? preferencesViolated
});




}
/// @nodoc
class __$GetGoalsAndPreferencesResponseCopyWithImpl<$Res>
    implements _$GetGoalsAndPreferencesResponseCopyWith<$Res> {
  __$GetGoalsAndPreferencesResponseCopyWithImpl(this._self, this._then);

  final _GetGoalsAndPreferencesResponse _self;
  final $Res Function(_GetGoalsAndPreferencesResponse) _then;

/// Create a copy of GetGoalsAndPreferencesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? goalsMet = freezed,Object? preferencesViolated = freezed,}) {
  return _then(_GetGoalsAndPreferencesResponse(
goalsMet: freezed == goalsMet ? _self._goalsMet : goalsMet // ignore: cast_nullable_to_non_nullable
as List<GoalsMet>?,preferencesViolated: freezed == preferencesViolated ? _self._preferencesViolated : preferencesViolated // ignore: cast_nullable_to_non_nullable
as List<GoalsMet>?,
  ));
}


}


/// @nodoc
mixin _$GoalsMet {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;
/// Create a copy of GoalsMet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoalsMetCopyWith<GoalsMet> get copyWith => _$GoalsMetCopyWithImpl<GoalsMet>(this as GoalsMet, _$identity);

  /// Serializes this GoalsMet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoalsMet&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'GoalsMet(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $GoalsMetCopyWith<$Res>  {
  factory $GoalsMetCopyWith(GoalsMet value, $Res Function(GoalsMet) _then) = _$GoalsMetCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class _$GoalsMetCopyWithImpl<$Res>
    implements $GoalsMetCopyWith<$Res> {
  _$GoalsMetCopyWithImpl(this._self, this._then);

  final GoalsMet _self;
  final $Res Function(GoalsMet) _then;

/// Create a copy of GoalsMet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GoalsMet].
extension GoalsMetPatterns on GoalsMet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoalsMet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoalsMet() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoalsMet value)  $default,){
final _that = this;
switch (_that) {
case _GoalsMet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoalsMet value)?  $default,){
final _that = this;
switch (_that) {
case _GoalsMet() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoalsMet() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name)  $default,) {final _that = this;
switch (_that) {
case _GoalsMet():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name)?  $default,) {final _that = this;
switch (_that) {
case _GoalsMet() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoalsMet implements GoalsMet {
  const _GoalsMet({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name});
  factory _GoalsMet.fromJson(Map<String, dynamic> json) => _$GoalsMetFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;

/// Create a copy of GoalsMet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoalsMetCopyWith<_GoalsMet> get copyWith => __$GoalsMetCopyWithImpl<_GoalsMet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoalsMetToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoalsMet&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'GoalsMet(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$GoalsMetCopyWith<$Res> implements $GoalsMetCopyWith<$Res> {
  factory _$GoalsMetCopyWith(_GoalsMet value, $Res Function(_GoalsMet) _then) = __$GoalsMetCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class __$GoalsMetCopyWithImpl<$Res>
    implements _$GoalsMetCopyWith<$Res> {
  __$GoalsMetCopyWithImpl(this._self, this._then);

  final _GoalsMet _self;
  final $Res Function(_GoalsMet) _then;

/// Create a copy of GoalsMet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_GoalsMet(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
