// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_suggested_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetSuggestedProductModel {

@JsonKey(name: "suggested_products") List<SuggestedProduct>? get suggestedProducts;@JsonKey(name: "user_goals") List<UserGoal>? get userGoals;@JsonKey(name: "user_preferences") List<UserPreference>? get userPreferences;
/// Create a copy of GetSuggestedProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSuggestedProductModelCopyWith<GetSuggestedProductModel> get copyWith => _$GetSuggestedProductModelCopyWithImpl<GetSuggestedProductModel>(this as GetSuggestedProductModel, _$identity);

  /// Serializes this GetSuggestedProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSuggestedProductModel&&const DeepCollectionEquality().equals(other.suggestedProducts, suggestedProducts)&&const DeepCollectionEquality().equals(other.userGoals, userGoals)&&const DeepCollectionEquality().equals(other.userPreferences, userPreferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(suggestedProducts),const DeepCollectionEquality().hash(userGoals),const DeepCollectionEquality().hash(userPreferences));

@override
String toString() {
  return 'GetSuggestedProductModel(suggestedProducts: $suggestedProducts, userGoals: $userGoals, userPreferences: $userPreferences)';
}


}

/// @nodoc
abstract mixin class $GetSuggestedProductModelCopyWith<$Res>  {
  factory $GetSuggestedProductModelCopyWith(GetSuggestedProductModel value, $Res Function(GetSuggestedProductModel) _then) = _$GetSuggestedProductModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "suggested_products") List<SuggestedProduct>? suggestedProducts,@JsonKey(name: "user_goals") List<UserGoal>? userGoals,@JsonKey(name: "user_preferences") List<UserPreference>? userPreferences
});




}
/// @nodoc
class _$GetSuggestedProductModelCopyWithImpl<$Res>
    implements $GetSuggestedProductModelCopyWith<$Res> {
  _$GetSuggestedProductModelCopyWithImpl(this._self, this._then);

  final GetSuggestedProductModel _self;
  final $Res Function(GetSuggestedProductModel) _then;

/// Create a copy of GetSuggestedProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? suggestedProducts = freezed,Object? userGoals = freezed,Object? userPreferences = freezed,}) {
  return _then(_self.copyWith(
suggestedProducts: freezed == suggestedProducts ? _self.suggestedProducts : suggestedProducts // ignore: cast_nullable_to_non_nullable
as List<SuggestedProduct>?,userGoals: freezed == userGoals ? _self.userGoals : userGoals // ignore: cast_nullable_to_non_nullable
as List<UserGoal>?,userPreferences: freezed == userPreferences ? _self.userPreferences : userPreferences // ignore: cast_nullable_to_non_nullable
as List<UserPreference>?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetSuggestedProductModel].
extension GetSuggestedProductModelPatterns on GetSuggestedProductModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetSuggestedProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSuggestedProductModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetSuggestedProductModel value)  $default,){
final _that = this;
switch (_that) {
case _GetSuggestedProductModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetSuggestedProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetSuggestedProductModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "suggested_products")  List<SuggestedProduct>? suggestedProducts, @JsonKey(name: "user_goals")  List<UserGoal>? userGoals, @JsonKey(name: "user_preferences")  List<UserPreference>? userPreferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSuggestedProductModel() when $default != null:
return $default(_that.suggestedProducts,_that.userGoals,_that.userPreferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "suggested_products")  List<SuggestedProduct>? suggestedProducts, @JsonKey(name: "user_goals")  List<UserGoal>? userGoals, @JsonKey(name: "user_preferences")  List<UserPreference>? userPreferences)  $default,) {final _that = this;
switch (_that) {
case _GetSuggestedProductModel():
return $default(_that.suggestedProducts,_that.userGoals,_that.userPreferences);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "suggested_products")  List<SuggestedProduct>? suggestedProducts, @JsonKey(name: "user_goals")  List<UserGoal>? userGoals, @JsonKey(name: "user_preferences")  List<UserPreference>? userPreferences)?  $default,) {final _that = this;
switch (_that) {
case _GetSuggestedProductModel() when $default != null:
return $default(_that.suggestedProducts,_that.userGoals,_that.userPreferences);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetSuggestedProductModel implements GetSuggestedProductModel {
  const _GetSuggestedProductModel({@JsonKey(name: "suggested_products") final  List<SuggestedProduct>? suggestedProducts, @JsonKey(name: "user_goals") final  List<UserGoal>? userGoals, @JsonKey(name: "user_preferences") final  List<UserPreference>? userPreferences}): _suggestedProducts = suggestedProducts,_userGoals = userGoals,_userPreferences = userPreferences;
  factory _GetSuggestedProductModel.fromJson(Map<String, dynamic> json) => _$GetSuggestedProductModelFromJson(json);

 final  List<SuggestedProduct>? _suggestedProducts;
@override@JsonKey(name: "suggested_products") List<SuggestedProduct>? get suggestedProducts {
  final value = _suggestedProducts;
  if (value == null) return null;
  if (_suggestedProducts is EqualUnmodifiableListView) return _suggestedProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<UserGoal>? _userGoals;
@override@JsonKey(name: "user_goals") List<UserGoal>? get userGoals {
  final value = _userGoals;
  if (value == null) return null;
  if (_userGoals is EqualUnmodifiableListView) return _userGoals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<UserPreference>? _userPreferences;
@override@JsonKey(name: "user_preferences") List<UserPreference>? get userPreferences {
  final value = _userPreferences;
  if (value == null) return null;
  if (_userPreferences is EqualUnmodifiableListView) return _userPreferences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetSuggestedProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSuggestedProductModelCopyWith<_GetSuggestedProductModel> get copyWith => __$GetSuggestedProductModelCopyWithImpl<_GetSuggestedProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetSuggestedProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSuggestedProductModel&&const DeepCollectionEquality().equals(other._suggestedProducts, _suggestedProducts)&&const DeepCollectionEquality().equals(other._userGoals, _userGoals)&&const DeepCollectionEquality().equals(other._userPreferences, _userPreferences));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_suggestedProducts),const DeepCollectionEquality().hash(_userGoals),const DeepCollectionEquality().hash(_userPreferences));

@override
String toString() {
  return 'GetSuggestedProductModel(suggestedProducts: $suggestedProducts, userGoals: $userGoals, userPreferences: $userPreferences)';
}


}

/// @nodoc
abstract mixin class _$GetSuggestedProductModelCopyWith<$Res> implements $GetSuggestedProductModelCopyWith<$Res> {
  factory _$GetSuggestedProductModelCopyWith(_GetSuggestedProductModel value, $Res Function(_GetSuggestedProductModel) _then) = __$GetSuggestedProductModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "suggested_products") List<SuggestedProduct>? suggestedProducts,@JsonKey(name: "user_goals") List<UserGoal>? userGoals,@JsonKey(name: "user_preferences") List<UserPreference>? userPreferences
});




}
/// @nodoc
class __$GetSuggestedProductModelCopyWithImpl<$Res>
    implements _$GetSuggestedProductModelCopyWith<$Res> {
  __$GetSuggestedProductModelCopyWithImpl(this._self, this._then);

  final _GetSuggestedProductModel _self;
  final $Res Function(_GetSuggestedProductModel) _then;

/// Create a copy of GetSuggestedProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? suggestedProducts = freezed,Object? userGoals = freezed,Object? userPreferences = freezed,}) {
  return _then(_GetSuggestedProductModel(
suggestedProducts: freezed == suggestedProducts ? _self._suggestedProducts : suggestedProducts // ignore: cast_nullable_to_non_nullable
as List<SuggestedProduct>?,userGoals: freezed == userGoals ? _self._userGoals : userGoals // ignore: cast_nullable_to_non_nullable
as List<UserGoal>?,userPreferences: freezed == userPreferences ? _self._userPreferences : userPreferences // ignore: cast_nullable_to_non_nullable
as List<UserPreference>?,
  ));
}


}


