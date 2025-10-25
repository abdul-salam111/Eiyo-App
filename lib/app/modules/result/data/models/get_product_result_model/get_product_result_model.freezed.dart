// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_product_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetProductResultModel {

@JsonKey(name: "code") String? get code;@JsonKey(name: "product") Product? get product;@JsonKey(name: "status") int? get status;@JsonKey(name: "status_verbose") String? get statusVerbose;
/// Create a copy of GetProductResultModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProductResultModelCopyWith<GetProductResultModel> get copyWith => _$GetProductResultModelCopyWithImpl<GetProductResultModel>(this as GetProductResultModel, _$identity);

  /// Serializes this GetProductResultModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProductResultModel&&(identical(other.code, code) || other.code == code)&&(identical(other.product, product) || other.product == product)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusVerbose, statusVerbose) || other.statusVerbose == statusVerbose));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,product,status,statusVerbose);

@override
String toString() {
  return 'GetProductResultModel(code: $code, product: $product, status: $status, statusVerbose: $statusVerbose)';
}


}

/// @nodoc
abstract mixin class $GetProductResultModelCopyWith<$Res>  {
  factory $GetProductResultModelCopyWith(GetProductResultModel value, $Res Function(GetProductResultModel) _then) = _$GetProductResultModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "code") String? code,@JsonKey(name: "product") Product? product,@JsonKey(name: "status") int? status,@JsonKey(name: "status_verbose") String? statusVerbose
});


$ProductCopyWith<$Res>? get product;

}
/// @nodoc
class _$GetProductResultModelCopyWithImpl<$Res>
    implements $GetProductResultModelCopyWith<$Res> {
  _$GetProductResultModelCopyWithImpl(this._self, this._then);

  final GetProductResultModel _self;
  final $Res Function(GetProductResultModel) _then;

/// Create a copy of GetProductResultModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? product = freezed,Object? status = freezed,Object? statusVerbose = freezed,}) {
  return _then(_self.copyWith(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,statusVerbose: freezed == statusVerbose ? _self.statusVerbose : statusVerbose // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GetProductResultModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetProductResultModel].
extension GetProductResultModelPatterns on GetProductResultModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetProductResultModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetProductResultModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetProductResultModel value)  $default,){
final _that = this;
switch (_that) {
case _GetProductResultModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetProductResultModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetProductResultModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "code")  String? code, @JsonKey(name: "product")  Product? product, @JsonKey(name: "status")  int? status, @JsonKey(name: "status_verbose")  String? statusVerbose)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetProductResultModel() when $default != null:
return $default(_that.code,_that.product,_that.status,_that.statusVerbose);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "code")  String? code, @JsonKey(name: "product")  Product? product, @JsonKey(name: "status")  int? status, @JsonKey(name: "status_verbose")  String? statusVerbose)  $default,) {final _that = this;
switch (_that) {
case _GetProductResultModel():
return $default(_that.code,_that.product,_that.status,_that.statusVerbose);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "code")  String? code, @JsonKey(name: "product")  Product? product, @JsonKey(name: "status")  int? status, @JsonKey(name: "status_verbose")  String? statusVerbose)?  $default,) {final _that = this;
switch (_that) {
case _GetProductResultModel() when $default != null:
return $default(_that.code,_that.product,_that.status,_that.statusVerbose);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetProductResultModel implements GetProductResultModel {
  const _GetProductResultModel({@JsonKey(name: "code") this.code, @JsonKey(name: "product") this.product, @JsonKey(name: "status") this.status, @JsonKey(name: "status_verbose") this.statusVerbose});
  factory _GetProductResultModel.fromJson(Map<String, dynamic> json) => _$GetProductResultModelFromJson(json);

@override@JsonKey(name: "code") final  String? code;
@override@JsonKey(name: "product") final  Product? product;
@override@JsonKey(name: "status") final  int? status;
@override@JsonKey(name: "status_verbose") final  String? statusVerbose;

/// Create a copy of GetProductResultModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProductResultModelCopyWith<_GetProductResultModel> get copyWith => __$GetProductResultModelCopyWithImpl<_GetProductResultModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetProductResultModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProductResultModel&&(identical(other.code, code) || other.code == code)&&(identical(other.product, product) || other.product == product)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusVerbose, statusVerbose) || other.statusVerbose == statusVerbose));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,product,status,statusVerbose);

@override
String toString() {
  return 'GetProductResultModel(code: $code, product: $product, status: $status, statusVerbose: $statusVerbose)';
}


}

/// @nodoc
abstract mixin class _$GetProductResultModelCopyWith<$Res> implements $GetProductResultModelCopyWith<$Res> {
  factory _$GetProductResultModelCopyWith(_GetProductResultModel value, $Res Function(_GetProductResultModel) _then) = __$GetProductResultModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "code") String? code,@JsonKey(name: "product") Product? product,@JsonKey(name: "status") int? status,@JsonKey(name: "status_verbose") String? statusVerbose
});


@override $ProductCopyWith<$Res>? get product;

}
/// @nodoc
class __$GetProductResultModelCopyWithImpl<$Res>
    implements _$GetProductResultModelCopyWith<$Res> {
  __$GetProductResultModelCopyWithImpl(this._self, this._then);

  final _GetProductResultModel _self;
  final $Res Function(_GetProductResultModel) _then;

/// Create a copy of GetProductResultModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? product = freezed,Object? status = freezed,Object? statusVerbose = freezed,}) {
  return _then(_GetProductResultModel(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,statusVerbose: freezed == statusVerbose ? _self.statusVerbose : statusVerbose // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GetProductResultModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$Product {

@JsonKey(name: "brands") String? get brands;@JsonKey(name: "categories") String? get categories;@JsonKey(name: "categories_tags") List<String>? get categoriesTags;@JsonKey(name: "code") String? get code;@JsonKey(name: "image_front_small_url") String? get imageFrontSmallUrl;@JsonKey(name: "ingredients_text") String? get ingredientsText;@JsonKey(name: "nutrient_levels_tags") List<String>? get nutrientLevelsTags;@JsonKey(name: "nutriments") Nutriments? get nutriments;@JsonKey(name: "nutriscore_grade") String? get nutriscoreGrade;@JsonKey(name: "nutriscore_score") int? get nutriscoreScore;@JsonKey(name: "product_name") String? get productName;@JsonKey(name: "quantity") String? get quantity;@JsonKey(name: "additives_n") int? get additivesN;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.brands, brands) || other.brands == brands)&&(identical(other.categories, categories) || other.categories == categories)&&const DeepCollectionEquality().equals(other.categoriesTags, categoriesTags)&&(identical(other.code, code) || other.code == code)&&(identical(other.imageFrontSmallUrl, imageFrontSmallUrl) || other.imageFrontSmallUrl == imageFrontSmallUrl)&&(identical(other.ingredientsText, ingredientsText) || other.ingredientsText == ingredientsText)&&const DeepCollectionEquality().equals(other.nutrientLevelsTags, nutrientLevelsTags)&&(identical(other.nutriments, nutriments) || other.nutriments == nutriments)&&(identical(other.nutriscoreGrade, nutriscoreGrade) || other.nutriscoreGrade == nutriscoreGrade)&&(identical(other.nutriscoreScore, nutriscoreScore) || other.nutriscoreScore == nutriscoreScore)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.additivesN, additivesN) || other.additivesN == additivesN));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brands,categories,const DeepCollectionEquality().hash(categoriesTags),code,imageFrontSmallUrl,ingredientsText,const DeepCollectionEquality().hash(nutrientLevelsTags),nutriments,nutriscoreGrade,nutriscoreScore,productName,quantity,additivesN);

@override
String toString() {
  return 'Product(brands: $brands, categories: $categories, categoriesTags: $categoriesTags, code: $code, imageFrontSmallUrl: $imageFrontSmallUrl, ingredientsText: $ingredientsText, nutrientLevelsTags: $nutrientLevelsTags, nutriments: $nutriments, nutriscoreGrade: $nutriscoreGrade, nutriscoreScore: $nutriscoreScore, productName: $productName, quantity: $quantity, additivesN: $additivesN)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "brands") String? brands,@JsonKey(name: "categories") String? categories,@JsonKey(name: "categories_tags") List<String>? categoriesTags,@JsonKey(name: "code") String? code,@JsonKey(name: "image_front_small_url") String? imageFrontSmallUrl,@JsonKey(name: "ingredients_text") String? ingredientsText,@JsonKey(name: "nutrient_levels_tags") List<String>? nutrientLevelsTags,@JsonKey(name: "nutriments") Nutriments? nutriments,@JsonKey(name: "nutriscore_grade") String? nutriscoreGrade,@JsonKey(name: "nutriscore_score") int? nutriscoreScore,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "quantity") String? quantity,@JsonKey(name: "additives_n") int? additivesN
});


$NutrimentsCopyWith<$Res>? get nutriments;

}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brands = freezed,Object? categories = freezed,Object? categoriesTags = freezed,Object? code = freezed,Object? imageFrontSmallUrl = freezed,Object? ingredientsText = freezed,Object? nutrientLevelsTags = freezed,Object? nutriments = freezed,Object? nutriscoreGrade = freezed,Object? nutriscoreScore = freezed,Object? productName = freezed,Object? quantity = freezed,Object? additivesN = freezed,}) {
  return _then(_self.copyWith(
brands: freezed == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as String?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as String?,categoriesTags: freezed == categoriesTags ? _self.categoriesTags : categoriesTags // ignore: cast_nullable_to_non_nullable
as List<String>?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,imageFrontSmallUrl: freezed == imageFrontSmallUrl ? _self.imageFrontSmallUrl : imageFrontSmallUrl // ignore: cast_nullable_to_non_nullable
as String?,ingredientsText: freezed == ingredientsText ? _self.ingredientsText : ingredientsText // ignore: cast_nullable_to_non_nullable
as String?,nutrientLevelsTags: freezed == nutrientLevelsTags ? _self.nutrientLevelsTags : nutrientLevelsTags // ignore: cast_nullable_to_non_nullable
as List<String>?,nutriments: freezed == nutriments ? _self.nutriments : nutriments // ignore: cast_nullable_to_non_nullable
as Nutriments?,nutriscoreGrade: freezed == nutriscoreGrade ? _self.nutriscoreGrade : nutriscoreGrade // ignore: cast_nullable_to_non_nullable
as String?,nutriscoreScore: freezed == nutriscoreScore ? _self.nutriscoreScore : nutriscoreScore // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String?,additivesN: freezed == additivesN ? _self.additivesN : additivesN // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrimentsCopyWith<$Res>? get nutriments {
    if (_self.nutriments == null) {
    return null;
  }

  return $NutrimentsCopyWith<$Res>(_self.nutriments!, (value) {
    return _then(_self.copyWith(nutriments: value));
  });
}
}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "brands")  String? brands, @JsonKey(name: "categories")  String? categories, @JsonKey(name: "categories_tags")  List<String>? categoriesTags, @JsonKey(name: "code")  String? code, @JsonKey(name: "image_front_small_url")  String? imageFrontSmallUrl, @JsonKey(name: "ingredients_text")  String? ingredientsText, @JsonKey(name: "nutrient_levels_tags")  List<String>? nutrientLevelsTags, @JsonKey(name: "nutriments")  Nutriments? nutriments, @JsonKey(name: "nutriscore_grade")  String? nutriscoreGrade, @JsonKey(name: "nutriscore_score")  int? nutriscoreScore, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "quantity")  String? quantity, @JsonKey(name: "additives_n")  int? additivesN)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.brands,_that.categories,_that.categoriesTags,_that.code,_that.imageFrontSmallUrl,_that.ingredientsText,_that.nutrientLevelsTags,_that.nutriments,_that.nutriscoreGrade,_that.nutriscoreScore,_that.productName,_that.quantity,_that.additivesN);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "brands")  String? brands, @JsonKey(name: "categories")  String? categories, @JsonKey(name: "categories_tags")  List<String>? categoriesTags, @JsonKey(name: "code")  String? code, @JsonKey(name: "image_front_small_url")  String? imageFrontSmallUrl, @JsonKey(name: "ingredients_text")  String? ingredientsText, @JsonKey(name: "nutrient_levels_tags")  List<String>? nutrientLevelsTags, @JsonKey(name: "nutriments")  Nutriments? nutriments, @JsonKey(name: "nutriscore_grade")  String? nutriscoreGrade, @JsonKey(name: "nutriscore_score")  int? nutriscoreScore, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "quantity")  String? quantity, @JsonKey(name: "additives_n")  int? additivesN)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.brands,_that.categories,_that.categoriesTags,_that.code,_that.imageFrontSmallUrl,_that.ingredientsText,_that.nutrientLevelsTags,_that.nutriments,_that.nutriscoreGrade,_that.nutriscoreScore,_that.productName,_that.quantity,_that.additivesN);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "brands")  String? brands, @JsonKey(name: "categories")  String? categories, @JsonKey(name: "categories_tags")  List<String>? categoriesTags, @JsonKey(name: "code")  String? code, @JsonKey(name: "image_front_small_url")  String? imageFrontSmallUrl, @JsonKey(name: "ingredients_text")  String? ingredientsText, @JsonKey(name: "nutrient_levels_tags")  List<String>? nutrientLevelsTags, @JsonKey(name: "nutriments")  Nutriments? nutriments, @JsonKey(name: "nutriscore_grade")  String? nutriscoreGrade, @JsonKey(name: "nutriscore_score")  int? nutriscoreScore, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "quantity")  String? quantity, @JsonKey(name: "additives_n")  int? additivesN)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.brands,_that.categories,_that.categoriesTags,_that.code,_that.imageFrontSmallUrl,_that.ingredientsText,_that.nutrientLevelsTags,_that.nutriments,_that.nutriscoreGrade,_that.nutriscoreScore,_that.productName,_that.quantity,_that.additivesN);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({@JsonKey(name: "brands") this.brands, @JsonKey(name: "categories") this.categories, @JsonKey(name: "categories_tags") final  List<String>? categoriesTags, @JsonKey(name: "code") this.code, @JsonKey(name: "image_front_small_url") this.imageFrontSmallUrl, @JsonKey(name: "ingredients_text") this.ingredientsText, @JsonKey(name: "nutrient_levels_tags") final  List<String>? nutrientLevelsTags, @JsonKey(name: "nutriments") this.nutriments, @JsonKey(name: "nutriscore_grade") this.nutriscoreGrade, @JsonKey(name: "nutriscore_score") this.nutriscoreScore, @JsonKey(name: "product_name") this.productName, @JsonKey(name: "quantity") this.quantity, @JsonKey(name: "additives_n") this.additivesN}): _categoriesTags = categoriesTags,_nutrientLevelsTags = nutrientLevelsTags;
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override@JsonKey(name: "brands") final  String? brands;
@override@JsonKey(name: "categories") final  String? categories;
 final  List<String>? _categoriesTags;
