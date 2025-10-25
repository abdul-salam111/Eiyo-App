// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_product_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadProductRecordModel {

@JsonKey(name: "barcode") String? get barcode;@JsonKey(name: "product_name") String? get productName;@JsonKey(name: "food_iq_score") double? get foodIqScore;
/// Create a copy of UploadProductRecordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadProductRecordModelCopyWith<UploadProductRecordModel> get copyWith => _$UploadProductRecordModelCopyWithImpl<UploadProductRecordModel>(this as UploadProductRecordModel, _$identity);

  /// Serializes this UploadProductRecordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadProductRecordModel&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.foodIqScore, foodIqScore) || other.foodIqScore == foodIqScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,barcode,productName,foodIqScore);

@override
String toString() {
  return 'UploadProductRecordModel(barcode: $barcode, productName: $productName, foodIqScore: $foodIqScore)';
}


}

/// @nodoc
abstract mixin class $UploadProductRecordModelCopyWith<$Res>  {
  factory $UploadProductRecordModelCopyWith(UploadProductRecordModel value, $Res Function(UploadProductRecordModel) _then) = _$UploadProductRecordModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "barcode") String? barcode,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "food_iq_score") double? foodIqScore
});




}
/// @nodoc
class _$UploadProductRecordModelCopyWithImpl<$Res>
    implements $UploadProductRecordModelCopyWith<$Res> {
  _$UploadProductRecordModelCopyWithImpl(this._self, this._then);

  final UploadProductRecordModel _self;
  final $Res Function(UploadProductRecordModel) _then;

/// Create a copy of UploadProductRecordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? barcode = freezed,Object? productName = freezed,Object? foodIqScore = freezed,}) {
  return _then(_self.copyWith(
barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,foodIqScore: freezed == foodIqScore ? _self.foodIqScore : foodIqScore // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadProductRecordModel].
extension UploadProductRecordModelPatterns on UploadProductRecordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadProductRecordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadProductRecordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadProductRecordModel value)  $default,){
final _that = this;
switch (_that) {
case _UploadProductRecordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadProductRecordModel value)?  $default,){
final _that = this;
switch (_that) {
case _UploadProductRecordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "barcode")  String? barcode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "food_iq_score")  double? foodIqScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadProductRecordModel() when $default != null:
return $default(_that.barcode,_that.productName,_that.foodIqScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "barcode")  String? barcode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "food_iq_score")  double? foodIqScore)  $default,) {final _that = this;
switch (_that) {
case _UploadProductRecordModel():
return $default(_that.barcode,_that.productName,_that.foodIqScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "barcode")  String? barcode, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "food_iq_score")  double? foodIqScore)?  $default,) {final _that = this;
switch (_that) {
case _UploadProductRecordModel() when $default != null:
return $default(_that.barcode,_that.productName,_that.foodIqScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadProductRecordModel implements UploadProductRecordModel {
  const _UploadProductRecordModel({@JsonKey(name: "barcode") this.barcode, @JsonKey(name: "product_name") this.productName, @JsonKey(name: "food_iq_score") this.foodIqScore});
  factory _UploadProductRecordModel.fromJson(Map<String, dynamic> json) => _$UploadProductRecordModelFromJson(json);

@override@JsonKey(name: "barcode") final  String? barcode;
@override@JsonKey(name: "product_name") final  String? productName;
@override@JsonKey(name: "food_iq_score") final  double? foodIqScore;

/// Create a copy of UploadProductRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadProductRecordModelCopyWith<_UploadProductRecordModel> get copyWith => __$UploadProductRecordModelCopyWithImpl<_UploadProductRecordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadProductRecordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadProductRecordModel&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.foodIqScore, foodIqScore) || other.foodIqScore == foodIqScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,barcode,productName,foodIqScore);

@override
String toString() {
  return 'UploadProductRecordModel(barcode: $barcode, productName: $productName, foodIqScore: $foodIqScore)';
}


}

/// @nodoc
abstract mixin class _$UploadProductRecordModelCopyWith<$Res> implements $UploadProductRecordModelCopyWith<$Res> {
  factory _$UploadProductRecordModelCopyWith(_UploadProductRecordModel value, $Res Function(_UploadProductRecordModel) _then) = __$UploadProductRecordModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "barcode") String? barcode,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "food_iq_score") double? foodIqScore
});




}
/// @nodoc
class __$UploadProductRecordModelCopyWithImpl<$Res>
    implements _$UploadProductRecordModelCopyWith<$Res> {
  __$UploadProductRecordModelCopyWithImpl(this._self, this._then);

  final _UploadProductRecordModel _self;
  final $Res Function(_UploadProductRecordModel) _then;

/// Create a copy of UploadProductRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? barcode = freezed,Object? productName = freezed,Object? foodIqScore = freezed,}) {
  return _then(_UploadProductRecordModel(
barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,foodIqScore: freezed == foodIqScore ? _self.foodIqScore : foodIqScore // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