/// @nodoc
mixin _$SuggestedProduct {

@JsonKey(name: "product_name") String? get productName;@JsonKey(name: "brand") String? get brand;@JsonKey(name: "nutrition_grade") String? get nutritionGrade;@JsonKey(name: "image_url") String? get imageUrl;@JsonKey(name: "barcode") String? get barcode;
/// Create a copy of SuggestedProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuggestedProductCopyWith<SuggestedProduct> get copyWith => _$SuggestedProductCopyWithImpl<SuggestedProduct>(this as SuggestedProduct, _$identity);

  /// Serializes this SuggestedProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuggestedProduct&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.nutritionGrade, nutritionGrade) || other.nutritionGrade == nutritionGrade)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.barcode, barcode) || other.barcode == barcode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,brand,nutritionGrade,imageUrl,barcode);

@override
String toString() {
  return 'SuggestedProduct(productName: $productName, brand: $brand, nutritionGrade: $nutritionGrade, imageUrl: $imageUrl, barcode: $barcode)';
}


}

/// @nodoc
abstract mixin class $SuggestedProductCopyWith<$Res>  {
  factory $SuggestedProductCopyWith(SuggestedProduct value, $Res Function(SuggestedProduct) _then) = _$SuggestedProductCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "product_name") String? productName,@JsonKey(name: "brand") String? brand,@JsonKey(name: "nutrition_grade") String? nutritionGrade,@JsonKey(name: "image_url") String? imageUrl,@JsonKey(name: "barcode") String? barcode
});




}
/// @nodoc
class _$SuggestedProductCopyWithImpl<$Res>
    implements $SuggestedProductCopyWith<$Res> {
  _$SuggestedProductCopyWithImpl(this._self, this._then);

  final SuggestedProduct _self;
  final $Res Function(SuggestedProduct) _then;

/// Create a copy of SuggestedProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productName = freezed,Object? brand = freezed,Object? nutritionGrade = freezed,Object? imageUrl = freezed,Object? barcode = freezed,}) {
  return _then(_self.copyWith(
productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,nutritionGrade: freezed == nutritionGrade ? _self.nutritionGrade : nutritionGrade // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SuggestedProduct].
extension SuggestedProductPatterns on SuggestedProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SuggestedProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SuggestedProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SuggestedProduct value)  $default,){
final _that = this;
switch (_that) {
case _SuggestedProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SuggestedProduct value)?  $default,){
final _that = this;
switch (_that) {
case _SuggestedProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "product_name")  String? productName, @JsonKey(name: "brand")  String? brand, @JsonKey(name: "nutrition_grade")  String? nutritionGrade, @JsonKey(name: "image_url")  String? imageUrl, @JsonKey(name: "barcode")  String? barcode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SuggestedProduct() when $default != null:
return $default(_that.productName,_that.brand,_that.nutritionGrade,_that.imageUrl,_that.barcode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "product_name")  String? productName, @JsonKey(name: "brand")  String? brand, @JsonKey(name: "nutrition_grade")  String? nutritionGrade, @JsonKey(name: "image_url")  String? imageUrl, @JsonKey(name: "barcode")  String? barcode)  $default,) {final _that = this;
switch (_that) {
case _SuggestedProduct():
return $default(_that.productName,_that.brand,_that.nutritionGrade,_that.imageUrl,_that.barcode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "product_name")  String? productName, @JsonKey(name: "brand")  String? brand, @JsonKey(name: "nutrition_grade")  String? nutritionGrade, @JsonKey(name: "image_url")  String? imageUrl, @JsonKey(name: "barcode")  String? barcode)?  $default,) {final _that = this;
switch (_that) {
case _SuggestedProduct() when $default != null:
return $default(_that.productName,_that.brand,_that.nutritionGrade,_that.imageUrl,_that.barcode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SuggestedProduct implements SuggestedProduct {
  const _SuggestedProduct({@JsonKey(name: "product_name") this.productName, @JsonKey(name: "brand") this.brand, @JsonKey(name: "nutrition_grade") this.nutritionGrade, @JsonKey(name: "image_url") this.imageUrl, @JsonKey(name: "barcode") this.barcode});
  factory _SuggestedProduct.fromJson(Map<String, dynamic> json) => _$SuggestedProductFromJson(json);

@override@JsonKey(name: "product_name") final  String? productName;
@override@JsonKey(name: "brand") final  String? brand;
@override@JsonKey(name: "nutrition_grade") final  String? nutritionGrade;
@override@JsonKey(name: "image_url") final  String? imageUrl;
@override@JsonKey(name: "barcode") final  String? barcode;

/// Create a copy of SuggestedProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuggestedProductCopyWith<_SuggestedProduct> get copyWith => __$SuggestedProductCopyWithImpl<_SuggestedProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SuggestedProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuggestedProduct&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.nutritionGrade, nutritionGrade) || other.nutritionGrade == nutritionGrade)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.barcode, barcode) || other.barcode == barcode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productName,brand,nutritionGrade,imageUrl,barcode);

@override
String toString() {
  return 'SuggestedProduct(productName: $productName, brand: $brand, nutritionGrade: $nutritionGrade, imageUrl: $imageUrl, barcode: $barcode)';
}


}

/// @nodoc
abstract mixin class _$SuggestedProductCopyWith<$Res> implements $SuggestedProductCopyWith<$Res> {
  factory _$SuggestedProductCopyWith(_SuggestedProduct value, $Res Function(_SuggestedProduct) _then) = __$SuggestedProductCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "product_name") String? productName,@JsonKey(name: "brand") String? brand,@JsonKey(name: "nutrition_grade") String? nutritionGrade,@JsonKey(name: "image_url") String? imageUrl,@JsonKey(name: "barcode") String? barcode
});




}
/// @nodoc
class __$SuggestedProductCopyWithImpl<$Res>
    implements _$SuggestedProductCopyWith<$Res> {
  __$SuggestedProductCopyWithImpl(this._self, this._then);

  final _SuggestedProduct _self;
  final $Res Function(_SuggestedProduct) _then;

/// Create a copy of SuggestedProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productName = freezed,Object? brand = freezed,Object? nutritionGrade = freezed,Object? imageUrl = freezed,Object? barcode = freezed,}) {
  return _then(_SuggestedProduct(
productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String?,nutritionGrade: freezed == nutritionGrade ? _self.nutritionGrade : nutritionGrade // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,barcode: freezed == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UserGoal {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;
/// Create a copy of UserGoal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserGoalCopyWith<UserGoal> get copyWith => _$UserGoalCopyWithImpl<UserGoal>(this as UserGoal, _$identity);

  /// Serializes this UserGoal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserGoal&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'UserGoal(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $UserGoalCopyWith<$Res>  {
  factory $UserGoalCopyWith(UserGoal value, $Res Function(UserGoal) _then) = _$UserGoalCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class _$UserGoalCopyWithImpl<$Res>
    implements $UserGoalCopyWith<$Res> {
  _$UserGoalCopyWithImpl(this._self, this._then);

  final UserGoal _self;
  final $Res Function(UserGoal) _then;

/// Create a copy of UserGoal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserGoal].
extension UserGoalPatterns on UserGoal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserGoal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserGoal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserGoal value)  $default,){
final _that = this;
switch (_that) {
case _UserGoal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserGoal value)?  $default,){
final _that = this;
switch (_that) {
case _UserGoal() when $default != null:
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
case _UserGoal() when $default != null:
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
case _UserGoal():
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
case _UserGoal() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserGoal implements UserGoal {
  const _UserGoal({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name});
  factory _UserGoal.fromJson(Map<String, dynamic> json) => _$UserGoalFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;

/// Create a copy of UserGoal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserGoalCopyWith<_UserGoal> get copyWith => __$UserGoalCopyWithImpl<_UserGoal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserGoalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserGoal&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'UserGoal(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$UserGoalCopyWith<$Res> implements $UserGoalCopyWith<$Res> {
  factory _$UserGoalCopyWith(_UserGoal value, $Res Function(_UserGoal) _then) = __$UserGoalCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class __$UserGoalCopyWithImpl<$Res>
    implements _$UserGoalCopyWith<$Res> {
  __$UserGoalCopyWithImpl(this._self, this._then);

  final _UserGoal _self;
  final $Res Function(_UserGoal) _then;

/// Create a copy of UserGoal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_UserGoal(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UserPreference {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;
/// Create a copy of UserPreference
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPreferenceCopyWith<UserPreference> get copyWith => _$UserPreferenceCopyWithImpl<UserPreference>(this as UserPreference, _$identity);

  /// Serializes this UserPreference to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPreference&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'UserPreference(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $UserPreferenceCopyWith<$Res>  {
  factory $UserPreferenceCopyWith(UserPreference value, $Res Function(UserPreference) _then) = _$UserPreferenceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class _$UserPreferenceCopyWithImpl<$Res>
    implements $UserPreferenceCopyWith<$Res> {
  _$UserPreferenceCopyWithImpl(this._self, this._then);

  final UserPreference _self;
  final $Res Function(UserPreference) _then;

/// Create a copy of UserPreference
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPreference].
extension UserPreferencePatterns on UserPreference {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPreference value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPreference() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPreference value)  $default,){
final _that = this;
switch (_that) {
case _UserPreference():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPreference value)?  $default,){
final _that = this;
switch (_that) {
case _UserPreference() when $default != null:
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
case _UserPreference() when $default != null:
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
case _UserPreference():
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
case _UserPreference() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPreference implements UserPreference {
  const _UserPreference({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name});
  factory _UserPreference.fromJson(Map<String, dynamic> json) => _$UserPreferenceFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;

/// Create a copy of UserPreference
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPreferenceCopyWith<_UserPreference> get copyWith => __$UserPreferenceCopyWithImpl<_UserPreference>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPreferenceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPreference&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'UserPreference(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$UserPreferenceCopyWith<$Res> implements $UserPreferenceCopyWith<$Res> {
  factory _$UserPreferenceCopyWith(_UserPreference value, $Res Function(_UserPreference) _then) = __$UserPreferenceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class __$UserPreferenceCopyWithImpl<$Res>
    implements _$UserPreferenceCopyWith<$Res> {
  __$UserPreferenceCopyWithImpl(this._self, this._then);

  final _UserPreference _self;
  final $Res Function(_UserPreference) _then;

/// Create a copy of UserPreference
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_UserPreference(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