@override@JsonKey(name: "categories_tags") List<String>? get categoriesTags {
  final value = _categoriesTags;
  if (value == null) return null;
  if (_categoriesTags is EqualUnmodifiableListView) return _categoriesTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "code") final  String? code;
@override@JsonKey(name: "image_front_small_url") final  String? imageFrontSmallUrl;
@override@JsonKey(name: "ingredients_text") final  String? ingredientsText;
 final  List<String>? _nutrientLevelsTags;
@override@JsonKey(name: "nutrient_levels_tags") List<String>? get nutrientLevelsTags {
  final value = _nutrientLevelsTags;
  if (value == null) return null;
  if (_nutrientLevelsTags is EqualUnmodifiableListView) return _nutrientLevelsTags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "nutriments") final  Nutriments? nutriments;
@override@JsonKey(name: "nutriscore_grade") final  String? nutriscoreGrade;
@override@JsonKey(name: "nutriscore_score") final  int? nutriscoreScore;
@override@JsonKey(name: "product_name") final  String? productName;
@override@JsonKey(name: "quantity") final  String? quantity;
@override@JsonKey(name: "additives_n") final  int? additivesN;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.brands, brands) || other.brands == brands)&&(identical(other.categories, categories) || other.categories == categories)&&const DeepCollectionEquality().equals(other._categoriesTags, _categoriesTags)&&(identical(other.code, code) || other.code == code)&&(identical(other.imageFrontSmallUrl, imageFrontSmallUrl) || other.imageFrontSmallUrl == imageFrontSmallUrl)&&(identical(other.ingredientsText, ingredientsText) || other.ingredientsText == ingredientsText)&&const DeepCollectionEquality().equals(other._nutrientLevelsTags, _nutrientLevelsTags)&&(identical(other.nutriments, nutriments) || other.nutriments == nutriments)&&(identical(other.nutriscoreGrade, nutriscoreGrade) || other.nutriscoreGrade == nutriscoreGrade)&&(identical(other.nutriscoreScore, nutriscoreScore) || other.nutriscoreScore == nutriscoreScore)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.additivesN, additivesN) || other.additivesN == additivesN));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brands,categories,const DeepCollectionEquality().hash(_categoriesTags),code,imageFrontSmallUrl,ingredientsText,const DeepCollectionEquality().hash(_nutrientLevelsTags),nutriments,nutriscoreGrade,nutriscoreScore,productName,quantity,additivesN);

@override
String toString() {
  return 'Product(brands: $brands, categories: $categories, categoriesTags: $categoriesTags, code: $code, imageFrontSmallUrl: $imageFrontSmallUrl, ingredientsText: $ingredientsText, nutrientLevelsTags: $nutrientLevelsTags, nutriments: $nutriments, nutriscoreGrade: $nutriscoreGrade, nutriscoreScore: $nutriscoreScore, productName: $productName, quantity: $quantity, additivesN: $additivesN)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "brands") String? brands,@JsonKey(name: "categories") String? categories,@JsonKey(name: "categories_tags") List<String>? categoriesTags,@JsonKey(name: "code") String? code,@JsonKey(name: "image_front_small_url") String? imageFrontSmallUrl,@JsonKey(name: "ingredients_text") String? ingredientsText,@JsonKey(name: "nutrient_levels_tags") List<String>? nutrientLevelsTags,@JsonKey(name: "nutriments") Nutriments? nutriments,@JsonKey(name: "nutriscore_grade") String? nutriscoreGrade,@JsonKey(name: "nutriscore_score") int? nutriscoreScore,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "quantity") String? quantity,@JsonKey(name: "additives_n") int? additivesN
});


@override $NutrimentsCopyWith<$Res>? get nutriments;

}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brands = freezed,Object? categories = freezed,Object? categoriesTags = freezed,Object? code = freezed,Object? imageFrontSmallUrl = freezed,Object? ingredientsText = freezed,Object? nutrientLevelsTags = freezed,Object? nutriments = freezed,Object? nutriscoreGrade = freezed,Object? nutriscoreScore = freezed,Object? productName = freezed,Object? quantity = freezed,Object? additivesN = freezed,}) {
  return _then(_Product(
brands: freezed == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as String?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as String?,categoriesTags: freezed == categoriesTags ? _self._categoriesTags : categoriesTags // ignore: cast_nullable_to_non_nullable
as List<String>?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,imageFrontSmallUrl: freezed == imageFrontSmallUrl ? _self.imageFrontSmallUrl : imageFrontSmallUrl // ignore: cast_nullable_to_non_nullable
as String?,ingredientsText: freezed == ingredientsText ? _self.ingredientsText : ingredientsText // ignore: cast_nullable_to_non_nullable
as String?,nutrientLevelsTags: freezed == nutrientLevelsTags ? _self._nutrientLevelsTags : nutrientLevelsTags // ignore: cast_nullable_to_non_nullable
as List<String>?,nutriments: freezed == nutriments ? _self.nutriments : nutriments // ignore: cast_nullable_to_non_nullable
as Nutriments?,nutriscoreGrade: freezed == nutriscoreGrade ? _self.nutriscoreGrade : nutriscoreGrade // ignore: cast_nullable_to_non_nullable
as String?,nutriscoreScore: freezed == nutriscoreScore ? _self.nutriscoreScore : nutriscoreScore // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String?,additivesN: freezed == additivesN ? _self.additivesN : additivesN // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NutrimentsCopyWith<$Res>? get nutriments {
    if (_self.nutriments == null) {
    return null;
  }

  return $NutrimentsCopyWith<$Res>(_self.nutriments!, (value) {
    return _then(_self.copyWith(nutriments: value));
  });
}
}


/// @nodoc
mixin _$Nutriments {

// Basic nutrients
@JsonKey(name: "fat") double? get fat;@JsonKey(name: "fiber") double? get fiber;@JsonKey(name: "salt") double? get salt;@JsonKey(name: "saturated-fat") double? get saturatedFat;@JsonKey(name: "sodium") double? get sodium;@JsonKey(name: "sugars") double? get sugars;@JsonKey(name: "energy-kcal") double? get energyKcal;@JsonKey(name: "proteins") double? get proteins;@JsonKey(name: "carbohydrates") double? get carbohydrates;// Per 100g values
@JsonKey(name: "fat_100g") double? get fat100g;@JsonKey(name: "fiber_100g") double? get fiber100g;@JsonKey(name: "salt_100g") double? get salt100g;@JsonKey(name: "saturated-fat_100g") double? get saturatedFat100g;@JsonKey(name: "sodium_100g") double? get sodium100g;@JsonKey(name: "sugars_100g") double? get sugars100g;@JsonKey(name: "energy-kcal_100g") double? get energyKcal100g;@JsonKey(name: "proteins_100g") double? get proteins100g;@JsonKey(name: "carbohydrates_100g") double? get carbohydrates100g;// Serving values
@JsonKey(name: "fat_serving") double? get fatServing;@JsonKey(name: "fiber_serving") double? get fiberServing;@JsonKey(name: "salt_serving") double? get saltServing;@JsonKey(name: "saturated-fat_serving") double? get saturatedFatServing;@JsonKey(name: "sodium_serving") double? get sodiumServing;@JsonKey(name: "sugars_serving") double? get sugarsServing;@JsonKey(name: "energy-kcal_serving") double? get energyKcalServing;@JsonKey(name: "proteins_serving") double? get proteinsServing;@JsonKey(name: "carbohydrates_serving") double? get carbohydratesServing;// Unit values
@JsonKey(name: "fat_unit") String? get fatUnit;@JsonKey(name: "fiber_unit") String? get fiberUnit;@JsonKey(name: "salt_unit") String? get saltUnit;@JsonKey(name: "saturated-fat_unit") String? get saturatedFatUnit;@JsonKey(name: "sodium_unit") String? get sodiumUnit;@JsonKey(name: "sugars_unit") String? get sugarsUnit;@JsonKey(name: "energy-kcal_unit") String? get energyKcalUnit;@JsonKey(name: "proteins_unit") String? get proteinsUnit;@JsonKey(name: "carbohydrates_unit") String? get carbohydratesUnit;// Value fields
@JsonKey(name: "fat_value") double? get fatValue;@JsonKey(name: "fiber_value") double? get fiberValue;@JsonKey(name: "salt_value") double? get saltValue;@JsonKey(name: "saturated-fat_value") double? get saturatedFatValue;@JsonKey(name: "sodium_value") double? get sodiumValue;@JsonKey(name: "sugars_value") double? get sugarsValue;@JsonKey(name: "energy-kcal_value") double? get energyKcalValue;@JsonKey(name: "proteins_value") double? get proteinsValue;@JsonKey(name: "carbohydrates_value") double? get carbohydratesValue;// Energy fields
@JsonKey(name: "energy") int? get energy;@JsonKey(name: "energy_100g") int? get energy100g;@JsonKey(name: "energy_serving") int? get energyServing;@JsonKey(name: "energy_unit") String? get energyUnit;@JsonKey(name: "energy_value") int? get energyValue;@JsonKey(name: "energy-kj") int? get energyKj;@JsonKey(name: "energy-kj_100g") int? get energyKj100g;@JsonKey(name: "energy-kj_serving") int? get energyKjServing;@JsonKey(name: "energy-kj_unit") String? get energyKjUnit;@JsonKey(name: "energy-kj_value") int? get energyKjValue;@JsonKey(name: "energy-kcal_value_computed") double? get energyKcalValueComputed;@JsonKey(name: "energy-kj_value_computed") double? get energyKjValueComputed;// Fruits and vegetables estimates
@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g") int? get fruitsVegetablesLegumesEstimateFromIngredients100g;@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving") int? get fruitsVegetablesLegumesEstimateFromIngredientsServing;@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g") int? get fruitsVegetablesNutsEstimateFromIngredients100g;@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving") int? get fruitsVegetablesNutsEstimateFromIngredientsServing;// Nutrition scores
@JsonKey(name: "nutrition-score-fr") int? get nutritionScoreFr;@JsonKey(name: "nutrition-score-fr_100g") int? get nutritionScoreFr100g;// NOVA groups
@JsonKey(name: "nova-group") int? get novaGroup;@JsonKey(name: "nova-group_100g") int? get novaGroup100g;@JsonKey(name: "nova-group_serving") int? get novaGroupServing;// Additional nutrients
@JsonKey(name: "calcium") double? get calcium;@JsonKey(name: "calcium_100g") double? get calcium100g;@JsonKey(name: "calcium_serving") double? get calciumServing;@JsonKey(name: "calcium_unit") String? get calciumUnit;@JsonKey(name: "calcium_value") double? get calciumValue;@JsonKey(name: "calcium_label") String? get calciumLabel;@JsonKey(name: "fat_label") String? get fatLabel;
/// Create a copy of Nutriments
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrimentsCopyWith<Nutriments> get copyWith => _$NutrimentsCopyWithImpl<Nutriments>(this as Nutriments, _$identity);

  /// Serializes this Nutriments to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Nutriments&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.fiber, fiber) || other.fiber == fiber)&&(identical(other.salt, salt) || other.salt == salt)&&(identical(other.saturatedFat, saturatedFat) || other.saturatedFat == saturatedFat)&&(identical(other.sodium, sodium) || other.sodium == sodium)&&(identical(other.sugars, sugars) || other.sugars == sugars)&&(identical(other.energyKcal, energyKcal) || other.energyKcal == energyKcal)&&(identical(other.proteins, proteins) || other.proteins == proteins)&&(identical(other.carbohydrates, carbohydrates) || other.carbohydrates == carbohydrates)&&(identical(other.fat100g, fat100g) || other.fat100g == fat100g)&&(identical(other.fiber100g, fiber100g) || other.fiber100g == fiber100g)&&(identical(other.salt100g, salt100g) || other.salt100g == salt100g)&&(identical(other.saturatedFat100g, saturatedFat100g) || other.saturatedFat100g == saturatedFat100g)&&(identical(other.sodium100g, sodium100g) || other.sodium100g == sodium100g)&&(identical(other.sugars100g, sugars100g) || other.sugars100g == sugars100g)&&(identical(other.energyKcal100g, energyKcal100g) || other.energyKcal100g == energyKcal100g)&&(identical(other.proteins100g, proteins100g) || other.proteins100g == proteins100g)&&(identical(other.carbohydrates100g, carbohydrates100g) || other.carbohydrates100g == carbohydrates100g)&&(identical(other.fatServing, fatServing) || other.fatServing == fatServing)&&(identical(other.fiberServing, fiberServing) || other.fiberServing == fiberServing)&&(identical(other.saltServing, saltServing) || other.saltServing == saltServing)&&(identical(other.saturatedFatServing, saturatedFatServing) || other.saturatedFatServing == saturatedFatServing)&&(identical(other.sodiumServing, sodiumServing) || other.sodiumServing == sodiumServing)&&(identical(other.sugarsServing, sugarsServing) || other.sugarsServing == sugarsServing)&&(identical(other.energyKcalServing, energyKcalServing) || other.energyKcalServing == energyKcalServing)&&(identical(other.proteinsServing, proteinsServing) || other.proteinsServing == proteinsServing)&&(identical(other.carbohydratesServing, carbohydratesServing) || other.carbohydratesServing == carbohydratesServing)&&(identical(other.fatUnit, fatUnit) || other.fatUnit == fatUnit)&&(identical(other.fiberUnit, fiberUnit) || other.fiberUnit == fiberUnit)&&(identical(other.saltUnit, saltUnit) || other.saltUnit == saltUnit)&&(identical(other.saturatedFatUnit, saturatedFatUnit) || other.saturatedFatUnit == saturatedFatUnit)&&(identical(other.sodiumUnit, sodiumUnit) || other.sodiumUnit == sodiumUnit)&&(identical(other.sugarsUnit, sugarsUnit) || other.sugarsUnit == sugarsUnit)&&(identical(other.energyKcalUnit, energyKcalUnit) || other.energyKcalUnit == energyKcalUnit)&&(identical(other.proteinsUnit, proteinsUnit) || other.proteinsUnit == proteinsUnit)&&(identical(other.carbohydratesUnit, carbohydratesUnit) || other.carbohydratesUnit == carbohydratesUnit)&&(identical(other.fatValue, fatValue) || other.fatValue == fatValue)&&(identical(other.fiberValue, fiberValue) || other.fiberValue == fiberValue)&&(identical(other.saltValue, saltValue) || other.saltValue == saltValue)&&(identical(other.saturatedFatValue, saturatedFatValue) || other.saturatedFatValue == saturatedFatValue)&&(identical(other.sodiumValue, sodiumValue) || other.sodiumValue == sodiumValue)&&(identical(other.sugarsValue, sugarsValue) || other.sugarsValue == sugarsValue)&&(identical(other.energyKcalValue, energyKcalValue) || other.energyKcalValue == energyKcalValue)&&(identical(other.proteinsValue, proteinsValue) || other.proteinsValue == proteinsValue)&&(identical(other.carbohydratesValue, carbohydratesValue) || other.carbohydratesValue == carbohydratesValue)&&(identical(other.energy, energy) || other.energy == energy)&&(identical(other.energy100g, energy100g) || other.energy100g == energy100g)&&(identical(other.energyServing, energyServing) || other.energyServing == energyServing)&&(identical(other.energyUnit, energyUnit) || other.energyUnit == energyUnit)&&(identical(other.energyValue, energyValue) || other.energyValue == energyValue)&&(identical(other.energyKj, energyKj) || other.energyKj == energyKj)&&(identical(other.energyKj100g, energyKj100g) || other.energyKj100g == energyKj100g)&&(identical(other.energyKjServing, energyKjServing) || other.energyKjServing == energyKjServing)&&(identical(other.energyKjUnit, energyKjUnit) || other.energyKjUnit == energyKjUnit)&&(identical(other.energyKjValue, energyKjValue) || other.energyKjValue == energyKjValue)&&(identical(other.energyKcalValueComputed, energyKcalValueComputed) || other.energyKcalValueComputed == energyKcalValueComputed)&&(identical(other.energyKjValueComputed, energyKjValueComputed) || other.energyKjValueComputed == energyKjValueComputed)&&(identical(other.fruitsVegetablesLegumesEstimateFromIngredients100g, fruitsVegetablesLegumesEstimateFromIngredients100g) || other.fruitsVegetablesLegumesEstimateFromIngredients100g == fruitsVegetablesLegumesEstimateFromIngredients100g)&&(identical(other.fruitsVegetablesLegumesEstimateFromIngredientsServing, fruitsVegetablesLegumesEstimateFromIngredientsServing) || other.fruitsVegetablesLegumesEstimateFromIngredientsServing == fruitsVegetablesLegumesEstimateFromIngredientsServing)&&(identical(other.fruitsVegetablesNutsEstimateFromIngredients100g, fruitsVegetablesNutsEstimateFromIngredients100g) || other.fruitsVegetablesNutsEstimateFromIngredients100g == fruitsVegetablesNutsEstimateFromIngredients100g)&&(identical(other.fruitsVegetablesNutsEstimateFromIngredientsServing, fruitsVegetablesNutsEstimateFromIngredientsServing) || other.fruitsVegetablesNutsEstimateFromIngredientsServing == fruitsVegetablesNutsEstimateFromIngredientsServing)&&(identical(other.nutritionScoreFr, nutritionScoreFr) || other.nutritionScoreFr == nutritionScoreFr)&&(identical(other.nutritionScoreFr100g, nutritionScoreFr100g) || other.nutritionScoreFr100g == nutritionScoreFr100g)&&(identical(other.novaGroup, novaGroup) || other.novaGroup == novaGroup)&&(identical(other.novaGroup100g, novaGroup100g) || other.novaGroup100g == novaGroup100g)&&(identical(other.novaGroupServing, novaGroupServing) || other.novaGroupServing == novaGroupServing)&&(identical(other.calcium, calcium) || other.calcium == calcium)&&(identical(other.calcium100g, calcium100g) || other.calcium100g == calcium100g)&&(identical(other.calciumServing, calciumServing) || other.calciumServing == calciumServing)&&(identical(other.calciumUnit, calciumUnit) || other.calciumUnit == calciumUnit)&&(identical(other.calciumValue, calciumValue) || other.calciumValue == calciumValue)&&(identical(other.calciumLabel, calciumLabel) || other.calciumLabel == calciumLabel)&&(identical(other.fatLabel, fatLabel) || other.fatLabel == fatLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,fat,fiber,salt,saturatedFat,sodium,sugars,energyKcal,proteins,carbohydrates,fat100g,fiber100g,salt100g,saturatedFat100g,sodium100g,sugars100g,energyKcal100g,proteins100g,carbohydrates100g,fatServing,fiberServing,saltServing,saturatedFatServing,sodiumServing,sugarsServing,energyKcalServing,proteinsServing,carbohydratesServing,fatUnit,fiberUnit,saltUnit,saturatedFatUnit,sodiumUnit,sugarsUnit,energyKcalUnit,proteinsUnit,carbohydratesUnit,fatValue,fiberValue,saltValue,saturatedFatValue,sodiumValue,sugarsValue,energyKcalValue,proteinsValue,carbohydratesValue,energy,energy100g,energyServing,energyUnit,energyValue,energyKj,energyKj100g,energyKjServing,energyKjUnit,energyKjValue,energyKcalValueComputed,energyKjValueComputed,fruitsVegetablesLegumesEstimateFromIngredients100g,fruitsVegetablesLegumesEstimateFromIngredientsServing,fruitsVegetablesNutsEstimateFromIngredients100g,fruitsVegetablesNutsEstimateFromIngredientsServing,nutritionScoreFr,nutritionScoreFr100g,novaGroup,novaGroup100g,novaGroupServing,calcium,calcium100g,calciumServing,calciumUnit,calciumValue,calciumLabel,fatLabel]);

