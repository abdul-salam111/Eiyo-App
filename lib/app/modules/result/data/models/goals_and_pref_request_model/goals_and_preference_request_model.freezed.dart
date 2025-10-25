// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'goals_and_preference_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoalsAndPreferenceRequestModel {

@JsonKey(name: "nutriments") String? get nutriments;@JsonKey(name: "ingredients") String? get ingredients;
/// Create a copy of GoalsAndPreferenceRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoalsAndPreferenceRequestModelCopyWith<GoalsAndPreferenceRequestModel> get copyWith => _$GoalsAndPreferenceRequestModelCopyWithImpl<GoalsAndPreferenceRequestModel>(this as GoalsAndPreferenceRequestModel, _$identity);

  /// Serializes this GoalsAndPreferenceRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoalsAndPreferenceRequestModel&&(identical(other.nutriments, nutriments) || other.nutriments == nutriments)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nutriments,ingredients);

@override
String toString() {
  return 'GoalsAndPreferenceRequestModel(nutriments: $nutriments, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class $GoalsAndPreferenceRequestModelCopyWith<$Res>  {
  factory $GoalsAndPreferenceRequestModelCopyWith(GoalsAndPreferenceRequestModel value, $Res Function(GoalsAndPreferenceRequestModel) _then) = _$GoalsAndPreferenceRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "nutriments") String? nutriments,@JsonKey(name: "ingredients") String? ingredients
});




}
/// @nodoc
class _$GoalsAndPreferenceRequestModelCopyWithImpl<$Res>
    implements $GoalsAndPreferenceRequestModelCopyWith<$Res> {
  _$GoalsAndPreferenceRequestModelCopyWithImpl(this._self, this._then);

  final GoalsAndPreferenceRequestModel _self;
  final $Res Function(GoalsAndPreferenceRequestModel) _then;

/// Create a copy of GoalsAndPreferenceRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nutriments = freezed,Object? ingredients = freezed,}) {
  return _then(_self.copyWith(
nutriments: freezed == nutriments ? _self.nutriments : nutriments // ignore: cast_nullable_to_non_nullable
as String?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GoalsAndPreferenceRequestModel].
extension GoalsAndPreferenceRequestModelPatterns on GoalsAndPreferenceRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoalsAndPreferenceRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoalsAndPreferenceRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoalsAndPreferenceRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _GoalsAndPreferenceRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoalsAndPreferenceRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _GoalsAndPreferenceRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "nutriments")  String? nutriments, @JsonKey(name: "ingredients")  String? ingredients)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoalsAndPreferenceRequestModel() when $default != null:
return $default(_that.nutriments,_that.ingredients);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "nutriments")  String? nutriments, @JsonKey(name: "ingredients")  String? ingredients)  $default,) {final _that = this;
switch (_that) {
case _GoalsAndPreferenceRequestModel():
return $default(_that.nutriments,_that.ingredients);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "nutriments")  String? nutriments, @JsonKey(name: "ingredients")  String? ingredients)?  $default,) {final _that = this;
switch (_that) {
case _GoalsAndPreferenceRequestModel() when $default != null:
return $default(_that.nutriments,_that.ingredients);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoalsAndPreferenceRequestModel implements GoalsAndPreferenceRequestModel {
  const _GoalsAndPreferenceRequestModel({@JsonKey(name: "nutriments") this.nutriments, @JsonKey(name: "ingredients") this.ingredients});
  factory _GoalsAndPreferenceRequestModel.fromJson(Map<String, dynamic> json) => _$GoalsAndPreferenceRequestModelFromJson(json);

@override@JsonKey(name: "nutriments") final  String? nutriments;
@override@JsonKey(name: "ingredients") final  String? ingredients;

/// Create a copy of GoalsAndPreferenceRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoalsAndPreferenceRequestModelCopyWith<_GoalsAndPreferenceRequestModel> get copyWith => __$GoalsAndPreferenceRequestModelCopyWithImpl<_GoalsAndPreferenceRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoalsAndPreferenceRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoalsAndPreferenceRequestModel&&(identical(other.nutriments, nutriments) || other.nutriments == nutriments)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nutriments,ingredients);

@override
String toString() {
  return 'GoalsAndPreferenceRequestModel(nutriments: $nutriments, ingredients: $ingredients)';
}


}

/// @nodoc
abstract mixin class _$GoalsAndPreferenceRequestModelCopyWith<$Res> implements $GoalsAndPreferenceRequestModelCopyWith<$Res> {
  factory _$GoalsAndPreferenceRequestModelCopyWith(_GoalsAndPreferenceRequestModel value, $Res Function(_GoalsAndPreferenceRequestModel) _then) = __$GoalsAndPreferenceRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "nutriments") String? nutriments,@JsonKey(name: "ingredients") String? ingredients
});




}
/// @nodoc
class __$GoalsAndPreferenceRequestModelCopyWithImpl<$Res>
    implements _$GoalsAndPreferenceRequestModelCopyWith<$Res> {
  __$GoalsAndPreferenceRequestModelCopyWithImpl(this._self, this._then);

  final _GoalsAndPreferenceRequestModel _self;
  final $Res Function(_GoalsAndPreferenceRequestModel) _then;

/// Create a copy of GoalsAndPreferenceRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nutriments = freezed,Object? ingredients = freezed,}) {
  return _then(_GoalsAndPreferenceRequestModel(
nutriments: freezed == nutriments ? _self.nutriments : nutriments // ignore: cast_nullable_to_non_nullable
as String?,ingredients: freezed == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