@override
String toString() {
  return 'Nutriments(fat: $fat, fiber: $fiber, salt: $salt, saturatedFat: $saturatedFat, sodium: $sodium, sugars: $sugars, energyKcal: $energyKcal, proteins: $proteins, carbohydrates: $carbohydrates, fat100g: $fat100g, fiber100g: $fiber100g, salt100g: $salt100g, saturatedFat100g: $saturatedFat100g, sodium100g: $sodium100g, sugars100g: $sugars100g, energyKcal100g: $energyKcal100g, proteins100g: $proteins100g, carbohydrates100g: $carbohydrates100g, fatServing: $fatServing, fiberServing: $fiberServing, saltServing: $saltServing, saturatedFatServing: $saturatedFatServing, sodiumServing: $sodiumServing, sugarsServing: $sugarsServing, energyKcalServing: $energyKcalServing, proteinsServing: $proteinsServing, carbohydratesServing: $carbohydratesServing, fatUnit: $fatUnit, fiberUnit: $fiberUnit, saltUnit: $saltUnit, saturatedFatUnit: $saturatedFatUnit, sodiumUnit: $sodiumUnit, sugarsUnit: $sugarsUnit, energyKcalUnit: $energyKcalUnit, proteinsUnit: $proteinsUnit, carbohydratesUnit: $carbohydratesUnit, fatValue: $fatValue, fiberValue: $fiberValue, saltValue: $saltValue, saturatedFatValue: $saturatedFatValue, sodiumValue: $sodiumValue, sugarsValue: $sugarsValue, energyKcalValue: $energyKcalValue, proteinsValue: $proteinsValue, carbohydratesValue: $carbohydratesValue, energy: $energy, energy100g: $energy100g, energyServing: $energyServing, energyUnit: $energyUnit, energyValue: $energyValue, energyKj: $energyKj, energyKj100g: $energyKj100g, energyKjServing: $energyKjServing, energyKjUnit: $energyKjUnit, energyKjValue: $energyKjValue, energyKcalValueComputed: $energyKcalValueComputed, energyKjValueComputed: $energyKjValueComputed, fruitsVegetablesLegumesEstimateFromIngredients100g: $fruitsVegetablesLegumesEstimateFromIngredients100g, fruitsVegetablesLegumesEstimateFromIngredientsServing: $fruitsVegetablesLegumesEstimateFromIngredientsServing, fruitsVegetablesNutsEstimateFromIngredients100g: $fruitsVegetablesNutsEstimateFromIngredients100g, fruitsVegetablesNutsEstimateFromIngredientsServing: $fruitsVegetablesNutsEstimateFromIngredientsServing, nutritionScoreFr: $nutritionScoreFr, nutritionScoreFr100g: $nutritionScoreFr100g, novaGroup: $novaGroup, novaGroup100g: $novaGroup100g, novaGroupServing: $novaGroupServing, calcium: $calcium, calcium100g: $calcium100g, calciumServing: $calciumServing, calciumUnit: $calciumUnit, calciumValue: $calciumValue, calciumLabel: $calciumLabel, fatLabel: $fatLabel)';
}


}

/// @nodoc
abstract mixin class $NutrimentsCopyWith<$Res>  {
  factory $NutrimentsCopyWith(Nutriments value, $Res Function(Nutriments) _then) = _$NutrimentsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "fat") double? fat,@JsonKey(name: "fiber") double? fiber,@JsonKey(name: "salt") double? salt,@JsonKey(name: "saturated-fat") double? saturatedFat,@JsonKey(name: "sodium") double? sodium,@JsonKey(name: "sugars") double? sugars,@JsonKey(name: "energy-kcal") double? energyKcal,@JsonKey(name: "proteins") double? proteins,@JsonKey(name: "carbohydrates") double? carbohydrates,@JsonKey(name: "fat_100g") double? fat100g,@JsonKey(name: "fiber_100g") double? fiber100g,@JsonKey(name: "salt_100g") double? salt100g,@JsonKey(name: "saturated-fat_100g") double? saturatedFat100g,@JsonKey(name: "sodium_100g") double? sodium100g,@JsonKey(name: "sugars_100g") double? sugars100g,@JsonKey(name: "energy-kcal_100g") double? energyKcal100g,@JsonKey(name: "proteins_100g") double? proteins100g,@JsonKey(name: "carbohydrates_100g") double? carbohydrates100g,@JsonKey(name: "fat_serving") double? fatServing,@JsonKey(name: "fiber_serving") double? fiberServing,@JsonKey(name: "salt_serving") double? saltServing,@JsonKey(name: "saturated-fat_serving") double? saturatedFatServing,@JsonKey(name: "sodium_serving") double? sodiumServing,@JsonKey(name: "sugars_serving") double? sugarsServing,@JsonKey(name: "energy-kcal_serving") double? energyKcalServing,@JsonKey(name: "proteins_serving") double? proteinsServing,@JsonKey(name: "carbohydrates_serving") double? carbohydratesServing,@JsonKey(name: "fat_unit") String? fatUnit,@JsonKey(name: "fiber_unit") String? fiberUnit,@JsonKey(name: "salt_unit") String? saltUnit,@JsonKey(name: "saturated-fat_unit") String? saturatedFatUnit,@JsonKey(name: "sodium_unit") String? sodiumUnit,@JsonKey(name: "sugars_unit") String? sugarsUnit,@JsonKey(name: "energy-kcal_unit") String? energyKcalUnit,@JsonKey(name: "proteins_unit") String? proteinsUnit,@JsonKey(name: "carbohydrates_unit") String? carbohydratesUnit,@JsonKey(name: "fat_value") double? fatValue,@JsonKey(name: "fiber_value") double? fiberValue,@JsonKey(name: "salt_value") double? saltValue,@JsonKey(name: "saturated-fat_value") double? saturatedFatValue,@JsonKey(name: "sodium_value") double? sodiumValue,@JsonKey(name: "sugars_value") double? sugarsValue,@JsonKey(name: "energy-kcal_value") double? energyKcalValue,@JsonKey(name: "proteins_value") double? proteinsValue,@JsonKey(name: "carbohydrates_value") double? carbohydratesValue,@JsonKey(name: "energy") int? energy,@JsonKey(name: "energy_100g") int? energy100g,@JsonKey(name: "energy_serving") int? energyServing,@JsonKey(name: "energy_unit") String? energyUnit,@JsonKey(name: "energy_value") int? energyValue,@JsonKey(name: "energy-kj") int? energyKj,@JsonKey(name: "energy-kj_100g") int? energyKj100g,@JsonKey(name: "energy-kj_serving") int? energyKjServing,@JsonKey(name: "energy-kj_unit") String? energyKjUnit,@JsonKey(name: "energy-kj_value") int? energyKjValue,@JsonKey(name: "energy-kcal_value_computed") double? energyKcalValueComputed,@JsonKey(name: "energy-kj_value_computed") double? energyKjValueComputed,@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g") int? fruitsVegetablesLegumesEstimateFromIngredients100g,@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving") int? fruitsVegetablesLegumesEstimateFromIngredientsServing,@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g") int? fruitsVegetablesNutsEstimateFromIngredients100g,@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving") int? fruitsVegetablesNutsEstimateFromIngredientsServing,@JsonKey(name: "nutrition-score-fr") int? nutritionScoreFr,@JsonKey(name: "nutrition-score-fr_100g") int? nutritionScoreFr100g,@JsonKey(name: "nova-group") int? novaGroup,@JsonKey(name: "nova-group_100g") int? novaGroup100g,@JsonKey(name: "nova-group_serving") int? novaGroupServing,@JsonKey(name: "calcium") double? calcium,@JsonKey(name: "calcium_100g") double? calcium100g,@JsonKey(name: "calcium_serving") double? calciumServing,@JsonKey(name: "calcium_unit") String? calciumUnit,@JsonKey(name: "calcium_value") double? calciumValue,@JsonKey(name: "calcium_label") String? calciumLabel,@JsonKey(name: "fat_label") String? fatLabel
});




}
/// @nodoc
class _$NutrimentsCopyWithImpl<$Res>
    implements $NutrimentsCopyWith<$Res> {
  _$NutrimentsCopyWithImpl(this._self, this._then);

  final Nutriments _self;
  final $Res Function(Nutriments) _then;

/// Create a copy of Nutriments
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fat = freezed,Object? fiber = freezed,Object? salt = freezed,Object? saturatedFat = freezed,Object? sodium = freezed,Object? sugars = freezed,Object? energyKcal = freezed,Object? proteins = freezed,Object? carbohydrates = freezed,Object? fat100g = freezed,Object? fiber100g = freezed,Object? salt100g = freezed,Object? saturatedFat100g = freezed,Object? sodium100g = freezed,Object? sugars100g = freezed,Object? energyKcal100g = freezed,Object? proteins100g = freezed,Object? carbohydrates100g = freezed,Object? fatServing = freezed,Object? fiberServing = freezed,Object? saltServing = freezed,Object? saturatedFatServing = freezed,Object? sodiumServing = freezed,Object? sugarsServing = freezed,Object? energyKcalServing = freezed,Object? proteinsServing = freezed,Object? carbohydratesServing = freezed,Object? fatUnit = freezed,Object? fiberUnit = freezed,Object? saltUnit = freezed,Object? saturatedFatUnit = freezed,Object? sodiumUnit = freezed,Object? sugarsUnit = freezed,Object? energyKcalUnit = freezed,Object? proteinsUnit = freezed,Object? carbohydratesUnit = freezed,Object? fatValue = freezed,Object? fiberValue = freezed,Object? saltValue = freezed,Object? saturatedFatValue = freezed,Object? sodiumValue = freezed,Object? sugarsValue = freezed,Object? energyKcalValue = freezed,Object? proteinsValue = freezed,Object? carbohydratesValue = freezed,Object? energy = freezed,Object? energy100g = freezed,Object? energyServing = freezed,Object? energyUnit = freezed,Object? energyValue = freezed,Object? energyKj = freezed,Object? energyKj100g = freezed,Object? energyKjServing = freezed,Object? energyKjUnit = freezed,Object? energyKjValue = freezed,Object? energyKcalValueComputed = freezed,Object? energyKjValueComputed = freezed,Object? fruitsVegetablesLegumesEstimateFromIngredients100g = freezed,Object? fruitsVegetablesLegumesEstimateFromIngredientsServing = freezed,Object? fruitsVegetablesNutsEstimateFromIngredients100g = freezed,Object? fruitsVegetablesNutsEstimateFromIngredientsServing = freezed,Object? nutritionScoreFr = freezed,Object? nutritionScoreFr100g = freezed,Object? novaGroup = freezed,Object? novaGroup100g = freezed,Object? novaGroupServing = freezed,Object? calcium = freezed,Object? calcium100g = freezed,Object? calciumServing = freezed,Object? calciumUnit = freezed,Object? calciumValue = freezed,Object? calciumLabel = freezed,Object? fatLabel = freezed,}) {
  return _then(_self.copyWith(
fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double?,fiber: freezed == fiber ? _self.fiber : fiber // ignore: cast_nullable_to_non_nullable
as double?,salt: freezed == salt ? _self.salt : salt // ignore: cast_nullable_to_non_nullable
as double?,saturatedFat: freezed == saturatedFat ? _self.saturatedFat : saturatedFat // ignore: cast_nullable_to_non_nullable
as double?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as double?,sugars: freezed == sugars ? _self.sugars : sugars // ignore: cast_nullable_to_non_nullable
as double?,energyKcal: freezed == energyKcal ? _self.energyKcal : energyKcal // ignore: cast_nullable_to_non_nullable
as double?,proteins: freezed == proteins ? _self.proteins : proteins // ignore: cast_nullable_to_non_nullable
as double?,carbohydrates: freezed == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double?,fat100g: freezed == fat100g ? _self.fat100g : fat100g // ignore: cast_nullable_to_non_nullable
as double?,fiber100g: freezed == fiber100g ? _self.fiber100g : fiber100g // ignore: cast_nullable_to_non_nullable
as double?,salt100g: freezed == salt100g ? _self.salt100g : salt100g // ignore: cast_nullable_to_non_nullable
as double?,saturatedFat100g: freezed == saturatedFat100g ? _self.saturatedFat100g : saturatedFat100g // ignore: cast_nullable_to_non_nullable
as double?,sodium100g: freezed == sodium100g ? _self.sodium100g : sodium100g // ignore: cast_nullable_to_non_nullable
as double?,sugars100g: freezed == sugars100g ? _self.sugars100g : sugars100g // ignore: cast_nullable_to_non_nullable
as double?,energyKcal100g: freezed == energyKcal100g ? _self.energyKcal100g : energyKcal100g // ignore: cast_nullable_to_non_nullable
as double?,proteins100g: freezed == proteins100g ? _self.proteins100g : proteins100g // ignore: cast_nullable_to_non_nullable
as double?,carbohydrates100g: freezed == carbohydrates100g ? _self.carbohydrates100g : carbohydrates100g // ignore: cast_nullable_to_non_nullable
as double?,fatServing: freezed == fatServing ? _self.fatServing : fatServing // ignore: cast_nullable_to_non_nullable
as double?,fiberServing: freezed == fiberServing ? _self.fiberServing : fiberServing // ignore: cast_nullable_to_non_nullable
as double?,saltServing: freezed == saltServing ? _self.saltServing : saltServing // ignore: cast_nullable_to_non_nullable
as double?,saturatedFatServing: freezed == saturatedFatServing ? _self.saturatedFatServing : saturatedFatServing // ignore: cast_nullable_to_non_nullable
as double?,sodiumServing: freezed == sodiumServing ? _self.sodiumServing : sodiumServing // ignore: cast_nullable_to_non_nullable
as double?,sugarsServing: freezed == sugarsServing ? _self.sugarsServing : sugarsServing // ignore: cast_nullable_to_non_nullable
as double?,energyKcalServing: freezed == energyKcalServing ? _self.energyKcalServing : energyKcalServing // ignore: cast_nullable_to_non_nullable
as double?,proteinsServing: freezed == proteinsServing ? _self.proteinsServing : proteinsServing // ignore: cast_nullable_to_non_nullable
as double?,carbohydratesServing: freezed == carbohydratesServing ? _self.carbohydratesServing : carbohydratesServing // ignore: cast_nullable_to_non_nullable
as double?,fatUnit: freezed == fatUnit ? _self.fatUnit : fatUnit // ignore: cast_nullable_to_non_nullable
as String?,fiberUnit: freezed == fiberUnit ? _self.fiberUnit : fiberUnit // ignore: cast_nullable_to_non_nullable
as String?,saltUnit: freezed == saltUnit ? _self.saltUnit : saltUnit // ignore: cast_nullable_to_non_nullable
as String?,saturatedFatUnit: freezed == saturatedFatUnit ? _self.saturatedFatUnit : saturatedFatUnit // ignore: cast_nullable_to_non_nullable
as String?,sodiumUnit: freezed == sodiumUnit ? _self.sodiumUnit : sodiumUnit // ignore: cast_nullable_to_non_nullable
as String?,sugarsUnit: freezed == sugarsUnit ? _self.sugarsUnit : sugarsUnit // ignore: cast_nullable_to_non_nullable
as String?,energyKcalUnit: freezed == energyKcalUnit ? _self.energyKcalUnit : energyKcalUnit // ignore: cast_nullable_to_non_nullable
as String?,proteinsUnit: freezed == proteinsUnit ? _self.proteinsUnit : proteinsUnit // ignore: cast_nullable_to_non_nullable
as String?,carbohydratesUnit: freezed == carbohydratesUnit ? _self.carbohydratesUnit : carbohydratesUnit // ignore: cast_nullable_to_non_nullable
as String?,fatValue: freezed == fatValue ? _self.fatValue : fatValue // ignore: cast_nullable_to_non_nullable
as double?,fiberValue: freezed == fiberValue ? _self.fiberValue : fiberValue // ignore: cast_nullable_to_non_nullable
as double?,saltValue: freezed == saltValue ? _self.saltValue : saltValue // ignore: cast_nullable_to_non_nullable
as double?,saturatedFatValue: freezed == saturatedFatValue ? _self.saturatedFatValue : saturatedFatValue // ignore: cast_nullable_to_non_nullable
as double?,sodiumValue: freezed == sodiumValue ? _self.sodiumValue : sodiumValue // ignore: cast_nullable_to_non_nullable
as double?,sugarsValue: freezed == sugarsValue ? _self.sugarsValue : sugarsValue // ignore: cast_nullable_to_non_nullable
as double?,energyKcalValue: freezed == energyKcalValue ? _self.energyKcalValue : energyKcalValue // ignore: cast_nullable_to_non_nullable
as double?,proteinsValue: freezed == proteinsValue ? _self.proteinsValue : proteinsValue // ignore: cast_nullable_to_non_nullable
as double?,carbohydratesValue: freezed == carbohydratesValue ? _self.carbohydratesValue : carbohydratesValue // ignore: cast_nullable_to_non_nullable
as double?,energy: freezed == energy ? _self.energy : energy // ignore: cast_nullable_to_non_nullable
as int?,energy100g: freezed == energy100g ? _self.energy100g : energy100g // ignore: cast_nullable_to_non_nullable
as int?,energyServing: freezed == energyServing ? _self.energyServing : energyServing // ignore: cast_nullable_to_non_nullable
as int?,energyUnit: freezed == energyUnit ? _self.energyUnit : energyUnit // ignore: cast_nullable_to_non_nullable
as String?,energyValue: freezed == energyValue ? _self.energyValue : energyValue // ignore: cast_nullable_to_non_nullable
as int?,energyKj: freezed == energyKj ? _self.energyKj : energyKj // ignore: cast_nullable_to_non_nullable
as int?,energyKj100g: freezed == energyKj100g ? _self.energyKj100g : energyKj100g // ignore: cast_nullable_to_non_nullable
as int?,energyKjServing: freezed == energyKjServing ? _self.energyKjServing : energyKjServing // ignore: cast_nullable_to_non_nullable
as int?,energyKjUnit: freezed == energyKjUnit ? _self.energyKjUnit : energyKjUnit // ignore: cast_nullable_to_non_nullable
as String?,energyKjValue: freezed == energyKjValue ? _self.energyKjValue : energyKjValue // ignore: cast_nullable_to_non_nullable
as int?,energyKcalValueComputed: freezed == energyKcalValueComputed ? _self.energyKcalValueComputed : energyKcalValueComputed // ignore: cast_nullable_to_non_nullable
as double?,energyKjValueComputed: freezed == energyKjValueComputed ? _self.energyKjValueComputed : energyKjValueComputed // ignore: cast_nullable_to_non_nullable
as double?,fruitsVegetablesLegumesEstimateFromIngredients100g: freezed == fruitsVegetablesLegumesEstimateFromIngredients100g ? _self.fruitsVegetablesLegumesEstimateFromIngredients100g : fruitsVegetablesLegumesEstimateFromIngredients100g // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesLegumesEstimateFromIngredientsServing: freezed == fruitsVegetablesLegumesEstimateFromIngredientsServing ? _self.fruitsVegetablesLegumesEstimateFromIngredientsServing : fruitsVegetablesLegumesEstimateFromIngredientsServing // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesNutsEstimateFromIngredients100g: freezed == fruitsVegetablesNutsEstimateFromIngredients100g ? _self.fruitsVegetablesNutsEstimateFromIngredients100g : fruitsVegetablesNutsEstimateFromIngredients100g // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesNutsEstimateFromIngredientsServing: freezed == fruitsVegetablesNutsEstimateFromIngredientsServing ? _self.fruitsVegetablesNutsEstimateFromIngredientsServing : fruitsVegetablesNutsEstimateFromIngredientsServing // ignore: cast_nullable_to_non_nullable
as int?,nutritionScoreFr: freezed == nutritionScoreFr ? _self.nutritionScoreFr : nutritionScoreFr // ignore: cast_nullable_to_non_nullable
as int?,nutritionScoreFr100g: freezed == nutritionScoreFr100g ? _self.nutritionScoreFr100g : nutritionScoreFr100g // ignore: cast_nullable_to_non_nullable
as int?,novaGroup: freezed == novaGroup ? _self.novaGroup : novaGroup // ignore: cast_nullable_to_non_nullable
as int?,novaGroup100g: freezed == novaGroup100g ? _self.novaGroup100g : novaGroup100g // ignore: cast_nullable_to_non_nullable
as int?,novaGroupServing: freezed == novaGroupServing ? _self.novaGroupServing : novaGroupServing // ignore: cast_nullable_to_non_nullable
as int?,calcium: freezed == calcium ? _self.calcium : calcium // ignore: cast_nullable_to_non_nullable
as double?,calcium100g: freezed == calcium100g ? _self.calcium100g : calcium100g // ignore: cast_nullable_to_non_nullable
as double?,calciumServing: freezed == calciumServing ? _self.calciumServing : calciumServing // ignore: cast_nullable_to_non_nullable
as double?,calciumUnit: freezed == calciumUnit ? _self.calciumUnit : calciumUnit // ignore: cast_nullable_to_non_nullable
as String?,calciumValue: freezed == calciumValue ? _self.calciumValue : calciumValue // ignore: cast_nullable_to_non_nullable
as double?,calciumLabel: freezed == calciumLabel ? _self.calciumLabel : calciumLabel // ignore: cast_nullable_to_non_nullable
as String?,fatLabel: freezed == fatLabel ? _self.fatLabel : fatLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Nutriments].
extension NutrimentsPatterns on Nutriments {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Nutriments value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Nutriments() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Nutriments value)  $default,){
final _that = this;
switch (_that) {
case _Nutriments():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Nutriments value)?  $default,){
final _that = this;
switch (_that) {
case _Nutriments() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "fat")  double? fat, @JsonKey(name: "fiber")  double? fiber, @JsonKey(name: "salt")  double? salt, @JsonKey(name: "saturated-fat")  double? saturatedFat, @JsonKey(name: "sodium")  double? sodium, @JsonKey(name: "sugars")  double? sugars, @JsonKey(name: "energy-kcal")  double? energyKcal, @JsonKey(name: "proteins")  double? proteins, @JsonKey(name: "carbohydrates")  double? carbohydrates, @JsonKey(name: "fat_100g")  double? fat100g, @JsonKey(name: "fiber_100g")  double? fiber100g, @JsonKey(name: "salt_100g")  double? salt100g, @JsonKey(name: "saturated-fat_100g")  double? saturatedFat100g, @JsonKey(name: "sodium_100g")  double? sodium100g, @JsonKey(name: "sugars_100g")  double? sugars100g, @JsonKey(name: "energy-kcal_100g")  double? energyKcal100g, @JsonKey(name: "proteins_100g")  double? proteins100g, @JsonKey(name: "carbohydrates_100g")  double? carbohydrates100g, @JsonKey(name: "fat_serving")  double? fatServing, @JsonKey(name: "fiber_serving")  double? fiberServing, @JsonKey(name: "salt_serving")  double? saltServing, @JsonKey(name: "saturated-fat_serving")  double? saturatedFatServing, @JsonKey(name: "sodium_serving")  double? sodiumServing, @JsonKey(name: "sugars_serving")  double? sugarsServing, @JsonKey(name: "energy-kcal_serving")  double? energyKcalServing, @JsonKey(name: "proteins_serving")  double? proteinsServing, @JsonKey(name: "carbohydrates_serving")  double? carbohydratesServing, @JsonKey(name: "fat_unit")  String? fatUnit, @JsonKey(name: "fiber_unit")  String? fiberUnit, @JsonKey(name: "salt_unit")  String? saltUnit, @JsonKey(name: "saturated-fat_unit")  String? saturatedFatUnit, @JsonKey(name: "sodium_unit")  String? sodiumUnit, @JsonKey(name: "sugars_unit")  String? sugarsUnit, @JsonKey(name: "energy-kcal_unit")  String? energyKcalUnit, @JsonKey(name: "proteins_unit")  String? proteinsUnit, @JsonKey(name: "carbohydrates_unit")  String? carbohydratesUnit, @JsonKey(name: "fat_value")  double? fatValue, @JsonKey(name: "fiber_value")  double? fiberValue, @JsonKey(name: "salt_value")  double? saltValue, @JsonKey(name: "saturated-fat_value")  double? saturatedFatValue, @JsonKey(name: "sodium_value")  double? sodiumValue, @JsonKey(name: "sugars_value")  double? sugarsValue, @JsonKey(name: "energy-kcal_value")  double? energyKcalValue, @JsonKey(name: "proteins_value")  double? proteinsValue, @JsonKey(name: "carbohydrates_value")  double? carbohydratesValue, @JsonKey(name: "energy")  int? energy, @JsonKey(name: "energy_100g")  int? energy100g, @JsonKey(name: "energy_serving")  int? energyServing, @JsonKey(name: "energy_unit")  String? energyUnit, @JsonKey(name: "energy_value")  int? energyValue, @JsonKey(name: "energy-kj")  int? energyKj, @JsonKey(name: "energy-kj_100g")  int? energyKj100g, @JsonKey(name: "energy-kj_serving")  int? energyKjServing, @JsonKey(name: "energy-kj_unit")  String? energyKjUnit, @JsonKey(name: "energy-kj_value")  int? energyKjValue, @JsonKey(name: "energy-kcal_value_computed")  double? energyKcalValueComputed, @JsonKey(name: "energy-kj_value_computed")  double? energyKjValueComputed, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g")  int? fruitsVegetablesLegumesEstimateFromIngredients100g, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving")  int? fruitsVegetablesLegumesEstimateFromIngredientsServing, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g")  int? fruitsVegetablesNutsEstimateFromIngredients100g, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving")  int? fruitsVegetablesNutsEstimateFromIngredientsServing, @JsonKey(name: "nutrition-score-fr")  int? nutritionScoreFr, @JsonKey(name: "nutrition-score-fr_100g")  int? nutritionScoreFr100g, @JsonKey(name: "nova-group")  int? novaGroup, @JsonKey(name: "nova-group_100g")  int? novaGroup100g, @JsonKey(name: "nova-group_serving")  int? novaGroupServing, @JsonKey(name: "calcium")  double? calcium, @JsonKey(name: "calcium_100g")  double? calcium100g, @JsonKey(name: "calcium_serving")  double? calciumServing, @JsonKey(name: "calcium_unit")  String? calciumUnit, @JsonKey(name: "calcium_value")  double? calciumValue, @JsonKey(name: "calcium_label")  String? calciumLabel, @JsonKey(name: "fat_label")  String? fatLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Nutriments() when $default != null:
return $default(_that.fat,_that.fiber,_that.salt,_that.saturatedFat,_that.sodium,_that.sugars,_that.energyKcal,_that.proteins,_that.carbohydrates,_that.fat100g,_that.fiber100g,_that.salt100g,_that.saturatedFat100g,_that.sodium100g,_that.sugars100g,_that.energyKcal100g,_that.proteins100g,_that.carbohydrates100g,_that.fatServing,_that.fiberServing,_that.saltServing,_that.saturatedFatServing,_that.sodiumServing,_that.sugarsServing,_that.energyKcalServing,_that.proteinsServing,_that.carbohydratesServing,_that.fatUnit,_that.fiberUnit,_that.saltUnit,_that.saturatedFatUnit,_that.sodiumUnit,_that.sugarsUnit,_that.energyKcalUnit,_that.proteinsUnit,_that.carbohydratesUnit,_that.fatValue,_that.fiberValue,_that.saltValue,_that.saturatedFatValue,_that.sodiumValue,_that.sugarsValue,_that.energyKcalValue,_that.proteinsValue,_that.carbohydratesValue,_that.energy,_that.energy100g,_that.energyServing,_that.energyUnit,_that.energyValue,_that.energyKj,_that.energyKj100g,_that.energyKjServing,_that.energyKjUnit,_that.energyKjValue,_that.energyKcalValueComputed,_that.energyKjValueComputed,_that.fruitsVegetablesLegumesEstimateFromIngredients100g,_that.fruitsVegetablesLegumesEstimateFromIngredientsServing,_that.fruitsVegetablesNutsEstimateFromIngredients100g,_that.fruitsVegetablesNutsEstimateFromIngredientsServing,_that.nutritionScoreFr,_that.nutritionScoreFr100g,_that.novaGroup,_that.novaGroup100g,_that.novaGroupServing,_that.calcium,_that.calcium100g,_that.calciumServing,_that.calciumUnit,_that.calciumValue,_that.calciumLabel,_that.fatLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "fat")  double? fat, @JsonKey(name: "fiber")  double? fiber, @JsonKey(name: "salt")  double? salt, @JsonKey(name: "saturated-fat")  double? saturatedFat, @JsonKey(name: "sodium")  double? sodium, @JsonKey(name: "sugars")  double? sugars, @JsonKey(name: "energy-kcal")  double? energyKcal, @JsonKey(name: "proteins")  double? proteins, @JsonKey(name: "carbohydrates")  double? carbohydrates, @JsonKey(name: "fat_100g")  double? fat100g, @JsonKey(name: "fiber_100g")  double? fiber100g, @JsonKey(name: "salt_100g")  double? salt100g, @JsonKey(name: "saturated-fat_100g")  double? saturatedFat100g, @JsonKey(name: "sodium_100g")  double? sodium100g, @JsonKey(name: "sugars_100g")  double? sugars100g, @JsonKey(name: "energy-kcal_100g")  double? energyKcal100g, @JsonKey(name: "proteins_100g")  double? proteins100g, @JsonKey(name: "carbohydrates_100g")  double? carbohydrates100g, @JsonKey(name: "fat_serving")  double? fatServing, @JsonKey(name: "fiber_serving")  double? fiberServing, @JsonKey(name: "salt_serving")  double? saltServing, @JsonKey(name: "saturated-fat_serving")  double? saturatedFatServing, @JsonKey(name: "sodium_serving")  double? sodiumServing, @JsonKey(name: "sugars_serving")  double? sugarsServing, @JsonKey(name: "energy-kcal_serving")  double? energyKcalServing, @JsonKey(name: "proteins_serving")  double? proteinsServing, @JsonKey(name: "carbohydrates_serving")  double? carbohydratesServing, @JsonKey(name: "fat_unit")  String? fatUnit, @JsonKey(name: "fiber_unit")  String? fiberUnit, @JsonKey(name: "salt_unit")  String? saltUnit, @JsonKey(name: "saturated-fat_unit")  String? saturatedFatUnit, @JsonKey(name: "sodium_unit")  String? sodiumUnit, @JsonKey(name: "sugars_unit")  String? sugarsUnit, @JsonKey(name: "energy-kcal_unit")  String? energyKcalUnit, @JsonKey(name: "proteins_unit")  String? proteinsUnit, @JsonKey(name: "carbohydrates_unit")  String? carbohydratesUnit, @JsonKey(name: "fat_value")  double? fatValue, @JsonKey(name: "fiber_value")  double? fiberValue, @JsonKey(name: "salt_value")  double? saltValue, @JsonKey(name: "saturated-fat_value")  double? saturatedFatValue, @JsonKey(name: "sodium_value")  double? sodiumValue, @JsonKey(name: "sugars_value")  double? sugarsValue, @JsonKey(name: "energy-kcal_value")  double? energyKcalValue, @JsonKey(name: "proteins_value")  double? proteinsValue, @JsonKey(name: "carbohydrates_value")  double? carbohydratesValue, @JsonKey(name: "energy")  int? energy, @JsonKey(name: "energy_100g")  int? energy100g, @JsonKey(name: "energy_serving")  int? energyServing, @JsonKey(name: "energy_unit")  String? energyUnit, @JsonKey(name: "energy_value")  int? energyValue, @JsonKey(name: "energy-kj")  int? energyKj, @JsonKey(name: "energy-kj_100g")  int? energyKj100g, @JsonKey(name: "energy-kj_serving")  int? energyKjServing, @JsonKey(name: "energy-kj_unit")  String? energyKjUnit, @JsonKey(name: "energy-kj_value")  int? energyKjValue, @JsonKey(name: "energy-kcal_value_computed")  double? energyKcalValueComputed, @JsonKey(name: "energy-kj_value_computed")  double? energyKjValueComputed, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g")  int? fruitsVegetablesLegumesEstimateFromIngredients100g, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving")  int? fruitsVegetablesLegumesEstimateFromIngredientsServing, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g")  int? fruitsVegetablesNutsEstimateFromIngredients100g, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving")  int? fruitsVegetablesNutsEstimateFromIngredientsServing, @JsonKey(name: "nutrition-score-fr")  int? nutritionScoreFr, @JsonKey(name: "nutrition-score-fr_100g")  int? nutritionScoreFr100g, @JsonKey(name: "nova-group")  int? novaGroup, @JsonKey(name: "nova-group_100g")  int? novaGroup100g, @JsonKey(name: "nova-group_serving")  int? novaGroupServing, @JsonKey(name: "calcium")  double? calcium, @JsonKey(name: "calcium_100g")  double? calcium100g, @JsonKey(name: "calcium_serving")  double? calciumServing, @JsonKey(name: "calcium_unit")  String? calciumUnit, @JsonKey(name: "calcium_value")  double? calciumValue, @JsonKey(name: "calcium_label")  String? calciumLabel, @JsonKey(name: "fat_label")  String? fatLabel)  $default,) {final _that = this;
switch (_that) {
case _Nutriments():
return $default(_that.fat,_that.fiber,_that.salt,_that.saturatedFat,_that.sodium,_that.sugars,_that.energyKcal,_that.proteins,_that.carbohydrates,_that.fat100g,_that.fiber100g,_that.salt100g,_that.saturatedFat100g,_that.sodium100g,_that.sugars100g,_that.energyKcal100g,_that.proteins100g,_that.carbohydrates100g,_that.fatServing,_that.fiberServing,_that.saltServing,_that.saturatedFatServing,_that.sodiumServing,_that.sugarsServing,_that.energyKcalServing,_that.proteinsServing,_that.carbohydratesServing,_that.fatUnit,_that.fiberUnit,_that.saltUnit,_that.saturatedFatUnit,_that.sodiumUnit,_that.sugarsUnit,_that.energyKcalUnit,_that.proteinsUnit,_that.carbohydratesUnit,_that.fatValue,_that.fiberValue,_that.saltValue,_that.saturatedFatValue,_that.sodiumValue,_that.sugarsValue,_that.energyKcalValue,_that.proteinsValue,_that.carbohydratesValue,_that.energy,_that.energy100g,_that.energyServing,_that.energyUnit,_that.energyValue,_that.energyKj,_that.energyKj100g,_that.energyKjServing,_that.energyKjUnit,_that.energyKjValue,_that.energyKcalValueComputed,_that.energyKjValueComputed,_that.fruitsVegetablesLegumesEstimateFromIngredients100g,_that.fruitsVegetablesLegumesEstimateFromIngredientsServing,_that.fruitsVegetablesNutsEstimateFromIngredients100g,_that.fruitsVegetablesNutsEstimateFromIngredientsServing,_that.nutritionScoreFr,_that.nutritionScoreFr100g,_that.novaGroup,_that.novaGroup100g,_that.novaGroupServing,_that.calcium,_that.calcium100g,_that.calciumServing,_that.calciumUnit,_that.calciumValue,_that.calciumLabel,_that.fatLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "fat")  double? fat, @JsonKey(name: "fiber")  double? fiber, @JsonKey(name: "salt")  double? salt, @JsonKey(name: "saturated-fat")  double? saturatedFat, @JsonKey(name: "sodium")  double? sodium, @JsonKey(name: "sugars")  double? sugars, @JsonKey(name: "energy-kcal")  double? energyKcal, @JsonKey(name: "proteins")  double? proteins, @JsonKey(name: "carbohydrates")  double? carbohydrates, @JsonKey(name: "fat_100g")  double? fat100g, @JsonKey(name: "fiber_100g")  double? fiber100g, @JsonKey(name: "salt_100g")  double? salt100g, @JsonKey(name: "saturated-fat_100g")  double? saturatedFat100g, @JsonKey(name: "sodium_100g")  double? sodium100g, @JsonKey(name: "sugars_100g")  double? sugars100g, @JsonKey(name: "energy-kcal_100g")  double? energyKcal100g, @JsonKey(name: "proteins_100g")  double? proteins100g, @JsonKey(name: "carbohydrates_100g")  double? carbohydrates100g, @JsonKey(name: "fat_serving")  double? fatServing, @JsonKey(name: "fiber_serving")  double? fiberServing, @JsonKey(name: "salt_serving")  double? saltServing, @JsonKey(name: "saturated-fat_serving")  double? saturatedFatServing, @JsonKey(name: "sodium_serving")  double? sodiumServing, @JsonKey(name: "sugars_serving")  double? sugarsServing, @JsonKey(name: "energy-kcal_serving")  double? energyKcalServing, @JsonKey(name: "proteins_serving")  double? proteinsServing, @JsonKey(name: "carbohydrates_serving")  double? carbohydratesServing, @JsonKey(name: "fat_unit")  String? fatUnit, @JsonKey(name: "fiber_unit")  String? fiberUnit, @JsonKey(name: "salt_unit")  String? saltUnit, @JsonKey(name: "saturated-fat_unit")  String? saturatedFatUnit, @JsonKey(name: "sodium_unit")  String? sodiumUnit, @JsonKey(name: "sugars_unit")  String? sugarsUnit, @JsonKey(name: "energy-kcal_unit")  String? energyKcalUnit, @JsonKey(name: "proteins_unit")  String? proteinsUnit, @JsonKey(name: "carbohydrates_unit")  String? carbohydratesUnit, @JsonKey(name: "fat_value")  double? fatValue, @JsonKey(name: "fiber_value")  double? fiberValue, @JsonKey(name: "salt_value")  double? saltValue, @JsonKey(name: "saturated-fat_value")  double? saturatedFatValue, @JsonKey(name: "sodium_value")  double? sodiumValue, @JsonKey(name: "sugars_value")  double? sugarsValue, @JsonKey(name: "energy-kcal_value")  double? energyKcalValue, @JsonKey(name: "proteins_value")  double? proteinsValue, @JsonKey(name: "carbohydrates_value")  double? carbohydratesValue, @JsonKey(name: "energy")  int? energy, @JsonKey(name: "energy_100g")  int? energy100g, @JsonKey(name: "energy_serving")  int? energyServing, @JsonKey(name: "energy_unit")  String? energyUnit, @JsonKey(name: "energy_value")  int? energyValue, @JsonKey(name: "energy-kj")  int? energyKj, @JsonKey(name: "energy-kj_100g")  int? energyKj100g, @JsonKey(name: "energy-kj_serving")  int? energyKjServing, @JsonKey(name: "energy-kj_unit")  String? energyKjUnit, @JsonKey(name: "energy-kj_value")  int? energyKjValue, @JsonKey(name: "energy-kcal_value_computed")  double? energyKcalValueComputed, @JsonKey(name: "energy-kj_value_computed")  double? energyKjValueComputed, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g")  int? fruitsVegetablesLegumesEstimateFromIngredients100g, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving")  int? fruitsVegetablesLegumesEstimateFromIngredientsServing, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g")  int? fruitsVegetablesNutsEstimateFromIngredients100g, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving")  int? fruitsVegetablesNutsEstimateFromIngredientsServing, @JsonKey(name: "nutrition-score-fr")  int? nutritionScoreFr, @JsonKey(name: "nutrition-score-fr_100g")  int? nutritionScoreFr100g, @JsonKey(name: "nova-group")  int? novaGroup, @JsonKey(name: "nova-group_100g")  int? novaGroup100g, @JsonKey(name: "nova-group_serving")  int? novaGroupServing, @JsonKey(name: "calcium")  double? calcium, @JsonKey(name: "calcium_100g")  double? calcium100g, @JsonKey(name: "calcium_serving")  double? calciumServing, @JsonKey(name: "calcium_unit")  String? calciumUnit, @JsonKey(name: "calcium_value")  double? calciumValue, @JsonKey(name: "calcium_label")  String? calciumLabel, @JsonKey(name: "fat_label")  String? fatLabel)?  $default,) {final _that = this;
switch (_that) {
case _Nutriments() when $default != null:
return $default(_that.fat,_that.fiber,_that.salt,_that.saturatedFat,_that.sodium,_that.sugars,_that.energyKcal,_that.proteins,_that.carbohydrates,_that.fat100g,_that.fiber100g,_that.salt100g,_that.saturatedFat100g,_that.sodium100g,_that.sugars100g,_that.energyKcal100g,_that.proteins100g,_that.carbohydrates100g,_that.fatServing,_that.fiberServing,_that.saltServing,_that.saturatedFatServing,_that.sodiumServing,_that.sugarsServing,_that.energyKcalServing,_that.proteinsServing,_that.carbohydratesServing,_that.fatUnit,_that.fiberUnit,_that.saltUnit,_that.saturatedFatUnit,_that.sodiumUnit,_that.sugarsUnit,_that.energyKcalUnit,_that.proteinsUnit,_that.carbohydratesUnit,_that.fatValue,_that.fiberValue,_that.saltValue,_that.saturatedFatValue,_that.sodiumValue,_that.sugarsValue,_that.energyKcalValue,_that.proteinsValue,_that.carbohydratesValue,_that.energy,_that.energy100g,_that.energyServing,_that.energyUnit,_that.energyValue,_that.energyKj,_that.energyKj100g,_that.energyKjServing,_that.energyKjUnit,_that.energyKjValue,_that.energyKcalValueComputed,_that.energyKjValueComputed,_that.fruitsVegetablesLegumesEstimateFromIngredients100g,_that.fruitsVegetablesLegumesEstimateFromIngredientsServing,_that.fruitsVegetablesNutsEstimateFromIngredients100g,_that.fruitsVegetablesNutsEstimateFromIngredientsServing,_that.nutritionScoreFr,_that.nutritionScoreFr100g,_that.novaGroup,_that.novaGroup100g,_that.novaGroupServing,_that.calcium,_that.calcium100g,_that.calciumServing,_that.calciumUnit,_that.calciumValue,_that.calciumLabel,_that.fatLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Nutriments implements Nutriments {
  const _Nutriments({@JsonKey(name: "fat") this.fat, @JsonKey(name: "fiber") this.fiber, @JsonKey(name: "salt") this.salt, @JsonKey(name: "saturated-fat") this.saturatedFat, @JsonKey(name: "sodium") this.sodium, @JsonKey(name: "sugars") this.sugars, @JsonKey(name: "energy-kcal") this.energyKcal, @JsonKey(name: "proteins") this.proteins, @JsonKey(name: "carbohydrates") this.carbohydrates, @JsonKey(name: "fat_100g") this.fat100g, @JsonKey(name: "fiber_100g") this.fiber100g, @JsonKey(name: "salt_100g") this.salt100g, @JsonKey(name: "saturated-fat_100g") this.saturatedFat100g, @JsonKey(name: "sodium_100g") this.sodium100g, @JsonKey(name: "sugars_100g") this.sugars100g, @JsonKey(name: "energy-kcal_100g") this.energyKcal100g, @JsonKey(name: "proteins_100g") this.proteins100g, @JsonKey(name: "carbohydrates_100g") this.carbohydrates100g, @JsonKey(name: "fat_serving") this.fatServing, @JsonKey(name: "fiber_serving") this.fiberServing, @JsonKey(name: "salt_serving") this.saltServing, @JsonKey(name: "saturated-fat_serving") this.saturatedFatServing, @JsonKey(name: "sodium_serving") this.sodiumServing, @JsonKey(name: "sugars_serving") this.sugarsServing, @JsonKey(name: "energy-kcal_serving") this.energyKcalServing, @JsonKey(name: "proteins_serving") this.proteinsServing, @JsonKey(name: "carbohydrates_serving") this.carbohydratesServing, @JsonKey(name: "fat_unit") this.fatUnit, @JsonKey(name: "fiber_unit") this.fiberUnit, @JsonKey(name: "salt_unit") this.saltUnit, @JsonKey(name: "saturated-fat_unit") this.saturatedFatUnit, @JsonKey(name: "sodium_unit") this.sodiumUnit, @JsonKey(name: "sugars_unit") this.sugarsUnit, @JsonKey(name: "energy-kcal_unit") this.energyKcalUnit, @JsonKey(name: "proteins_unit") this.proteinsUnit, @JsonKey(name: "carbohydrates_unit") this.carbohydratesUnit, @JsonKey(name: "fat_value") this.fatValue, @JsonKey(name: "fiber_value") this.fiberValue, @JsonKey(name: "salt_value") this.saltValue, @JsonKey(name: "saturated-fat_value") this.saturatedFatValue, @JsonKey(name: "sodium_value") this.sodiumValue, @JsonKey(name: "sugars_value") this.sugarsValue, @JsonKey(name: "energy-kcal_value") this.energyKcalValue, @JsonKey(name: "proteins_value") this.proteinsValue, @JsonKey(name: "carbohydrates_value") this.carbohydratesValue, @JsonKey(name: "energy") this.energy, @JsonKey(name: "energy_100g") this.energy100g, @JsonKey(name: "energy_serving") this.energyServing, @JsonKey(name: "energy_unit") this.energyUnit, @JsonKey(name: "energy_value") this.energyValue, @JsonKey(name: "energy-kj") this.energyKj, @JsonKey(name: "energy-kj_100g") this.energyKj100g, @JsonKey(name: "energy-kj_serving") this.energyKjServing, @JsonKey(name: "energy-kj_unit") this.energyKjUnit, @JsonKey(name: "energy-kj_value") this.energyKjValue, @JsonKey(name: "energy-kcal_value_computed") this.energyKcalValueComputed, @JsonKey(name: "energy-kj_value_computed") this.energyKjValueComputed, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g") this.fruitsVegetablesLegumesEstimateFromIngredients100g, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving") this.fruitsVegetablesLegumesEstimateFromIngredientsServing, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g") this.fruitsVegetablesNutsEstimateFromIngredients100g, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving") this.fruitsVegetablesNutsEstimateFromIngredientsServing, @JsonKey(name: "nutrition-score-fr") this.nutritionScoreFr, @JsonKey(name: "nutrition-score-fr_100g") this.nutritionScoreFr100g, @JsonKey(name: "nova-group") this.novaGroup, @JsonKey(name: "nova-group_100g") this.novaGroup100g, @JsonKey(name: "nova-group_serving") this.novaGroupServing, @JsonKey(name: "calcium") this.calcium, @JsonKey(name: "calcium_100g") this.calcium100g, @JsonKey(name: "calcium_serving") this.calciumServing, @JsonKey(name: "calcium_unit") this.calciumUnit, @JsonKey(name: "calcium_value") this.calciumValue, @JsonKey(name: "calcium_label") this.calciumLabel, @JsonKey(name: "fat_label") this.fatLabel});
  factory _Nutriments.fromJson(Map<String, dynamic> json) => _$NutrimentsFromJson(json);

// Basic nutrients
@override@JsonKey(name: "fat") final  double? fat;
@override@JsonKey(name: "fiber") final  double? fiber;
@override@JsonKey(name: "salt") final  double? salt;
@override@JsonKey(name: "saturated-fat") final  double? saturatedFat;
@override@JsonKey(name: "sodium") final  double? sodium;
@override@JsonKey(name: "sugars") final  double? sugars;
@override@JsonKey(name: "energy-kcal") final  double? energyKcal;
@override@JsonKey(name: "proteins") final  double? proteins;
@override@JsonKey(name: "carbohydrates") final  double? carbohydrates;
// Per 100g values
@override@JsonKey(name: "fat_100g") final  double? fat100g;
@override@JsonKey(name: "fiber_100g") final  double? fiber100g;
@override@JsonKey(name: "salt_100g") final  double? salt100g;
@override@JsonKey(name: "saturated-fat_100g") final  double? saturatedFat100g;
@override@JsonKey(name: "sodium_100g") final  double? sodium100g;
@override@JsonKey(name: "sugars_100g") final  double? sugars100g;
@override@JsonKey(name: "energy-kcal_100g") final  double? energyKcal100g;
@override@JsonKey(name: "proteins_100g") final  double? proteins100g;
@override@JsonKey(name: "carbohydrates_100g") final  double? carbohydrates100g;
// Serving values
@override@JsonKey(name: "fat_serving") final  double? fatServing;
@override@JsonKey(name: "fiber_serving") final  double? fiberServing;
@override@JsonKey(name: "salt_serving") final  double? saltServing;
@override@JsonKey(name: "saturated-fat_serving") final  double? saturatedFatServing;
@override@JsonKey(name: "sodium_serving") final  double? sodiumServing;
@override@JsonKey(name: "sugars_serving") final  double? sugarsServing;
@override@JsonKey(name: "energy-kcal_serving") final  double? energyKcalServing;
@override@JsonKey(name: "proteins_serving") final  double? proteinsServing;
@override@JsonKey(name: "carbohydrates_serving") final  double? carbohydratesServing;
// Unit values
@override@JsonKey(name: "fat_unit") final  String? fatUnit;
@override@JsonKey(name: "fiber_unit") final  String? fiberUnit;
@override@JsonKey(name: "salt_unit") final  String? saltUnit;
@override@JsonKey(name: "saturated-fat_unit") final  String? saturatedFatUnit;
@override@JsonKey(name: "sodium_unit") final  String? sodiumUnit;
@override@JsonKey(name: "sugars_unit") final  String? sugarsUnit;
@override@JsonKey(name: "energy-kcal_unit") final  String? energyKcalUnit;
@override@JsonKey(name: "proteins_unit") final  String? proteinsUnit;
@override@JsonKey(name: "carbohydrates_unit") final  String? carbohydratesUnit;
// Value fields
@override@JsonKey(name: "fat_value") final  double? fatValue;
@override@JsonKey(name: "fiber_value") final  double? fiberValue;
@override@JsonKey(name: "salt_value") final  double? saltValue;
@override@JsonKey(name: "saturated-fat_value") final  double? saturatedFatValue;
@override@JsonKey(name: "sodium_value") final  double? sodiumValue;
@override@JsonKey(name: "sugars_value") final  double? sugarsValue;
@override@JsonKey(name: "energy-kcal_value") final  double? energyKcalValue;
@override@JsonKey(name: "proteins_value") final  double? proteinsValue;
@override@JsonKey(name: "carbohydrates_value") final  double? carbohydratesValue;
// Energy fields
@override@JsonKey(name: "energy") final  int? energy;
@override@JsonKey(name: "energy_100g") final  int? energy100g;
@override@JsonKey(name: "energy_serving") final  int? energyServing;
@override@JsonKey(name: "energy_unit") final  String? energyUnit;
@override@JsonKey(name: "energy_value") final  int? energyValue;
@override@JsonKey(name: "energy-kj") final  int? energyKj;
@override@JsonKey(name: "energy-kj_100g") final  int? energyKj100g;
@override@JsonKey(name: "energy-kj_serving") final  int? energyKjServing;
@override@JsonKey(name: "energy-kj_unit") final  String? energyKjUnit;
@override@JsonKey(name: "energy-kj_value") final  int? energyKjValue;
@override@JsonKey(name: "energy-kcal_value_computed") final  double? energyKcalValueComputed;
@override@JsonKey(name: "energy-kj_value_computed") final  double? energyKjValueComputed;
// Fruits and vegetables estimates
@override@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g") final  int? fruitsVegetablesLegumesEstimateFromIngredients100g;
@override@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving") final  int? fruitsVegetablesLegumesEstimateFromIngredientsServing;
@override@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g") final  int? fruitsVegetablesNutsEstimateFromIngredients100g;
@override@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving") final  int? fruitsVegetablesNutsEstimateFromIngredientsServing;
// Nutrition scores
@override@JsonKey(name: "nutrition-score-fr") final  int? nutritionScoreFr;
@override@JsonKey(name: "nutrition-score-fr_100g") final  int? nutritionScoreFr100g;
// NOVA groups
@override@JsonKey(name: "nova-group") final  int? novaGroup;
@override@JsonKey(name: "nova-group_100g") final  int? novaGroup100g;
@override@JsonKey(name: "nova-group_serving") final  int? novaGroupServing;
// Additional nutrients
@override@JsonKey(name: "calcium") final  double? calcium;
@override@JsonKey(name: "calcium_100g") final  double? calcium100g;
@override@JsonKey(name: "calcium_serving") final  double? calciumServing;
@override@JsonKey(name: "calcium_unit") final  String? calciumUnit;
@override@JsonKey(name: "calcium_value") final  double? calciumValue;
@override@JsonKey(name: "calcium_label") final  String? calciumLabel;
@override@JsonKey(name: "fat_label") final  String? fatLabel;

/// Create a copy of Nutriments
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NutrimentsCopyWith<_Nutriments> get copyWith => __$NutrimentsCopyWithImpl<_Nutriments>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NutrimentsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Nutriments&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.fiber, fiber) || other.fiber == fiber)&&(identical(other.salt, salt) || other.salt == salt)&&(identical(other.saturatedFat, saturatedFat) || other.saturatedFat == saturatedFat)&&(identical(other.sodium, sodium) || other.sodium == sodium)&&(identical(other.sugars, sugars) || other.sugars == sugars)&&(identical(other.energyKcal, energyKcal) || other.energyKcal == energyKcal)&&(identical(other.proteins, proteins) || other.proteins == proteins)&&(identical(other.carbohydrates, carbohydrates) || other.carbohydrates == carbohydrates)&&(identical(other.fat100g, fat100g) || other.fat100g == fat100g)&&(identical(other.fiber100g, fiber100g) || other.fiber100g == fiber100g)&&(identical(other.salt100g, salt100g) || other.salt100g == salt100g)&&(identical(other.saturatedFat100g, saturatedFat100g) || other.saturatedFat100g == saturatedFat100g)&&(identical(other.sodium100g, sodium100g) || other.sodium100g == sodium100g)&&(identical(other.sugars100g, sugars100g) || other.sugars100g == sugars100g)&&(identical(other.energyKcal100g, energyKcal100g) || other.energyKcal100g == energyKcal100g)&&(identical(other.proteins100g, proteins100g) || other.proteins100g == proteins100g)&&(identical(other.carbohydrates100g, carbohydrates100g) || other.carbohydrates100g == carbohydrates100g)&&(identical(other.fatServing, fatServing) || other.fatServing == fatServing)&&(identical(other.fiberServing, fiberServing) || other.fiberServing == fiberServing)&&(identical(other.saltServing, saltServing) || other.saltServing == saltServing)&&(identical(other.saturatedFatServing, saturatedFatServing) || other.saturatedFatServing == saturatedFatServing)&&(identical(other.sodiumServing, sodiumServing) || other.sodiumServing == sodiumServing)&&(identical(other.sugarsServing, sugarsServing) || other.sugarsServing == sugarsServing)&&(identical(other.energyKcalServing, energyKcalServing) || other.energyKcalServing == energyKcalServing)&&(identical(other.proteinsServing, proteinsServing) || other.proteinsServing == proteinsServing)&&(identical(other.carbohydratesServing, carbohydratesServing) || other.carbohydratesServing == carbohydratesServing)&&(identical(other.fatUnit, fatUnit) || other.fatUnit == fatUnit)&&(identical(other.fiberUnit, fiberUnit) || other.fiberUnit == fiberUnit)&&(identical(other.saltUnit, saltUnit) || other.saltUnit == saltUnit)&&(identical(other.saturatedFatUnit, saturatedFatUnit) || other.saturatedFatUnit == saturatedFatUnit)&&(identical(other.sodiumUnit, sodiumUnit) || other.sodiumUnit == sodiumUnit)&&(identical(other.sugarsUnit, sugarsUnit) || other.sugarsUnit == sugarsUnit)&&(identical(other.energyKcalUnit, energyKcalUnit) || other.energyKcalUnit == energyKcalUnit)&&(identical(other.proteinsUnit, proteinsUnit) || other.proteinsUnit == proteinsUnit)&&(identical(other.carbohydratesUnit, carbohydratesUnit) || other.carbohydratesUnit == carbohydratesUnit)&&(identical(other.fatValue, fatValue) || other.fatValue == fatValue)&&(identical(other.fiberValue, fiberValue) || other.fiberValue == fiberValue)&&(identical(other.saltValue, saltValue) || other.saltValue == saltValue)&&(identical(other.saturatedFatValue, saturatedFatValue) || other.saturatedFatValue == saturatedFatValue)&&(identical(other.sodiumValue, sodiumValue) || other.sodiumValue == sodiumValue)&&(identical(other.sugarsValue, sugarsValue) || other.sugarsValue == sugarsValue)&&(identical(other.energyKcalValue, energyKcalValue) || other.energyKcalValue == energyKcalValue)&&(identical(other.proteinsValue, proteinsValue) || other.proteinsValue == proteinsValue)&&(identical(other.carbohydratesValue, carbohydratesValue) || other.carbohydratesValue == carbohydratesValue)&&(identical(other.energy, energy) || other.energy == energy)&&(identical(other.energy100g, energy100g) || other.energy100g == energy100g)&&(identical(other.energyServing, energyServing) || other.energyServing == energyServing)&&(identical(other.energyUnit, energyUnit) || other.energyUnit == energyUnit)&&(identical(other.energyValue, energyValue) || other.energyValue == energyValue)&&(identical(other.energyKj, energyKj) || other.energyKj == energyKj)&&(identical(other.energyKj100g, energyKj100g) || other.energyKj100g == energyKj100g)&&(identical(other.energyKjServing, energyKjServing) || other.energyKjServing == energyKjServing)&&(identical(other.energyKjUnit, energyKjUnit) || other.energyKjUnit == energyKjUnit)&&(identical(other.energyKjValue, energyKjValue) || other.energyKjValue == energyKjValue)&&(identical(other.energyKcalValueComputed, energyKcalValueComputed) || other.energyKcalValueComputed == energyKcalValueComputed)&&(identical(other.energyKjValueComputed, energyKjValueComputed) || other.energyKjValueComputed == energyKjValueComputed)&&(identical(other.fruitsVegetablesLegumesEstimateFromIngredients100g, fruitsVegetablesLegumesEstimateFromIngredients100g) || other.fruitsVegetablesLegumesEstimateFromIngredients100g == fruitsVegetablesLegumesEstimateFromIngredients100g)&&(identical(other.fruitsVegetablesLegumesEstimateFromIngredientsServing, fruitsVegetablesLegumesEstimateFromIngredientsServing) || other.fruitsVegetablesLegumesEstimateFromIngredientsServing == fruitsVegetablesLegumesEstimateFromIngredientsServing)&&(identical(other.fruitsVegetablesNutsEstimateFromIngredients100g, fruitsVegetablesNutsEstimateFromIngredients100g) || other.fruitsVegetablesNutsEstimateFromIngredients100g == fruitsVegetablesNutsEstimateFromIngredients100g)&&(identical(other.fruitsVegetablesNutsEstimateFromIngredientsServing, fruitsVegetablesNutsEstimateFromIngredientsServing) || other.fruitsVegetablesNutsEstimateFromIngredientsServing == fruitsVegetablesNutsEstimateFromIngredientsServing)&&(identical(other.nutritionScoreFr, nutritionScoreFr) || other.nutritionScoreFr == nutritionScoreFr)&&(identical(other.nutritionScoreFr100g, nutritionScoreFr100g) || other.nutritionScoreFr100g == nutritionScoreFr100g)&&(identical(other.novaGroup, novaGroup) || other.novaGroup == novaGroup)&&(identical(other.novaGroup100g, novaGroup100g) || other.novaGroup100g == novaGroup100g)&&(identical(other.novaGroupServing, novaGroupServing) || other.novaGroupServing == novaGroupServing)&&(identical(other.calcium, calcium) || other.calcium == calcium)&&(identical(other.calcium100g, calcium100g) || other.calcium100g == calcium100g)&&(identical(other.calciumServing, calciumServing) || other.calciumServing == calciumServing)&&(identical(other.calciumUnit, calciumUnit) || other.calciumUnit == calciumUnit)&&(identical(other.calciumValue, calciumValue) || other.calciumValue == calciumValue)&&(identical(other.calciumLabel, calciumLabel) || other.calciumLabel == calciumLabel)&&(identical(other.fatLabel, fatLabel) || other.fatLabel == fatLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,fat,fiber,salt,saturatedFat,sodium,sugars,energyKcal,proteins,carbohydrates,fat100g,fiber100g,salt100g,saturatedFat100g,sodium100g,sugars100g,energyKcal100g,proteins100g,carbohydrates100g,fatServing,fiberServing,saltServing,saturatedFatServing,sodiumServing,sugarsServing,energyKcalServing,proteinsServing,carbohydratesServing,fatUnit,fiberUnit,saltUnit,saturatedFatUnit,sodiumUnit,sugarsUnit,energyKcalUnit,proteinsUnit,carbohydratesUnit,fatValue,fiberValue,saltValue,saturatedFatValue,sodiumValue,sugarsValue,energyKcalValue,proteinsValue,carbohydratesValue,energy,energy100g,energyServing,energyUnit,energyValue,energyKj,energyKj100g,energyKjServing,energyKjUnit,energyKjValue,energyKcalValueComputed,energyKjValueComputed,fruitsVegetablesLegumesEstimateFromIngredients100g,fruitsVegetablesLegumesEstimateFromIngredientsServing,fruitsVegetablesNutsEstimateFromIngredients100g,fruitsVegetablesNutsEstimateFromIngredientsServing,nutritionScoreFr,nutritionScoreFr100g,novaGroup,novaGroup100g,novaGroupServing,calcium,calcium100g,calciumServing,calciumUnit,calciumValue,calciumLabel,fatLabel]);

@override
String toString() {
  return 'Nutriments(fat: $fat, fiber: $fiber, salt: $salt, saturatedFat: $saturatedFat, sodium: $sodium, sugars: $sugars, energyKcal: $energyKcal, proteins: $proteins, carbohydrates: $carbohydrates, fat100g: $fat100g, fiber100g: $fiber100g, salt100g: $salt100g, saturatedFat100g: $saturatedFat100g, sodium100g: $sodium100g, sugars100g: $sugars100g, energyKcal100g: $energyKcal100g, proteins100g: $proteins100g, carbohydrates100g: $carbohydrates100g, fatServing: $fatServing, fiberServing: $fiberServing, saltServing: $saltServing, saturatedFatServing: $saturatedFatServing, sodiumServing: $sodiumServing, sugarsServing: $sugarsServing, energyKcalServing: $energyKcalServing, proteinsServing: $proteinsServing, carbohydratesServing: $carbohydratesServing, fatUnit: $fatUnit, fiberUnit: $fiberUnit, saltUnit: $saltUnit, saturatedFatUnit: $saturatedFatUnit, sodiumUnit: $sodiumUnit, sugarsUnit: $sugarsUnit, energyKcalUnit: $energyKcalUnit, proteinsUnit: $proteinsUnit, carbohydratesUnit: $carbohydratesUnit, fatValue: $fatValue, fiberValue: $fiberValue, saltValue: $saltValue, saturatedFatValue: $saturatedFatValue, sodiumValue: $sodiumValue, sugarsValue: $sugarsValue, energyKcalValue: $energyKcalValue, proteinsValue: $proteinsValue, carbohydratesValue: $carbohydratesValue, energy: $energy, energy100g: $energy100g, energyServing: $energyServing, energyUnit: $energyUnit, energyValue: $energyValue, energyKj: $energyKj, energyKj100g: $energyKj100g, energyKjServing: $energyKjServing, energyKjUnit: $energyKjUnit, energyKjValue: $energyKjValue, energyKcalValueComputed: $energyKcalValueComputed, energyKjValueComputed: $energyKjValueComputed, fruitsVegetablesLegumesEstimateFromIngredients100g: $fruitsVegetablesLegumesEstimateFromIngredients100g, fruitsVegetablesLegumesEstimateFromIngredientsServing: $fruitsVegetablesLegumesEstimateFromIngredientsServing, fruitsVegetablesNutsEstimateFromIngredients100g: $fruitsVegetablesNutsEstimateFromIngredients100g, fruitsVegetablesNutsEstimateFromIngredientsServing: $fruitsVegetablesNutsEstimateFromIngredientsServing, nutritionScoreFr: $nutritionScoreFr, nutritionScoreFr100g: $nutritionScoreFr100g, novaGroup: $novaGroup, novaGroup100g: $novaGroup100g, novaGroupServing: $novaGroupServing, calcium: $calcium, calcium100g: $calcium100g, calciumServing: $calciumServing, calciumUnit: $calciumUnit, calciumValue: $calciumValue, calciumLabel: $calciumLabel, fatLabel: $fatLabel)';
}


}

/// @nodoc
abstract mixin class _$NutrimentsCopyWith<$Res> implements $NutrimentsCopyWith<$Res> {
  factory _$NutrimentsCopyWith(_Nutriments value, $Res Function(_Nutriments) _then) = __$NutrimentsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "fat") double? fat,@JsonKey(name: "fiber") double? fiber,@JsonKey(name: "salt") double? salt,@JsonKey(name: "saturated-fat") double? saturatedFat,@JsonKey(name: "sodium") double? sodium,@JsonKey(name: "sugars") double? sugars,@JsonKey(name: "energy-kcal") double? energyKcal,@JsonKey(name: "proteins") double? proteins,@JsonKey(name: "carbohydrates") double? carbohydrates,@JsonKey(name: "fat_100g") double? fat100g,@JsonKey(name: "fiber_100g") double? fiber100g,@JsonKey(name: "salt_100g") double? salt100g,@JsonKey(name: "saturated-fat_100g") double? saturatedFat100g,@JsonKey(name: "sodium_100g") double? sodium100g,@JsonKey(name: "sugars_100g") double? sugars100g,@JsonKey(name: "energy-kcal_100g") double? energyKcal100g,@JsonKey(name: "proteins_100g") double? proteins100g,@JsonKey(name: "carbohydrates_100g") double? carbohydrates100g,@JsonKey(name: "fat_serving") double? fatServing,@JsonKey(name: "fiber_serving") double? fiberServing,@JsonKey(name: "salt_serving") double? saltServing,@JsonKey(name: "saturated-fat_serving") double? saturatedFatServing,@JsonKey(name: "sodium_serving") double? sodiumServing,@JsonKey(name: "sugars_serving") double? sugarsServing,@JsonKey(name: "energy-kcal_serving") double? energyKcalServing,@JsonKey(name: "proteins_serving") double? proteinsServing,@JsonKey(name: "carbohydrates_serving") double? carbohydratesServing,@JsonKey(name: "fat_unit") String? fatUnit,@JsonKey(name: "fiber_unit") String? fiberUnit,@JsonKey(name: "salt_unit") String? saltUnit,@JsonKey(name: "saturated-fat_unit") String? saturatedFatUnit,@JsonKey(name: "sodium_unit") String? sodiumUnit,@JsonKey(name: "sugars_unit") String? sugarsUnit,@JsonKey(name: "energy-kcal_unit") String? energyKcalUnit,@JsonKey(name: "proteins_unit") String? proteinsUnit,@JsonKey(name: "carbohydrates_unit") String? carbohydratesUnit,@JsonKey(name: "fat_value") double? fatValue,@JsonKey(name: "fiber_value") double? fiberValue,@JsonKey(name: "salt_value") double? saltValue,@JsonKey(name: "saturated-fat_value") double? saturatedFatValue,@JsonKey(name: "sodium_value") double? sodiumValue,@JsonKey(name: "sugars_value") double? sugarsValue,@JsonKey(name: "energy-kcal_value") double? energyKcalValue,@JsonKey(name: "proteins_value") double? proteinsValue,@JsonKey(name: "carbohydrates_value") double? carbohydratesValue,@JsonKey(name: "energy") int? energy,@JsonKey(name: "energy_100g") int? energy100g,@JsonKey(name: "energy_serving") int? energyServing,@JsonKey(name: "energy_unit") String? energyUnit,@JsonKey(name: "energy_value") int? energyValue,@JsonKey(name: "energy-kj") int? energyKj,@JsonKey(name: "energy-kj_100g") int? energyKj100g,@JsonKey(name: "energy-kj_serving") int? energyKjServing,@JsonKey(name: "energy-kj_unit") String? energyKjUnit,@JsonKey(name: "energy-kj_value") int? energyKjValue,@JsonKey(name: "energy-kcal_value_computed") double? energyKcalValueComputed,@JsonKey(name: "energy-kj_value_computed") double? energyKjValueComputed,@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g") int? fruitsVegetablesLegumesEstimateFromIngredients100g,@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving") int? fruitsVegetablesLegumesEstimateFromIngredientsServing,@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g") int? fruitsVegetablesNutsEstimateFromIngredients100g,@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving") int? fruitsVegetablesNutsEstimateFromIngredientsServing,@JsonKey(name: "nutrition-score-fr") int? nutritionScoreFr,@JsonKey(name: "nutrition-score-fr_100g") int? nutritionScoreFr100g,@JsonKey(name: "nova-group") int? novaGroup,@JsonKey(name: "nova-group_100g") int? novaGroup100g,@JsonKey(name: "nova-group_serving") int? novaGroupServing,@JsonKey(name: "calcium") double? calcium,@JsonKey(name: "calcium_100g") double? calcium100g,@JsonKey(name: "calcium_serving") double? calciumServing,@JsonKey(name: "calcium_unit") String? calciumUnit,@JsonKey(name: "calcium_value") double? calciumValue,@JsonKey(name: "calcium_label") String? calciumLabel,@JsonKey(name: "fat_label") String? fatLabel
});




}
/// @nodoc
class __$NutrimentsCopyWithImpl<$Res>
    implements _$NutrimentsCopyWith<$Res> {
  __$NutrimentsCopyWithImpl(this._self, this._then);

  final _Nutriments _self;
  final $Res Function(_Nutriments) _then;

/// Create a copy of Nutriments
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fat = freezed,Object? fiber = freezed,Object? salt = freezed,Object? saturatedFat = freezed,Object? sodium = freezed,Object? sugars = freezed,Object? energyKcal = freezed,Object? proteins = freezed,Object? carbohydrates = freezed,Object? fat100g = freezed,Object? fiber100g = freezed,Object? salt100g = freezed,Object? saturatedFat100g = freezed,Object? sodium100g = freezed,Object? sugars100g = freezed,Object? energyKcal100g = freezed,Object? proteins100g = freezed,Object? carbohydrates100g = freezed,Object? fatServing = freezed,Object? fiberServing = freezed,Object? saltServing = freezed,Object? saturatedFatServing = freezed,Object? sodiumServing = freezed,Object? sugarsServing = freezed,Object? energyKcalServing = freezed,Object? proteinsServing = freezed,Object? carbohydratesServing = freezed,Object? fatUnit = freezed,Object? fiberUnit = freezed,Object? saltUnit = freezed,Object? saturatedFatUnit = freezed,Object? sodiumUnit = freezed,Object? sugarsUnit = freezed,Object? energyKcalUnit = freezed,Object? proteinsUnit = freezed,Object? carbohydratesUnit = freezed,Object? fatValue = freezed,Object? fiberValue = freezed,Object? saltValue = freezed,Object? saturatedFatValue = freezed,Object? sodiumValue = freezed,Object? sugarsValue = freezed,Object? energyKcalValue = freezed,Object? proteinsValue = freezed,Object? carbohydratesValue = freezed,Object? energy = freezed,Object? energy100g = freezed,Object? energyServing = freezed,Object? energyUnit = freezed,Object? energyValue = freezed,Object? energyKj = freezed,Object? energyKj100g = freezed,Object? energyKjServing = freezed,Object? energyKjUnit = freezed,Object? energyKjValue = freezed,Object? energyKcalValueComputed = freezed,Object? energyKjValueComputed = freezed,Object? fruitsVegetablesLegumesEstimateFromIngredients100g = freezed,Object? fruitsVegetablesLegumesEstimateFromIngredientsServing = freezed,Object? fruitsVegetablesNutsEstimateFromIngredients100g = freezed,Object? fruitsVegetablesNutsEstimateFromIngredientsServing = freezed,Object? nutritionScoreFr = freezed,Object? nutritionScoreFr100g = freezed,Object? novaGroup = freezed,Object? novaGroup100g = freezed,Object? novaGroupServing = freezed,Object? calcium = freezed,Object? calcium100g = freezed,Object? calciumServing = freezed,Object? calciumUnit = freezed,Object? calciumValue = freezed,Object? calciumLabel = freezed,Object? fatLabel = freezed,}) {
  return _then(_Nutriments(
fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double?,fiber: freezed == fiber ? _self.fiber : fiber // ignore: cast_nullable_to_non_nullable
as double?,salt: freezed == salt ? _self.salt : salt // ignore: cast_nullable_to_non_nullable
as double?,saturatedFat: freezed == saturatedFat ? _self.saturatedFat : saturatedFat // ignore: cast_nullable_to_non_nullable
as double?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as double?,sugars: freezed == sugars ? _self.sugars : sugars // ignore: cast_nullable_to_non_nullable
as double?,energyKcal: freezed == energyKcal ? _self.energyKcal : energyKcal // ignore: cast_nullable_to_non_nullable
as double?,proteins: freezed == proteins ? _self.proteins : proteins // ignore: cast_nullable_to_non_nullable
as double?,carbohydrates: freezed == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double?,fat100g: freezed == fat100g ? _self.fat100g : fat100g // ignore: cast_nullable_to_non_nullable
as double?,fiber100g: freezed == fiber100g ? _self.fiber100g : fiber100g // ignore: cast_nullable_to_non_nullable
as double?,salt100g: freezed == salt100g ? _self.salt100g : salt100g // ignore: cast_nullable_to_non_nullable
as double?,saturatedFat100g: freezed == saturatedFat100g ? _self.saturatedFat100g : saturatedFat100g // ignore: cast_nullable_to_non_nullable
as double?,sodium100g: freezed == sodium100g ? _self.sodium100g : sodium100g // ignore: cast_nullable_to_non_nullable
as double?,sugars100g: freezed == sugars100g ? _self.sugars100g : sugars100g // ignore: cast_nullable_to_non_nullable
as double?,energyKcal100g: freezed == energyKcal100g ? _self.energyKcal100g : energyKcal100g // ignore: cast_nullable_to_non_nullable
as double?,proteins100g: freezed == proteins100g ? _self.proteins100g : proteins100g // ignore: cast_nullable_to_non_nullable
as double?,carbohydrates100g: freezed == carbohydrates100g ? _self.carbohydrates100g : carbohydrates100g // ignore: cast_nullable_to_non_nullable
as double?,fatServing: freezed == fatServing ? _self.fatServing : fatServing // ignore: cast_nullable_to_non_nullable
as double?,fiberServing: freezed == fiberServing ? _self.fiberServing : fiberServing // ignore: cast_nullable_to_non_nullable
as double?,saltServing: freezed == saltServing ? _self.saltServing : saltServing // ignore: cast_nullable_to_non_nullable
as double?,saturatedFatServing: freezed == saturatedFatServing ? _self.saturatedFatServing : saturatedFatServing // ignore: cast_nullable_to_non_nullable
as double?,sodiumServing: freezed == sodiumServing ? _self.sodiumServing : sodiumServing // ignore: cast_nullable_to_non_nullable
as double?,sugarsServing: freezed == sugarsServing ? _self.sugarsServing : sugarsServing // ignore: cast_nullable_to_non_nullable
as double?,energyKcalServing: freezed == energyKcalServing ? _self.energyKcalServing : energyKcalServing // ignore: cast_nullable_to_non_nullable
as double?,proteinsServing: freezed == proteinsServing ? _self.proteinsServing : proteinsServing // ignore: cast_nullable_to_non_nullable
as double?,carbohydratesServing: freezed == carbohydratesServing ? _self.carbohydratesServing : carbohydratesServing // ignore: cast_nullable_to_non_nullable
as double?,fatUnit: freezed == fatUnit ? _self.fatUnit : fatUnit // ignore: cast_nullable_to_non_nullable
as String?,fiberUnit: freezed == fiberUnit ? _self.fiberUnit : fiberUnit // ignore: cast_nullable_to_non_nullable
as String?,saltUnit: freezed == saltUnit ? _self.saltUnit : saltUnit // ignore: cast_nullable_to_non_nullable
as String?,saturatedFatUnit: freezed == saturatedFatUnit ? _self.saturatedFatUnit : saturatedFatUnit // ignore: cast_nullable_to_non_nullable
as String?,sodiumUnit: freezed == sodiumUnit ? _self.sodiumUnit : sodiumUnit // ignore: cast_nullable_to_non_nullable
as String?,sugarsUnit: freezed == sugarsUnit ? _self.sugarsUnit : sugarsUnit // ignore: cast_nullable_to_non_nullable
as String?,energyKcalUnit: freezed == energyKcalUnit ? _self.energyKcalUnit : energyKcalUnit // ignore: cast_nullable_to_non_nullable
as String?,proteinsUnit: freezed == proteinsUnit ? _self.proteinsUnit : proteinsUnit // ignore: cast_nullable_to_non_nullable
as String?,carbohydratesUnit: freezed == carbohydratesUnit ? _self.carbohydratesUnit : carbohydratesUnit // ignore: cast_nullable_to_non_nullable
as String?,fatValue: freezed == fatValue ? _self.fatValue : fatValue // ignore: cast_nullable_to_non_nullable
as double?,fiberValue: freezed == fiberValue ? _self.fiberValue : fiberValue // ignore: cast_nullable_to_non_nullable
as double?,saltValue: freezed == saltValue ? _self.saltValue : saltValue // ignore: cast_nullable_to_non_nullable
as double?,saturatedFatValue: freezed == saturatedFatValue ? _self.saturatedFatValue : saturatedFatValue // ignore: cast_nullable_to_non_nullable
as double?,sodiumValue: freezed == sodiumValue ? _self.sodiumValue : sodiumValue // ignore: cast_nullable_to_non_nullable
as double?,sugarsValue: freezed == sugarsValue ? _self.sugarsValue : sugarsValue // ignore: cast_nullable_to_non_nullable
as double?,energyKcalValue: freezed == energyKcalValue ? _self.energyKcalValue : energyKcalValue // ignore: cast_nullable_to_non_nullable
as double?,proteinsValue: freezed == proteinsValue ? _self.proteinsValue : proteinsValue // ignore: cast_nullable_to_non_nullable
as double?,carbohydratesValue: freezed == carbohydratesValue ? _self.carbohydratesValue : carbohydratesValue // ignore: cast_nullable_to_non_nullable
as double?,energy: freezed == energy ? _self.energy : energy // ignore: cast_nullable_to_non_nullable
as int?,energy100g: freezed == energy100g ? _self.energy100g : energy100g // ignore: cast_nullable_to_non_nullable
as int?,energyServing: freezed == energyServing ? _self.energyServing : energyServing // ignore: cast_nullable_to_non_nullable
as int?,energyUnit: freezed == energyUnit ? _self.energyUnit : energyUnit // ignore: cast_nullable_to_non_nullable
as String?,energyValue: freezed == energyValue ? _self.energyValue : energyValue // ignore: cast_nullable_to_non_nullable
as int?,energyKj: freezed == energyKj ? _self.energyKj : energyKj // ignore: cast_nullable_to_non_nullable
as int?,energyKj100g: freezed == energyKj100g ? _self.energyKj100g : energyKj100g // ignore: cast_nullable_to_non_nullable
as int?,energyKjServing: freezed == energyKjServing ? _self.energyKjServing : energyKjServing // ignore: cast_nullable_to_non_nullable
as int?,energyKjUnit: freezed == energyKjUnit ? _self.energyKjUnit : energyKjUnit // ignore: cast_nullable_to_non_nullable
as String?,energyKjValue: freezed == energyKjValue ? _self.energyKjValue : energyKjValue // ignore: cast_nullable_to_non_nullable
as int?,energyKcalValueComputed: freezed == energyKcalValueComputed ? _self.energyKcalValueComputed : energyKcalValueComputed // ignore: cast_nullable_to_non_nullable
as double?,energyKjValueComputed: freezed == energyKjValueComputed ? _self.energyKjValueComputed : energyKjValueComputed // ignore: cast_nullable_to_non_nullable
as double?,fruitsVegetablesLegumesEstimateFromIngredients100g: freezed == fruitsVegetablesLegumesEstimateFromIngredients100g ? _self.fruitsVegetablesLegumesEstimateFromIngredients100g : fruitsVegetablesLegumesEstimateFromIngredients100g // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesLegumesEstimateFromIngredientsServing: freezed == fruitsVegetablesLegumesEstimateFromIngredientsServing ? _self.fruitsVegetablesLegumesEstimateFromIngredientsServing : fruitsVegetablesLegumesEstimateFromIngredientsServing // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesNutsEstimateFromIngredients100g: freezed == fruitsVegetablesNutsEstimateFromIngredients100g ? _self.fruitsVegetablesNutsEstimateFromIngredients100g : fruitsVegetablesNutsEstimateFromIngredients100g // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesNutsEstimateFromIngredientsServing: freezed == fruitsVegetablesNutsEstimateFromIngredientsServing ? _self.fruitsVegetablesNutsEstimateFromIngredientsServing : fruitsVegetablesNutsEstimateFromIngredientsServing // ignore: cast_nullable_to_non_nullable
as int?,nutritionScoreFr: freezed == nutritionScoreFr ? _self.nutritionScoreFr : nutritionScoreFr // ignore: cast_nullable_to_non_nullable
as int?,nutritionScoreFr100g: freezed == nutritionScoreFr100g ? _self.nutritionScoreFr100g : nutritionScoreFr100g // ignore: cast_nullable_to_non_nullable
as int?,novaGroup: freezed == novaGroup ? _self.novaGroup : novaGroup // ignore: cast_nullable_to_non_nullable
as int?,novaGroup100g: freezed == novaGroup100g ? _self.novaGroup100g : novaGroup100g // ignore: cast_nullable_to_non_nullable
as int?,novaGroupServing: freezed == novaGroupServing ? _self.novaGroupServing : novaGroupServing // ignore: cast_nullable_to_non_nullable
as int?,calcium: freezed == calcium ? _self.calcium : calcium // ignore: cast_nullable_to_non_nullable
as double?,calcium100g: freezed == calcium100g ? _self.calcium100g : calcium100g // ignore: cast_nullable_to_non_nullable
as double?,calciumServing: freezed == calciumServing ? _self.calciumServing : calciumServing // ignore: cast_nullable_to_non_nullable
as double?,calciumUnit: freezed == calciumUnit ? _self.calciumUnit : calciumUnit // ignore: cast_nullable_to_non_nullable
as String?,calciumValue: freezed == calciumValue ? _self.calciumValue : calciumValue // ignore: cast_nullable_to_non_nullable
as double?,calciumLabel: freezed == calciumLabel ? _self.calciumLabel : calciumLabel // ignore: cast_nullable_to_non_nullable
as String?,fatLabel: freezed == fatLabel ? _self.fatLabel : fatLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
