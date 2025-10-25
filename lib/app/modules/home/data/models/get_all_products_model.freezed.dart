// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetAllProductsModel {

@JsonKey(name: "count") int? get count;@JsonKey(name: "page") int? get page;@JsonKey(name: "page_count") int? get pageCount;@JsonKey(name: "page_size") int? get pageSize;@JsonKey(name: "products") List<Product>? get products;@JsonKey(name: "skip") int? get skip;
/// Create a copy of GetAllProductsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllProductsModelCopyWith<GetAllProductsModel> get copyWith => _$GetAllProductsModelCopyWithImpl<GetAllProductsModel>(this as GetAllProductsModel, _$identity);

  /// Serializes this GetAllProductsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllProductsModel&&(identical(other.count, count) || other.count == count)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.skip, skip) || other.skip == skip));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,page,pageCount,pageSize,const DeepCollectionEquality().hash(products),skip);

@override
String toString() {
  return 'GetAllProductsModel(count: $count, page: $page, pageCount: $pageCount, pageSize: $pageSize, products: $products, skip: $skip)';
}


}

/// @nodoc
abstract mixin class $GetAllProductsModelCopyWith<$Res>  {
  factory $GetAllProductsModelCopyWith(GetAllProductsModel value, $Res Function(GetAllProductsModel) _then) = _$GetAllProductsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "count") int? count,@JsonKey(name: "page") int? page,@JsonKey(name: "page_count") int? pageCount,@JsonKey(name: "page_size") int? pageSize,@JsonKey(name: "products") List<Product>? products,@JsonKey(name: "skip") int? skip
});




}
/// @nodoc
class _$GetAllProductsModelCopyWithImpl<$Res>
    implements $GetAllProductsModelCopyWith<$Res> {
  _$GetAllProductsModelCopyWithImpl(this._self, this._then);

  final GetAllProductsModel _self;
  final $Res Function(GetAllProductsModel) _then;

/// Create a copy of GetAllProductsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = freezed,Object? page = freezed,Object? pageCount = freezed,Object? pageSize = freezed,Object? products = freezed,Object? skip = freezed,}) {
  return _then(_self.copyWith(
count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,pageCount: freezed == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int?,products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Product>?,skip: freezed == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetAllProductsModel].
extension GetAllProductsModelPatterns on GetAllProductsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetAllProductsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetAllProductsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetAllProductsModel value)  $default,){
final _that = this;
switch (_that) {
case _GetAllProductsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetAllProductsModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetAllProductsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "count")  int? count, @JsonKey(name: "page")  int? page, @JsonKey(name: "page_count")  int? pageCount, @JsonKey(name: "page_size")  int? pageSize, @JsonKey(name: "products")  List<Product>? products, @JsonKey(name: "skip")  int? skip)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetAllProductsModel() when $default != null:
return $default(_that.count,_that.page,_that.pageCount,_that.pageSize,_that.products,_that.skip);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "count")  int? count, @JsonKey(name: "page")  int? page, @JsonKey(name: "page_count")  int? pageCount, @JsonKey(name: "page_size")  int? pageSize, @JsonKey(name: "products")  List<Product>? products, @JsonKey(name: "skip")  int? skip)  $default,) {final _that = this;
switch (_that) {
case _GetAllProductsModel():
return $default(_that.count,_that.page,_that.pageCount,_that.pageSize,_that.products,_that.skip);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "count")  int? count, @JsonKey(name: "page")  int? page, @JsonKey(name: "page_count")  int? pageCount, @JsonKey(name: "page_size")  int? pageSize, @JsonKey(name: "products")  List<Product>? products, @JsonKey(name: "skip")  int? skip)?  $default,) {final _that = this;
switch (_that) {
case _GetAllProductsModel() when $default != null:
return $default(_that.count,_that.page,_that.pageCount,_that.pageSize,_that.products,_that.skip);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetAllProductsModel implements GetAllProductsModel {
  const _GetAllProductsModel({@JsonKey(name: "count") this.count, @JsonKey(name: "page") this.page, @JsonKey(name: "page_count") this.pageCount, @JsonKey(name: "page_size") this.pageSize, @JsonKey(name: "products") final  List<Product>? products, @JsonKey(name: "skip") this.skip}): _products = products;
  factory _GetAllProductsModel.fromJson(Map<String, dynamic> json) => _$GetAllProductsModelFromJson(json);

@override@JsonKey(name: "count") final  int? count;
@override@JsonKey(name: "page") final  int? page;
@override@JsonKey(name: "page_count") final  int? pageCount;
@override@JsonKey(name: "page_size") final  int? pageSize;
 final  List<Product>? _products;
@override@JsonKey(name: "products") List<Product>? get products {
  final value = _products;
  if (value == null) return null;
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "skip") final  int? skip;

/// Create a copy of GetAllProductsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAllProductsModelCopyWith<_GetAllProductsModel> get copyWith => __$GetAllProductsModelCopyWithImpl<_GetAllProductsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetAllProductsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllProductsModel&&(identical(other.count, count) || other.count == count)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.skip, skip) || other.skip == skip));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,page,pageCount,pageSize,const DeepCollectionEquality().hash(_products),skip);

@override
String toString() {
  return 'GetAllProductsModel(count: $count, page: $page, pageCount: $pageCount, pageSize: $pageSize, products: $products, skip: $skip)';
}


}

/// @nodoc
abstract mixin class _$GetAllProductsModelCopyWith<$Res> implements $GetAllProductsModelCopyWith<$Res> {
  factory _$GetAllProductsModelCopyWith(_GetAllProductsModel value, $Res Function(_GetAllProductsModel) _then) = __$GetAllProductsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "count") int? count,@JsonKey(name: "page") int? page,@JsonKey(name: "page_count") int? pageCount,@JsonKey(name: "page_size") int? pageSize,@JsonKey(name: "products") List<Product>? products,@JsonKey(name: "skip") int? skip
});




}
/// @nodoc
class __$GetAllProductsModelCopyWithImpl<$Res>
    implements _$GetAllProductsModelCopyWith<$Res> {
  __$GetAllProductsModelCopyWithImpl(this._self, this._then);

  final _GetAllProductsModel _self;
  final $Res Function(_GetAllProductsModel) _then;

/// Create a copy of GetAllProductsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = freezed,Object? page = freezed,Object? pageCount = freezed,Object? pageSize = freezed,Object? products = freezed,Object? skip = freezed,}) {
  return _then(_GetAllProductsModel(
count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,pageCount: freezed == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int?,products: freezed == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>?,skip: freezed == skip ? _self.skip : skip // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$Product {

@JsonKey(name: "brands") String? get brands;@JsonKey(name: "categories") String? get categories;@JsonKey(name: "categories_tags") List<String>? get categoriesTags;@JsonKey(name: "code") String? get code;@JsonKey(name: "image_front_small_url") String? get imageFrontSmallUrl;@JsonKey(name: "ingredients_text") String? get ingredientsText;@JsonKey(name: "nutriments") Nutriments? get nutriments;@JsonKey(name: "nutriscore_grade") String? get nutriscoreGrade;@JsonKey(name: "nutriscore_score") int? get nutriscoreScore;@JsonKey(name: "product_name") String? get productName;@JsonKey(name: "quantity") String? get quantity;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.brands, brands) || other.brands == brands)&&(identical(other.categories, categories) || other.categories == categories)&&const DeepCollectionEquality().equals(other.categoriesTags, categoriesTags)&&(identical(other.code, code) || other.code == code)&&(identical(other.imageFrontSmallUrl, imageFrontSmallUrl) || other.imageFrontSmallUrl == imageFrontSmallUrl)&&(identical(other.ingredientsText, ingredientsText) || other.ingredientsText == ingredientsText)&&(identical(other.nutriments, nutriments) || other.nutriments == nutriments)&&(identical(other.nutriscoreGrade, nutriscoreGrade) || other.nutriscoreGrade == nutriscoreGrade)&&(identical(other.nutriscoreScore, nutriscoreScore) || other.nutriscoreScore == nutriscoreScore)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brands,categories,const DeepCollectionEquality().hash(categoriesTags),code,imageFrontSmallUrl,ingredientsText,nutriments,nutriscoreGrade,nutriscoreScore,productName,quantity);

@override
String toString() {
  return 'Product(brands: $brands, categories: $categories, categoriesTags: $categoriesTags, code: $code, imageFrontSmallUrl: $imageFrontSmallUrl, ingredientsText: $ingredientsText, nutriments: $nutriments, nutriscoreGrade: $nutriscoreGrade, nutriscoreScore: $nutriscoreScore, productName: $productName, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "brands") String? brands,@JsonKey(name: "categories") String? categories,@JsonKey(name: "categories_tags") List<String>? categoriesTags,@JsonKey(name: "code") String? code,@JsonKey(name: "image_front_small_url") String? imageFrontSmallUrl,@JsonKey(name: "ingredients_text") String? ingredientsText,@JsonKey(name: "nutriments") Nutriments? nutriments,@JsonKey(name: "nutriscore_grade") String? nutriscoreGrade,@JsonKey(name: "nutriscore_score") int? nutriscoreScore,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "quantity") String? quantity
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
@pragma('vm:prefer-inline') @override $Res call({Object? brands = freezed,Object? categories = freezed,Object? categoriesTags = freezed,Object? code = freezed,Object? imageFrontSmallUrl = freezed,Object? ingredientsText = freezed,Object? nutriments = freezed,Object? nutriscoreGrade = freezed,Object? nutriscoreScore = freezed,Object? productName = freezed,Object? quantity = freezed,}) {
  return _then(_self.copyWith(
brands: freezed == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as String?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as String?,categoriesTags: freezed == categoriesTags ? _self.categoriesTags : categoriesTags // ignore: cast_nullable_to_non_nullable
as List<String>?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,imageFrontSmallUrl: freezed == imageFrontSmallUrl ? _self.imageFrontSmallUrl : imageFrontSmallUrl // ignore: cast_nullable_to_non_nullable
as String?,ingredientsText: freezed == ingredientsText ? _self.ingredientsText : ingredientsText // ignore: cast_nullable_to_non_nullable
as String?,nutriments: freezed == nutriments ? _self.nutriments : nutriments // ignore: cast_nullable_to_non_nullable
as Nutriments?,nutriscoreGrade: freezed == nutriscoreGrade ? _self.nutriscoreGrade : nutriscoreGrade // ignore: cast_nullable_to_non_nullable
as String?,nutriscoreScore: freezed == nutriscoreScore ? _self.nutriscoreScore : nutriscoreScore // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "brands")  String? brands, @JsonKey(name: "categories")  String? categories, @JsonKey(name: "categories_tags")  List<String>? categoriesTags, @JsonKey(name: "code")  String? code, @JsonKey(name: "image_front_small_url")  String? imageFrontSmallUrl, @JsonKey(name: "ingredients_text")  String? ingredientsText, @JsonKey(name: "nutriments")  Nutriments? nutriments, @JsonKey(name: "nutriscore_grade")  String? nutriscoreGrade, @JsonKey(name: "nutriscore_score")  int? nutriscoreScore, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "quantity")  String? quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.brands,_that.categories,_that.categoriesTags,_that.code,_that.imageFrontSmallUrl,_that.ingredientsText,_that.nutriments,_that.nutriscoreGrade,_that.nutriscoreScore,_that.productName,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "brands")  String? brands, @JsonKey(name: "categories")  String? categories, @JsonKey(name: "categories_tags")  List<String>? categoriesTags, @JsonKey(name: "code")  String? code, @JsonKey(name: "image_front_small_url")  String? imageFrontSmallUrl, @JsonKey(name: "ingredients_text")  String? ingredientsText, @JsonKey(name: "nutriments")  Nutriments? nutriments, @JsonKey(name: "nutriscore_grade")  String? nutriscoreGrade, @JsonKey(name: "nutriscore_score")  int? nutriscoreScore, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "quantity")  String? quantity)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.brands,_that.categories,_that.categoriesTags,_that.code,_that.imageFrontSmallUrl,_that.ingredientsText,_that.nutriments,_that.nutriscoreGrade,_that.nutriscoreScore,_that.productName,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "brands")  String? brands, @JsonKey(name: "categories")  String? categories, @JsonKey(name: "categories_tags")  List<String>? categoriesTags, @JsonKey(name: "code")  String? code, @JsonKey(name: "image_front_small_url")  String? imageFrontSmallUrl, @JsonKey(name: "ingredients_text")  String? ingredientsText, @JsonKey(name: "nutriments")  Nutriments? nutriments, @JsonKey(name: "nutriscore_grade")  String? nutriscoreGrade, @JsonKey(name: "nutriscore_score")  int? nutriscoreScore, @JsonKey(name: "product_name")  String? productName, @JsonKey(name: "quantity")  String? quantity)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.brands,_that.categories,_that.categoriesTags,_that.code,_that.imageFrontSmallUrl,_that.ingredientsText,_that.nutriments,_that.nutriscoreGrade,_that.nutriscoreScore,_that.productName,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({@JsonKey(name: "brands") this.brands, @JsonKey(name: "categories") this.categories, @JsonKey(name: "categories_tags") final  List<String>? categoriesTags, @JsonKey(name: "code") this.code, @JsonKey(name: "image_front_small_url") this.imageFrontSmallUrl, @JsonKey(name: "ingredients_text") this.ingredientsText, @JsonKey(name: "nutriments") this.nutriments, @JsonKey(name: "nutriscore_grade") this.nutriscoreGrade, @JsonKey(name: "nutriscore_score") this.nutriscoreScore, @JsonKey(name: "product_name") this.productName, @JsonKey(name: "quantity") this.quantity}): _categoriesTags = categoriesTags;
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
@override@JsonKey(name: "nutriments") final  Nutriments? nutriments;
@override@JsonKey(name: "nutriscore_grade") final  String? nutriscoreGrade;
@override@JsonKey(name: "nutriscore_score") final  int? nutriscoreScore;
@override@JsonKey(name: "product_name") final  String? productName;
@override@JsonKey(name: "quantity") final  String? quantity;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.brands, brands) || other.brands == brands)&&(identical(other.categories, categories) || other.categories == categories)&&const DeepCollectionEquality().equals(other._categoriesTags, _categoriesTags)&&(identical(other.code, code) || other.code == code)&&(identical(other.imageFrontSmallUrl, imageFrontSmallUrl) || other.imageFrontSmallUrl == imageFrontSmallUrl)&&(identical(other.ingredientsText, ingredientsText) || other.ingredientsText == ingredientsText)&&(identical(other.nutriments, nutriments) || other.nutriments == nutriments)&&(identical(other.nutriscoreGrade, nutriscoreGrade) || other.nutriscoreGrade == nutriscoreGrade)&&(identical(other.nutriscoreScore, nutriscoreScore) || other.nutriscoreScore == nutriscoreScore)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brands,categories,const DeepCollectionEquality().hash(_categoriesTags),code,imageFrontSmallUrl,ingredientsText,nutriments,nutriscoreGrade,nutriscoreScore,productName,quantity);

@override
String toString() {
  return 'Product(brands: $brands, categories: $categories, categoriesTags: $categoriesTags, code: $code, imageFrontSmallUrl: $imageFrontSmallUrl, ingredientsText: $ingredientsText, nutriments: $nutriments, nutriscoreGrade: $nutriscoreGrade, nutriscoreScore: $nutriscoreScore, productName: $productName, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "brands") String? brands,@JsonKey(name: "categories") String? categories,@JsonKey(name: "categories_tags") List<String>? categoriesTags,@JsonKey(name: "code") String? code,@JsonKey(name: "image_front_small_url") String? imageFrontSmallUrl,@JsonKey(name: "ingredients_text") String? ingredientsText,@JsonKey(name: "nutriments") Nutriments? nutriments,@JsonKey(name: "nutriscore_grade") String? nutriscoreGrade,@JsonKey(name: "nutriscore_score") int? nutriscoreScore,@JsonKey(name: "product_name") String? productName,@JsonKey(name: "quantity") String? quantity
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
@override @pragma('vm:prefer-inline') $Res call({Object? brands = freezed,Object? categories = freezed,Object? categoriesTags = freezed,Object? code = freezed,Object? imageFrontSmallUrl = freezed,Object? ingredientsText = freezed,Object? nutriments = freezed,Object? nutriscoreGrade = freezed,Object? nutriscoreScore = freezed,Object? productName = freezed,Object? quantity = freezed,}) {
  return _then(_Product(
brands: freezed == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as String?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as String?,categoriesTags: freezed == categoriesTags ? _self._categoriesTags : categoriesTags // ignore: cast_nullable_to_non_nullable
as List<String>?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,imageFrontSmallUrl: freezed == imageFrontSmallUrl ? _self.imageFrontSmallUrl : imageFrontSmallUrl // ignore: cast_nullable_to_non_nullable
as String?,ingredientsText: freezed == ingredientsText ? _self.ingredientsText : ingredientsText // ignore: cast_nullable_to_non_nullable
as String?,nutriments: freezed == nutriments ? _self.nutriments : nutriments // ignore: cast_nullable_to_non_nullable
as Nutriments?,nutriscoreGrade: freezed == nutriscoreGrade ? _self.nutriscoreGrade : nutriscoreGrade // ignore: cast_nullable_to_non_nullable
as String?,nutriscoreScore: freezed == nutriscoreScore ? _self.nutriscoreScore : nutriscoreScore // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String?,
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

@JsonKey(name: "carbohydrates") double? get carbohydrates;@JsonKey(name: "carbohydrates_100g") double? get carbohydrates100G;@JsonKey(name: "carbohydrates_serving") double? get carbohydratesServing;@JsonKey(name: "carbohydrates_unit") String? get carbohydratesUnit;@JsonKey(name: "carbohydrates_value") double? get carbohydratesValue;@JsonKey(name: "energy") int? get energy;@JsonKey(name: "energy-kcal") int? get energyKcal;@JsonKey(name: "energy-kcal_100g") int? get energyKcal100G;@JsonKey(name: "energy-kcal_serving") int? get energyKcalServing;@JsonKey(name: "energy-kcal_unit") String? get energyKcalUnit;@JsonKey(name: "energy-kcal_value") int? get energyKcalValue;@JsonKey(name: "energy-kcal_value_computed") double? get energyKcalValueComputed;@JsonKey(name: "energy-kj") int? get energyKj;@JsonKey(name: "energy-kj_100g") int? get energyKj100G;@JsonKey(name: "energy-kj_serving") int? get energyKjServing;@JsonKey(name: "energy-kj_unit") String? get energyKjUnit;@JsonKey(name: "energy-kj_value") int? get energyKjValue;@JsonKey(name: "energy-kj_value_computed") double? get energyKjValueComputed;@JsonKey(name: "energy_100g") int? get energy100G;@JsonKey(name: "energy_serving") int? get energyServing;@JsonKey(name: "energy_unit") String? get energyUnit;@JsonKey(name: "energy_value") int? get energyValue;@JsonKey(name: "fat") int? get fat;@JsonKey(name: "fat_100g") int? get fat100G;@JsonKey(name: "fat_serving") int? get fatServing;@JsonKey(name: "fat_unit") String? get fatUnit;@JsonKey(name: "fat_value") int? get fatValue;@JsonKey(name: "fiber") int? get fiber;@JsonKey(name: "fiber_100g") int? get fiber100G;@JsonKey(name: "fiber_serving") int? get fiberServing;@JsonKey(name: "fiber_unit") String? get fiberUnit;@JsonKey(name: "fiber_value") int? get fiberValue;@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g") int? get fruitsVegetablesLegumesEstimateFromIngredients100G;@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving") int? get fruitsVegetablesLegumesEstimateFromIngredientsServing;@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g") int? get fruitsVegetablesNutsEstimateFromIngredients100G;@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving") int? get fruitsVegetablesNutsEstimateFromIngredientsServing;@JsonKey(name: "nutrition-score-fr") int? get nutritionScoreFr;@JsonKey(name: "nutrition-score-fr_100g") int? get nutritionScoreFr100G;@JsonKey(name: "proteins") int? get proteins;@JsonKey(name: "proteins_100g") int? get proteins100G;@JsonKey(name: "proteins_serving") int? get proteinsServing;@JsonKey(name: "proteins_unit") String? get proteinsUnit;@JsonKey(name: "proteins_value") int? get proteinsValue;@JsonKey(name: "salt") int? get salt;@JsonKey(name: "salt_100g") int? get salt100G;@JsonKey(name: "salt_serving") int? get saltServing;@JsonKey(name: "salt_unit") String? get saltUnit;@JsonKey(name: "salt_value") int? get saltValue;@JsonKey(name: "saturated-fat") int? get saturatedFat;@JsonKey(name: "saturated-fat_100g") int? get saturatedFat100G;@JsonKey(name: "saturated-fat_serving") int? get saturatedFatServing;@JsonKey(name: "saturated-fat_unit") String? get saturatedFatUnit;@JsonKey(name: "saturated-fat_value") int? get saturatedFatValue;@JsonKey(name: "sodium") int? get sodium;@JsonKey(name: "sodium_100g") int? get sodium100G;@JsonKey(name: "sodium_serving") int? get sodiumServing;@JsonKey(name: "sodium_unit") String? get sodiumUnit;@JsonKey(name: "sodium_value") int? get sodiumValue;@JsonKey(name: "sugars") int? get sugars;@JsonKey(name: "sugars_100g") double? get sugars100G;@JsonKey(name: "sugars_serving") int? get sugarsServing;@JsonKey(name: "sugars_unit") String? get sugarsUnit;@JsonKey(name: "sugars_value") int? get sugarsValue;@JsonKey(name: "calcium") double? get calcium;@JsonKey(name: "calcium_100g") double? get calcium100G;@JsonKey(name: "calcium_label") String? get calciumLabel;@JsonKey(name: "calcium_serving") double? get calciumServing;@JsonKey(name: "calcium_unit") String? get calciumUnit;@JsonKey(name: "calcium_value") double? get calciumValue;@JsonKey(name: "fat_label") String? get fatLabel;@JsonKey(name: "nova-group") int? get novaGroup;@JsonKey(name: "nova-group_100g") int? get novaGroup100G;@JsonKey(name: "nova-group_serving") int? get novaGroupServing;
/// Create a copy of Nutriments
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NutrimentsCopyWith<Nutriments> get copyWith => _$NutrimentsCopyWithImpl<Nutriments>(this as Nutriments, _$identity);

  /// Serializes this Nutriments to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Nutriments&&(identical(other.carbohydrates, carbohydrates) || other.carbohydrates == carbohydrates)&&(identical(other.carbohydrates100G, carbohydrates100G) || other.carbohydrates100G == carbohydrates100G)&&(identical(other.carbohydratesServing, carbohydratesServing) || other.carbohydratesServing == carbohydratesServing)&&(identical(other.carbohydratesUnit, carbohydratesUnit) || other.carbohydratesUnit == carbohydratesUnit)&&(identical(other.carbohydratesValue, carbohydratesValue) || other.carbohydratesValue == carbohydratesValue)&&(identical(other.energy, energy) || other.energy == energy)&&(identical(other.energyKcal, energyKcal) || other.energyKcal == energyKcal)&&(identical(other.energyKcal100G, energyKcal100G) || other.energyKcal100G == energyKcal100G)&&(identical(other.energyKcalServing, energyKcalServing) || other.energyKcalServing == energyKcalServing)&&(identical(other.energyKcalUnit, energyKcalUnit) || other.energyKcalUnit == energyKcalUnit)&&(identical(other.energyKcalValue, energyKcalValue) || other.energyKcalValue == energyKcalValue)&&(identical(other.energyKcalValueComputed, energyKcalValueComputed) || other.energyKcalValueComputed == energyKcalValueComputed)&&(identical(other.energyKj, energyKj) || other.energyKj == energyKj)&&(identical(other.energyKj100G, energyKj100G) || other.energyKj100G == energyKj100G)&&(identical(other.energyKjServing, energyKjServing) || other.energyKjServing == energyKjServing)&&(identical(other.energyKjUnit, energyKjUnit) || other.energyKjUnit == energyKjUnit)&&(identical(other.energyKjValue, energyKjValue) || other.energyKjValue == energyKjValue)&&(identical(other.energyKjValueComputed, energyKjValueComputed) || other.energyKjValueComputed == energyKjValueComputed)&&(identical(other.energy100G, energy100G) || other.energy100G == energy100G)&&(identical(other.energyServing, energyServing) || other.energyServing == energyServing)&&(identical(other.energyUnit, energyUnit) || other.energyUnit == energyUnit)&&(identical(other.energyValue, energyValue) || other.energyValue == energyValue)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.fat100G, fat100G) || other.fat100G == fat100G)&&(identical(other.fatServing, fatServing) || other.fatServing == fatServing)&&(identical(other.fatUnit, fatUnit) || other.fatUnit == fatUnit)&&(identical(other.fatValue, fatValue) || other.fatValue == fatValue)&&(identical(other.fiber, fiber) || other.fiber == fiber)&&(identical(other.fiber100G, fiber100G) || other.fiber100G == fiber100G)&&(identical(other.fiberServing, fiberServing) || other.fiberServing == fiberServing)&&(identical(other.fiberUnit, fiberUnit) || other.fiberUnit == fiberUnit)&&(identical(other.fiberValue, fiberValue) || other.fiberValue == fiberValue)&&(identical(other.fruitsVegetablesLegumesEstimateFromIngredients100G, fruitsVegetablesLegumesEstimateFromIngredients100G) || other.fruitsVegetablesLegumesEstimateFromIngredients100G == fruitsVegetablesLegumesEstimateFromIngredients100G)&&(identical(other.fruitsVegetablesLegumesEstimateFromIngredientsServing, fruitsVegetablesLegumesEstimateFromIngredientsServing) || other.fruitsVegetablesLegumesEstimateFromIngredientsServing == fruitsVegetablesLegumesEstimateFromIngredientsServing)&&(identical(other.fruitsVegetablesNutsEstimateFromIngredients100G, fruitsVegetablesNutsEstimateFromIngredients100G) || other.fruitsVegetablesNutsEstimateFromIngredients100G == fruitsVegetablesNutsEstimateFromIngredients100G)&&(identical(other.fruitsVegetablesNutsEstimateFromIngredientsServing, fruitsVegetablesNutsEstimateFromIngredientsServing) || other.fruitsVegetablesNutsEstimateFromIngredientsServing == fruitsVegetablesNutsEstimateFromIngredientsServing)&&(identical(other.nutritionScoreFr, nutritionScoreFr) || other.nutritionScoreFr == nutritionScoreFr)&&(identical(other.nutritionScoreFr100G, nutritionScoreFr100G) || other.nutritionScoreFr100G == nutritionScoreFr100G)&&(identical(other.proteins, proteins) || other.proteins == proteins)&&(identical(other.proteins100G, proteins100G) || other.proteins100G == proteins100G)&&(identical(other.proteinsServing, proteinsServing) || other.proteinsServing == proteinsServing)&&(identical(other.proteinsUnit, proteinsUnit) || other.proteinsUnit == proteinsUnit)&&(identical(other.proteinsValue, proteinsValue) || other.proteinsValue == proteinsValue)&&(identical(other.salt, salt) || other.salt == salt)&&(identical(other.salt100G, salt100G) || other.salt100G == salt100G)&&(identical(other.saltServing, saltServing) || other.saltServing == saltServing)&&(identical(other.saltUnit, saltUnit) || other.saltUnit == saltUnit)&&(identical(other.saltValue, saltValue) || other.saltValue == saltValue)&&(identical(other.saturatedFat, saturatedFat) || other.saturatedFat == saturatedFat)&&(identical(other.saturatedFat100G, saturatedFat100G) || other.saturatedFat100G == saturatedFat100G)&&(identical(other.saturatedFatServing, saturatedFatServing) || other.saturatedFatServing == saturatedFatServing)&&(identical(other.saturatedFatUnit, saturatedFatUnit) || other.saturatedFatUnit == saturatedFatUnit)&&(identical(other.saturatedFatValue, saturatedFatValue) || other.saturatedFatValue == saturatedFatValue)&&(identical(other.sodium, sodium) || other.sodium == sodium)&&(identical(other.sodium100G, sodium100G) || other.sodium100G == sodium100G)&&(identical(other.sodiumServing, sodiumServing) || other.sodiumServing == sodiumServing)&&(identical(other.sodiumUnit, sodiumUnit) || other.sodiumUnit == sodiumUnit)&&(identical(other.sodiumValue, sodiumValue) || other.sodiumValue == sodiumValue)&&(identical(other.sugars, sugars) || other.sugars == sugars)&&(identical(other.sugars100G, sugars100G) || other.sugars100G == sugars100G)&&(identical(other.sugarsServing, sugarsServing) || other.sugarsServing == sugarsServing)&&(identical(other.sugarsUnit, sugarsUnit) || other.sugarsUnit == sugarsUnit)&&(identical(other.sugarsValue, sugarsValue) || other.sugarsValue == sugarsValue)&&(identical(other.calcium, calcium) || other.calcium == calcium)&&(identical(other.calcium100G, calcium100G) || other.calcium100G == calcium100G)&&(identical(other.calciumLabel, calciumLabel) || other.calciumLabel == calciumLabel)&&(identical(other.calciumServing, calciumServing) || other.calciumServing == calciumServing)&&(identical(other.calciumUnit, calciumUnit) || other.calciumUnit == calciumUnit)&&(identical(other.calciumValue, calciumValue) || other.calciumValue == calciumValue)&&(identical(other.fatLabel, fatLabel) || other.fatLabel == fatLabel)&&(identical(other.novaGroup, novaGroup) || other.novaGroup == novaGroup)&&(identical(other.novaGroup100G, novaGroup100G) || other.novaGroup100G == novaGroup100G)&&(identical(other.novaGroupServing, novaGroupServing) || other.novaGroupServing == novaGroupServing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,carbohydrates,carbohydrates100G,carbohydratesServing,carbohydratesUnit,carbohydratesValue,energy,energyKcal,energyKcal100G,energyKcalServing,energyKcalUnit,energyKcalValue,energyKcalValueComputed,energyKj,energyKj100G,energyKjServing,energyKjUnit,energyKjValue,energyKjValueComputed,energy100G,energyServing,energyUnit,energyValue,fat,fat100G,fatServing,fatUnit,fatValue,fiber,fiber100G,fiberServing,fiberUnit,fiberValue,fruitsVegetablesLegumesEstimateFromIngredients100G,fruitsVegetablesLegumesEstimateFromIngredientsServing,fruitsVegetablesNutsEstimateFromIngredients100G,fruitsVegetablesNutsEstimateFromIngredientsServing,nutritionScoreFr,nutritionScoreFr100G,proteins,proteins100G,proteinsServing,proteinsUnit,proteinsValue,salt,salt100G,saltServing,saltUnit,saltValue,saturatedFat,saturatedFat100G,saturatedFatServing,saturatedFatUnit,saturatedFatValue,sodium,sodium100G,sodiumServing,sodiumUnit,sodiumValue,sugars,sugars100G,sugarsServing,sugarsUnit,sugarsValue,calcium,calcium100G,calciumLabel,calciumServing,calciumUnit,calciumValue,fatLabel,novaGroup,novaGroup100G,novaGroupServing]);

@override
String toString() {
  return 'Nutriments(carbohydrates: $carbohydrates, carbohydrates100G: $carbohydrates100G, carbohydratesServing: $carbohydratesServing, carbohydratesUnit: $carbohydratesUnit, carbohydratesValue: $carbohydratesValue, energy: $energy, energyKcal: $energyKcal, energyKcal100G: $energyKcal100G, energyKcalServing: $energyKcalServing, energyKcalUnit: $energyKcalUnit, energyKcalValue: $energyKcalValue, energyKcalValueComputed: $energyKcalValueComputed, energyKj: $energyKj, energyKj100G: $energyKj100G, energyKjServing: $energyKjServing, energyKjUnit: $energyKjUnit, energyKjValue: $energyKjValue, energyKjValueComputed: $energyKjValueComputed, energy100G: $energy100G, energyServing: $energyServing, energyUnit: $energyUnit, energyValue: $energyValue, fat: $fat, fat100G: $fat100G, fatServing: $fatServing, fatUnit: $fatUnit, fatValue: $fatValue, fiber: $fiber, fiber100G: $fiber100G, fiberServing: $fiberServing, fiberUnit: $fiberUnit, fiberValue: $fiberValue, fruitsVegetablesLegumesEstimateFromIngredients100G: $fruitsVegetablesLegumesEstimateFromIngredients100G, fruitsVegetablesLegumesEstimateFromIngredientsServing: $fruitsVegetablesLegumesEstimateFromIngredientsServing, fruitsVegetablesNutsEstimateFromIngredients100G: $fruitsVegetablesNutsEstimateFromIngredients100G, fruitsVegetablesNutsEstimateFromIngredientsServing: $fruitsVegetablesNutsEstimateFromIngredientsServing, nutritionScoreFr: $nutritionScoreFr, nutritionScoreFr100G: $nutritionScoreFr100G, proteins: $proteins, proteins100G: $proteins100G, proteinsServing: $proteinsServing, proteinsUnit: $proteinsUnit, proteinsValue: $proteinsValue, salt: $salt, salt100G: $salt100G, saltServing: $saltServing, saltUnit: $saltUnit, saltValue: $saltValue, saturatedFat: $saturatedFat, saturatedFat100G: $saturatedFat100G, saturatedFatServing: $saturatedFatServing, saturatedFatUnit: $saturatedFatUnit, saturatedFatValue: $saturatedFatValue, sodium: $sodium, sodium100G: $sodium100G, sodiumServing: $sodiumServing, sodiumUnit: $sodiumUnit, sodiumValue: $sodiumValue, sugars: $sugars, sugars100G: $sugars100G, sugarsServing: $sugarsServing, sugarsUnit: $sugarsUnit, sugarsValue: $sugarsValue, calcium: $calcium, calcium100G: $calcium100G, calciumLabel: $calciumLabel, calciumServing: $calciumServing, calciumUnit: $calciumUnit, calciumValue: $calciumValue, fatLabel: $fatLabel, novaGroup: $novaGroup, novaGroup100G: $novaGroup100G, novaGroupServing: $novaGroupServing)';
}


}

/// @nodoc
abstract mixin class $NutrimentsCopyWith<$Res>  {
  factory $NutrimentsCopyWith(Nutriments value, $Res Function(Nutriments) _then) = _$NutrimentsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "carbohydrates") double? carbohydrates,@JsonKey(name: "carbohydrates_100g") double? carbohydrates100G,@JsonKey(name: "carbohydrates_serving") double? carbohydratesServing,@JsonKey(name: "carbohydrates_unit") String? carbohydratesUnit,@JsonKey(name: "carbohydrates_value") double? carbohydratesValue,@JsonKey(name: "energy") int? energy,@JsonKey(name: "energy-kcal") int? energyKcal,@JsonKey(name: "energy-kcal_100g") int? energyKcal100G,@JsonKey(name: "energy-kcal_serving") int? energyKcalServing,@JsonKey(name: "energy-kcal_unit") String? energyKcalUnit,@JsonKey(name: "energy-kcal_value") int? energyKcalValue,@JsonKey(name: "energy-kcal_value_computed") double? energyKcalValueComputed,@JsonKey(name: "energy-kj") int? energyKj,@JsonKey(name: "energy-kj_100g") int? energyKj100G,@JsonKey(name: "energy-kj_serving") int? energyKjServing,@JsonKey(name: "energy-kj_unit") String? energyKjUnit,@JsonKey(name: "energy-kj_value") int? energyKjValue,@JsonKey(name: "energy-kj_value_computed") double? energyKjValueComputed,@JsonKey(name: "energy_100g") int? energy100G,@JsonKey(name: "energy_serving") int? energyServing,@JsonKey(name: "energy_unit") String? energyUnit,@JsonKey(name: "energy_value") int? energyValue,@JsonKey(name: "fat") int? fat,@JsonKey(name: "fat_100g") int? fat100G,@JsonKey(name: "fat_serving") int? fatServing,@JsonKey(name: "fat_unit") String? fatUnit,@JsonKey(name: "fat_value") int? fatValue,@JsonKey(name: "fiber") int? fiber,@JsonKey(name: "fiber_100g") int? fiber100G,@JsonKey(name: "fiber_serving") int? fiberServing,@JsonKey(name: "fiber_unit") String? fiberUnit,@JsonKey(name: "fiber_value") int? fiberValue,@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g") int? fruitsVegetablesLegumesEstimateFromIngredients100G,@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving") int? fruitsVegetablesLegumesEstimateFromIngredientsServing,@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g") int? fruitsVegetablesNutsEstimateFromIngredients100G,@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving") int? fruitsVegetablesNutsEstimateFromIngredientsServing,@JsonKey(name: "nutrition-score-fr") int? nutritionScoreFr,@JsonKey(name: "nutrition-score-fr_100g") int? nutritionScoreFr100G,@JsonKey(name: "proteins") int? proteins,@JsonKey(name: "proteins_100g") int? proteins100G,@JsonKey(name: "proteins_serving") int? proteinsServing,@JsonKey(name: "proteins_unit") String? proteinsUnit,@JsonKey(name: "proteins_value") int? proteinsValue,@JsonKey(name: "salt") int? salt,@JsonKey(name: "salt_100g") int? salt100G,@JsonKey(name: "salt_serving") int? saltServing,@JsonKey(name: "salt_unit") String? saltUnit,@JsonKey(name: "salt_value") int? saltValue,@JsonKey(name: "saturated-fat") int? saturatedFat,@JsonKey(name: "saturated-fat_100g") int? saturatedFat100G,@JsonKey(name: "saturated-fat_serving") int? saturatedFatServing,@JsonKey(name: "saturated-fat_unit") String? saturatedFatUnit,@JsonKey(name: "saturated-fat_value") int? saturatedFatValue,@JsonKey(name: "sodium") int? sodium,@JsonKey(name: "sodium_100g") int? sodium100G,@JsonKey(name: "sodium_serving") int? sodiumServing,@JsonKey(name: "sodium_unit") String? sodiumUnit,@JsonKey(name: "sodium_value") int? sodiumValue,@JsonKey(name: "sugars") int? sugars,@JsonKey(name: "sugars_100g") double? sugars100G,@JsonKey(name: "sugars_serving") int? sugarsServing,@JsonKey(name: "sugars_unit") String? sugarsUnit,@JsonKey(name: "sugars_value") int? sugarsValue,@JsonKey(name: "calcium") double? calcium,@JsonKey(name: "calcium_100g") double? calcium100G,@JsonKey(name: "calcium_label") String? calciumLabel,@JsonKey(name: "calcium_serving") double? calciumServing,@JsonKey(name: "calcium_unit") String? calciumUnit,@JsonKey(name: "calcium_value") double? calciumValue,@JsonKey(name: "fat_label") String? fatLabel,@JsonKey(name: "nova-group") int? novaGroup,@JsonKey(name: "nova-group_100g") int? novaGroup100G,@JsonKey(name: "nova-group_serving") int? novaGroupServing
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
@pragma('vm:prefer-inline') @override $Res call({Object? carbohydrates = freezed,Object? carbohydrates100G = freezed,Object? carbohydratesServing = freezed,Object? carbohydratesUnit = freezed,Object? carbohydratesValue = freezed,Object? energy = freezed,Object? energyKcal = freezed,Object? energyKcal100G = freezed,Object? energyKcalServing = freezed,Object? energyKcalUnit = freezed,Object? energyKcalValue = freezed,Object? energyKcalValueComputed = freezed,Object? energyKj = freezed,Object? energyKj100G = freezed,Object? energyKjServing = freezed,Object? energyKjUnit = freezed,Object? energyKjValue = freezed,Object? energyKjValueComputed = freezed,Object? energy100G = freezed,Object? energyServing = freezed,Object? energyUnit = freezed,Object? energyValue = freezed,Object? fat = freezed,Object? fat100G = freezed,Object? fatServing = freezed,Object? fatUnit = freezed,Object? fatValue = freezed,Object? fiber = freezed,Object? fiber100G = freezed,Object? fiberServing = freezed,Object? fiberUnit = freezed,Object? fiberValue = freezed,Object? fruitsVegetablesLegumesEstimateFromIngredients100G = freezed,Object? fruitsVegetablesLegumesEstimateFromIngredientsServing = freezed,Object? fruitsVegetablesNutsEstimateFromIngredients100G = freezed,Object? fruitsVegetablesNutsEstimateFromIngredientsServing = freezed,Object? nutritionScoreFr = freezed,Object? nutritionScoreFr100G = freezed,Object? proteins = freezed,Object? proteins100G = freezed,Object? proteinsServing = freezed,Object? proteinsUnit = freezed,Object? proteinsValue = freezed,Object? salt = freezed,Object? salt100G = freezed,Object? saltServing = freezed,Object? saltUnit = freezed,Object? saltValue = freezed,Object? saturatedFat = freezed,Object? saturatedFat100G = freezed,Object? saturatedFatServing = freezed,Object? saturatedFatUnit = freezed,Object? saturatedFatValue = freezed,Object? sodium = freezed,Object? sodium100G = freezed,Object? sodiumServing = freezed,Object? sodiumUnit = freezed,Object? sodiumValue = freezed,Object? sugars = freezed,Object? sugars100G = freezed,Object? sugarsServing = freezed,Object? sugarsUnit = freezed,Object? sugarsValue = freezed,Object? calcium = freezed,Object? calcium100G = freezed,Object? calciumLabel = freezed,Object? calciumServing = freezed,Object? calciumUnit = freezed,Object? calciumValue = freezed,Object? fatLabel = freezed,Object? novaGroup = freezed,Object? novaGroup100G = freezed,Object? novaGroupServing = freezed,}) {
  return _then(_self.copyWith(
carbohydrates: freezed == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double?,carbohydrates100G: freezed == carbohydrates100G ? _self.carbohydrates100G : carbohydrates100G // ignore: cast_nullable_to_non_nullable
as double?,carbohydratesServing: freezed == carbohydratesServing ? _self.carbohydratesServing : carbohydratesServing // ignore: cast_nullable_to_non_nullable
as double?,carbohydratesUnit: freezed == carbohydratesUnit ? _self.carbohydratesUnit : carbohydratesUnit // ignore: cast_nullable_to_non_nullable
as String?,carbohydratesValue: freezed == carbohydratesValue ? _self.carbohydratesValue : carbohydratesValue // ignore: cast_nullable_to_non_nullable
as double?,energy: freezed == energy ? _self.energy : energy // ignore: cast_nullable_to_non_nullable
as int?,energyKcal: freezed == energyKcal ? _self.energyKcal : energyKcal // ignore: cast_nullable_to_non_nullable
as int?,energyKcal100G: freezed == energyKcal100G ? _self.energyKcal100G : energyKcal100G // ignore: cast_nullable_to_non_nullable
as int?,energyKcalServing: freezed == energyKcalServing ? _self.energyKcalServing : energyKcalServing // ignore: cast_nullable_to_non_nullable
as int?,energyKcalUnit: freezed == energyKcalUnit ? _self.energyKcalUnit : energyKcalUnit // ignore: cast_nullable_to_non_nullable
as String?,energyKcalValue: freezed == energyKcalValue ? _self.energyKcalValue : energyKcalValue // ignore: cast_nullable_to_non_nullable
as int?,energyKcalValueComputed: freezed == energyKcalValueComputed ? _self.energyKcalValueComputed : energyKcalValueComputed // ignore: cast_nullable_to_non_nullable
as double?,energyKj: freezed == energyKj ? _self.energyKj : energyKj // ignore: cast_nullable_to_non_nullable
as int?,energyKj100G: freezed == energyKj100G ? _self.energyKj100G : energyKj100G // ignore: cast_nullable_to_non_nullable
as int?,energyKjServing: freezed == energyKjServing ? _self.energyKjServing : energyKjServing // ignore: cast_nullable_to_non_nullable
as int?,energyKjUnit: freezed == energyKjUnit ? _self.energyKjUnit : energyKjUnit // ignore: cast_nullable_to_non_nullable
as String?,energyKjValue: freezed == energyKjValue ? _self.energyKjValue : energyKjValue // ignore: cast_nullable_to_non_nullable
as int?,energyKjValueComputed: freezed == energyKjValueComputed ? _self.energyKjValueComputed : energyKjValueComputed // ignore: cast_nullable_to_non_nullable
as double?,energy100G: freezed == energy100G ? _self.energy100G : energy100G // ignore: cast_nullable_to_non_nullable
as int?,energyServing: freezed == energyServing ? _self.energyServing : energyServing // ignore: cast_nullable_to_non_nullable
as int?,energyUnit: freezed == energyUnit ? _self.energyUnit : energyUnit // ignore: cast_nullable_to_non_nullable
as String?,energyValue: freezed == energyValue ? _self.energyValue : energyValue // ignore: cast_nullable_to_non_nullable
as int?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as int?,fat100G: freezed == fat100G ? _self.fat100G : fat100G // ignore: cast_nullable_to_non_nullable
as int?,fatServing: freezed == fatServing ? _self.fatServing : fatServing // ignore: cast_nullable_to_non_nullable
as int?,fatUnit: freezed == fatUnit ? _self.fatUnit : fatUnit // ignore: cast_nullable_to_non_nullable
as String?,fatValue: freezed == fatValue ? _self.fatValue : fatValue // ignore: cast_nullable_to_non_nullable
as int?,fiber: freezed == fiber ? _self.fiber : fiber // ignore: cast_nullable_to_non_nullable
as int?,fiber100G: freezed == fiber100G ? _self.fiber100G : fiber100G // ignore: cast_nullable_to_non_nullable
as int?,fiberServing: freezed == fiberServing ? _self.fiberServing : fiberServing // ignore: cast_nullable_to_non_nullable
as int?,fiberUnit: freezed == fiberUnit ? _self.fiberUnit : fiberUnit // ignore: cast_nullable_to_non_nullable
as String?,fiberValue: freezed == fiberValue ? _self.fiberValue : fiberValue // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesLegumesEstimateFromIngredients100G: freezed == fruitsVegetablesLegumesEstimateFromIngredients100G ? _self.fruitsVegetablesLegumesEstimateFromIngredients100G : fruitsVegetablesLegumesEstimateFromIngredients100G // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesLegumesEstimateFromIngredientsServing: freezed == fruitsVegetablesLegumesEstimateFromIngredientsServing ? _self.fruitsVegetablesLegumesEstimateFromIngredientsServing : fruitsVegetablesLegumesEstimateFromIngredientsServing // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesNutsEstimateFromIngredients100G: freezed == fruitsVegetablesNutsEstimateFromIngredients100G ? _self.fruitsVegetablesNutsEstimateFromIngredients100G : fruitsVegetablesNutsEstimateFromIngredients100G // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesNutsEstimateFromIngredientsServing: freezed == fruitsVegetablesNutsEstimateFromIngredientsServing ? _self.fruitsVegetablesNutsEstimateFromIngredientsServing : fruitsVegetablesNutsEstimateFromIngredientsServing // ignore: cast_nullable_to_non_nullable
as int?,nutritionScoreFr: freezed == nutritionScoreFr ? _self.nutritionScoreFr : nutritionScoreFr // ignore: cast_nullable_to_non_nullable
as int?,nutritionScoreFr100G: freezed == nutritionScoreFr100G ? _self.nutritionScoreFr100G : nutritionScoreFr100G // ignore: cast_nullable_to_non_nullable
as int?,proteins: freezed == proteins ? _self.proteins : proteins // ignore: cast_nullable_to_non_nullable
as int?,proteins100G: freezed == proteins100G ? _self.proteins100G : proteins100G // ignore: cast_nullable_to_non_nullable
as int?,proteinsServing: freezed == proteinsServing ? _self.proteinsServing : proteinsServing // ignore: cast_nullable_to_non_nullable
as int?,proteinsUnit: freezed == proteinsUnit ? _self.proteinsUnit : proteinsUnit // ignore: cast_nullable_to_non_nullable
as String?,proteinsValue: freezed == proteinsValue ? _self.proteinsValue : proteinsValue // ignore: cast_nullable_to_non_nullable
as int?,salt: freezed == salt ? _self.salt : salt // ignore: cast_nullable_to_non_nullable
as int?,salt100G: freezed == salt100G ? _self.salt100G : salt100G // ignore: cast_nullable_to_non_nullable
as int?,saltServing: freezed == saltServing ? _self.saltServing : saltServing // ignore: cast_nullable_to_non_nullable
as int?,saltUnit: freezed == saltUnit ? _self.saltUnit : saltUnit // ignore: cast_nullable_to_non_nullable
as String?,saltValue: freezed == saltValue ? _self.saltValue : saltValue // ignore: cast_nullable_to_non_nullable
as int?,saturatedFat: freezed == saturatedFat ? _self.saturatedFat : saturatedFat // ignore: cast_nullable_to_non_nullable
as int?,saturatedFat100G: freezed == saturatedFat100G ? _self.saturatedFat100G : saturatedFat100G // ignore: cast_nullable_to_non_nullable
as int?,saturatedFatServing: freezed == saturatedFatServing ? _self.saturatedFatServing : saturatedFatServing // ignore: cast_nullable_to_non_nullable
as int?,saturatedFatUnit: freezed == saturatedFatUnit ? _self.saturatedFatUnit : saturatedFatUnit // ignore: cast_nullable_to_non_nullable
as String?,saturatedFatValue: freezed == saturatedFatValue ? _self.saturatedFatValue : saturatedFatValue // ignore: cast_nullable_to_non_nullable
as int?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as int?,sodium100G: freezed == sodium100G ? _self.sodium100G : sodium100G // ignore: cast_nullable_to_non_nullable
as int?,sodiumServing: freezed == sodiumServing ? _self.sodiumServing : sodiumServing // ignore: cast_nullable_to_non_nullable
as int?,sodiumUnit: freezed == sodiumUnit ? _self.sodiumUnit : sodiumUnit // ignore: cast_nullable_to_non_nullable
as String?,sodiumValue: freezed == sodiumValue ? _self.sodiumValue : sodiumValue // ignore: cast_nullable_to_non_nullable
as int?,sugars: freezed == sugars ? _self.sugars : sugars // ignore: cast_nullable_to_non_nullable
as int?,sugars100G: freezed == sugars100G ? _self.sugars100G : sugars100G // ignore: cast_nullable_to_non_nullable
as double?,sugarsServing: freezed == sugarsServing ? _self.sugarsServing : sugarsServing // ignore: cast_nullable_to_non_nullable
as int?,sugarsUnit: freezed == sugarsUnit ? _self.sugarsUnit : sugarsUnit // ignore: cast_nullable_to_non_nullable
as String?,sugarsValue: freezed == sugarsValue ? _self.sugarsValue : sugarsValue // ignore: cast_nullable_to_non_nullable
as int?,calcium: freezed == calcium ? _self.calcium : calcium // ignore: cast_nullable_to_non_nullable
as double?,calcium100G: freezed == calcium100G ? _self.calcium100G : calcium100G // ignore: cast_nullable_to_non_nullable
as double?,calciumLabel: freezed == calciumLabel ? _self.calciumLabel : calciumLabel // ignore: cast_nullable_to_non_nullable
as String?,calciumServing: freezed == calciumServing ? _self.calciumServing : calciumServing // ignore: cast_nullable_to_non_nullable
as double?,calciumUnit: freezed == calciumUnit ? _self.calciumUnit : calciumUnit // ignore: cast_nullable_to_non_nullable
as String?,calciumValue: freezed == calciumValue ? _self.calciumValue : calciumValue // ignore: cast_nullable_to_non_nullable
as double?,fatLabel: freezed == fatLabel ? _self.fatLabel : fatLabel // ignore: cast_nullable_to_non_nullable
as String?,novaGroup: freezed == novaGroup ? _self.novaGroup : novaGroup // ignore: cast_nullable_to_non_nullable
as int?,novaGroup100G: freezed == novaGroup100G ? _self.novaGroup100G : novaGroup100G // ignore: cast_nullable_to_non_nullable
as int?,novaGroupServing: freezed == novaGroupServing ? _self.novaGroupServing : novaGroupServing // ignore: cast_nullable_to_non_nullable
as int?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "carbohydrates")  double? carbohydrates, @JsonKey(name: "carbohydrates_100g")  double? carbohydrates100G, @JsonKey(name: "carbohydrates_serving")  double? carbohydratesServing, @JsonKey(name: "carbohydrates_unit")  String? carbohydratesUnit, @JsonKey(name: "carbohydrates_value")  double? carbohydratesValue, @JsonKey(name: "energy")  int? energy, @JsonKey(name: "energy-kcal")  int? energyKcal, @JsonKey(name: "energy-kcal_100g")  int? energyKcal100G, @JsonKey(name: "energy-kcal_serving")  int? energyKcalServing, @JsonKey(name: "energy-kcal_unit")  String? energyKcalUnit, @JsonKey(name: "energy-kcal_value")  int? energyKcalValue, @JsonKey(name: "energy-kcal_value_computed")  double? energyKcalValueComputed, @JsonKey(name: "energy-kj")  int? energyKj, @JsonKey(name: "energy-kj_100g")  int? energyKj100G, @JsonKey(name: "energy-kj_serving")  int? energyKjServing, @JsonKey(name: "energy-kj_unit")  String? energyKjUnit, @JsonKey(name: "energy-kj_value")  int? energyKjValue, @JsonKey(name: "energy-kj_value_computed")  double? energyKjValueComputed, @JsonKey(name: "energy_100g")  int? energy100G, @JsonKey(name: "energy_serving")  int? energyServing, @JsonKey(name: "energy_unit")  String? energyUnit, @JsonKey(name: "energy_value")  int? energyValue, @JsonKey(name: "fat")  int? fat, @JsonKey(name: "fat_100g")  int? fat100G, @JsonKey(name: "fat_serving")  int? fatServing, @JsonKey(name: "fat_unit")  String? fatUnit, @JsonKey(name: "fat_value")  int? fatValue, @JsonKey(name: "fiber")  int? fiber, @JsonKey(name: "fiber_100g")  int? fiber100G, @JsonKey(name: "fiber_serving")  int? fiberServing, @JsonKey(name: "fiber_unit")  String? fiberUnit, @JsonKey(name: "fiber_value")  int? fiberValue, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g")  int? fruitsVegetablesLegumesEstimateFromIngredients100G, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving")  int? fruitsVegetablesLegumesEstimateFromIngredientsServing, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g")  int? fruitsVegetablesNutsEstimateFromIngredients100G, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving")  int? fruitsVegetablesNutsEstimateFromIngredientsServing, @JsonKey(name: "nutrition-score-fr")  int? nutritionScoreFr, @JsonKey(name: "nutrition-score-fr_100g")  int? nutritionScoreFr100G, @JsonKey(name: "proteins")  int? proteins, @JsonKey(name: "proteins_100g")  int? proteins100G, @JsonKey(name: "proteins_serving")  int? proteinsServing, @JsonKey(name: "proteins_unit")  String? proteinsUnit, @JsonKey(name: "proteins_value")  int? proteinsValue, @JsonKey(name: "salt")  int? salt, @JsonKey(name: "salt_100g")  int? salt100G, @JsonKey(name: "salt_serving")  int? saltServing, @JsonKey(name: "salt_unit")  String? saltUnit, @JsonKey(name: "salt_value")  int? saltValue, @JsonKey(name: "saturated-fat")  int? saturatedFat, @JsonKey(name: "saturated-fat_100g")  int? saturatedFat100G, @JsonKey(name: "saturated-fat_serving")  int? saturatedFatServing, @JsonKey(name: "saturated-fat_unit")  String? saturatedFatUnit, @JsonKey(name: "saturated-fat_value")  int? saturatedFatValue, @JsonKey(name: "sodium")  int? sodium, @JsonKey(name: "sodium_100g")  int? sodium100G, @JsonKey(name: "sodium_serving")  int? sodiumServing, @JsonKey(name: "sodium_unit")  String? sodiumUnit, @JsonKey(name: "sodium_value")  int? sodiumValue, @JsonKey(name: "sugars")  int? sugars, @JsonKey(name: "sugars_100g")  double? sugars100G, @JsonKey(name: "sugars_serving")  int? sugarsServing, @JsonKey(name: "sugars_unit")  String? sugarsUnit, @JsonKey(name: "sugars_value")  int? sugarsValue, @JsonKey(name: "calcium")  double? calcium, @JsonKey(name: "calcium_100g")  double? calcium100G, @JsonKey(name: "calcium_label")  String? calciumLabel, @JsonKey(name: "calcium_serving")  double? calciumServing, @JsonKey(name: "calcium_unit")  String? calciumUnit, @JsonKey(name: "calcium_value")  double? calciumValue, @JsonKey(name: "fat_label")  String? fatLabel, @JsonKey(name: "nova-group")  int? novaGroup, @JsonKey(name: "nova-group_100g")  int? novaGroup100G, @JsonKey(name: "nova-group_serving")  int? novaGroupServing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Nutriments() when $default != null:
return $default(_that.carbohydrates,_that.carbohydrates100G,_that.carbohydratesServing,_that.carbohydratesUnit,_that.carbohydratesValue,_that.energy,_that.energyKcal,_that.energyKcal100G,_that.energyKcalServing,_that.energyKcalUnit,_that.energyKcalValue,_that.energyKcalValueComputed,_that.energyKj,_that.energyKj100G,_that.energyKjServing,_that.energyKjUnit,_that.energyKjValue,_that.energyKjValueComputed,_that.energy100G,_that.energyServing,_that.energyUnit,_that.energyValue,_that.fat,_that.fat100G,_that.fatServing,_that.fatUnit,_that.fatValue,_that.fiber,_that.fiber100G,_that.fiberServing,_that.fiberUnit,_that.fiberValue,_that.fruitsVegetablesLegumesEstimateFromIngredients100G,_that.fruitsVegetablesLegumesEstimateFromIngredientsServing,_that.fruitsVegetablesNutsEstimateFromIngredients100G,_that.fruitsVegetablesNutsEstimateFromIngredientsServing,_that.nutritionScoreFr,_that.nutritionScoreFr100G,_that.proteins,_that.proteins100G,_that.proteinsServing,_that.proteinsUnit,_that.proteinsValue,_that.salt,_that.salt100G,_that.saltServing,_that.saltUnit,_that.saltValue,_that.saturatedFat,_that.saturatedFat100G,_that.saturatedFatServing,_that.saturatedFatUnit,_that.saturatedFatValue,_that.sodium,_that.sodium100G,_that.sodiumServing,_that.sodiumUnit,_that.sodiumValue,_that.sugars,_that.sugars100G,_that.sugarsServing,_that.sugarsUnit,_that.sugarsValue,_that.calcium,_that.calcium100G,_that.calciumLabel,_that.calciumServing,_that.calciumUnit,_that.calciumValue,_that.fatLabel,_that.novaGroup,_that.novaGroup100G,_that.novaGroupServing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "carbohydrates")  double? carbohydrates, @JsonKey(name: "carbohydrates_100g")  double? carbohydrates100G, @JsonKey(name: "carbohydrates_serving")  double? carbohydratesServing, @JsonKey(name: "carbohydrates_unit")  String? carbohydratesUnit, @JsonKey(name: "carbohydrates_value")  double? carbohydratesValue, @JsonKey(name: "energy")  int? energy, @JsonKey(name: "energy-kcal")  int? energyKcal, @JsonKey(name: "energy-kcal_100g")  int? energyKcal100G, @JsonKey(name: "energy-kcal_serving")  int? energyKcalServing, @JsonKey(name: "energy-kcal_unit")  String? energyKcalUnit, @JsonKey(name: "energy-kcal_value")  int? energyKcalValue, @JsonKey(name: "energy-kcal_value_computed")  double? energyKcalValueComputed, @JsonKey(name: "energy-kj")  int? energyKj, @JsonKey(name: "energy-kj_100g")  int? energyKj100G, @JsonKey(name: "energy-kj_serving")  int? energyKjServing, @JsonKey(name: "energy-kj_unit")  String? energyKjUnit, @JsonKey(name: "energy-kj_value")  int? energyKjValue, @JsonKey(name: "energy-kj_value_computed")  double? energyKjValueComputed, @JsonKey(name: "energy_100g")  int? energy100G, @JsonKey(name: "energy_serving")  int? energyServing, @JsonKey(name: "energy_unit")  String? energyUnit, @JsonKey(name: "energy_value")  int? energyValue, @JsonKey(name: "fat")  int? fat, @JsonKey(name: "fat_100g")  int? fat100G, @JsonKey(name: "fat_serving")  int? fatServing, @JsonKey(name: "fat_unit")  String? fatUnit, @JsonKey(name: "fat_value")  int? fatValue, @JsonKey(name: "fiber")  int? fiber, @JsonKey(name: "fiber_100g")  int? fiber100G, @JsonKey(name: "fiber_serving")  int? fiberServing, @JsonKey(name: "fiber_unit")  String? fiberUnit, @JsonKey(name: "fiber_value")  int? fiberValue, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g")  int? fruitsVegetablesLegumesEstimateFromIngredients100G, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving")  int? fruitsVegetablesLegumesEstimateFromIngredientsServing, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g")  int? fruitsVegetablesNutsEstimateFromIngredients100G, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving")  int? fruitsVegetablesNutsEstimateFromIngredientsServing, @JsonKey(name: "nutrition-score-fr")  int? nutritionScoreFr, @JsonKey(name: "nutrition-score-fr_100g")  int? nutritionScoreFr100G, @JsonKey(name: "proteins")  int? proteins, @JsonKey(name: "proteins_100g")  int? proteins100G, @JsonKey(name: "proteins_serving")  int? proteinsServing, @JsonKey(name: "proteins_unit")  String? proteinsUnit, @JsonKey(name: "proteins_value")  int? proteinsValue, @JsonKey(name: "salt")  int? salt, @JsonKey(name: "salt_100g")  int? salt100G, @JsonKey(name: "salt_serving")  int? saltServing, @JsonKey(name: "salt_unit")  String? saltUnit, @JsonKey(name: "salt_value")  int? saltValue, @JsonKey(name: "saturated-fat")  int? saturatedFat, @JsonKey(name: "saturated-fat_100g")  int? saturatedFat100G, @JsonKey(name: "saturated-fat_serving")  int? saturatedFatServing, @JsonKey(name: "saturated-fat_unit")  String? saturatedFatUnit, @JsonKey(name: "saturated-fat_value")  int? saturatedFatValue, @JsonKey(name: "sodium")  int? sodium, @JsonKey(name: "sodium_100g")  int? sodium100G, @JsonKey(name: "sodium_serving")  int? sodiumServing, @JsonKey(name: "sodium_unit")  String? sodiumUnit, @JsonKey(name: "sodium_value")  int? sodiumValue, @JsonKey(name: "sugars")  int? sugars, @JsonKey(name: "sugars_100g")  double? sugars100G, @JsonKey(name: "sugars_serving")  int? sugarsServing, @JsonKey(name: "sugars_unit")  String? sugarsUnit, @JsonKey(name: "sugars_value")  int? sugarsValue, @JsonKey(name: "calcium")  double? calcium, @JsonKey(name: "calcium_100g")  double? calcium100G, @JsonKey(name: "calcium_label")  String? calciumLabel, @JsonKey(name: "calcium_serving")  double? calciumServing, @JsonKey(name: "calcium_unit")  String? calciumUnit, @JsonKey(name: "calcium_value")  double? calciumValue, @JsonKey(name: "fat_label")  String? fatLabel, @JsonKey(name: "nova-group")  int? novaGroup, @JsonKey(name: "nova-group_100g")  int? novaGroup100G, @JsonKey(name: "nova-group_serving")  int? novaGroupServing)  $default,) {final _that = this;
switch (_that) {
case _Nutriments():
return $default(_that.carbohydrates,_that.carbohydrates100G,_that.carbohydratesServing,_that.carbohydratesUnit,_that.carbohydratesValue,_that.energy,_that.energyKcal,_that.energyKcal100G,_that.energyKcalServing,_that.energyKcalUnit,_that.energyKcalValue,_that.energyKcalValueComputed,_that.energyKj,_that.energyKj100G,_that.energyKjServing,_that.energyKjUnit,_that.energyKjValue,_that.energyKjValueComputed,_that.energy100G,_that.energyServing,_that.energyUnit,_that.energyValue,_that.fat,_that.fat100G,_that.fatServing,_that.fatUnit,_that.fatValue,_that.fiber,_that.fiber100G,_that.fiberServing,_that.fiberUnit,_that.fiberValue,_that.fruitsVegetablesLegumesEstimateFromIngredients100G,_that.fruitsVegetablesLegumesEstimateFromIngredientsServing,_that.fruitsVegetablesNutsEstimateFromIngredients100G,_that.fruitsVegetablesNutsEstimateFromIngredientsServing,_that.nutritionScoreFr,_that.nutritionScoreFr100G,_that.proteins,_that.proteins100G,_that.proteinsServing,_that.proteinsUnit,_that.proteinsValue,_that.salt,_that.salt100G,_that.saltServing,_that.saltUnit,_that.saltValue,_that.saturatedFat,_that.saturatedFat100G,_that.saturatedFatServing,_that.saturatedFatUnit,_that.saturatedFatValue,_that.sodium,_that.sodium100G,_that.sodiumServing,_that.sodiumUnit,_that.sodiumValue,_that.sugars,_that.sugars100G,_that.sugarsServing,_that.sugarsUnit,_that.sugarsValue,_that.calcium,_that.calcium100G,_that.calciumLabel,_that.calciumServing,_that.calciumUnit,_that.calciumValue,_that.fatLabel,_that.novaGroup,_that.novaGroup100G,_that.novaGroupServing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "carbohydrates")  double? carbohydrates, @JsonKey(name: "carbohydrates_100g")  double? carbohydrates100G, @JsonKey(name: "carbohydrates_serving")  double? carbohydratesServing, @JsonKey(name: "carbohydrates_unit")  String? carbohydratesUnit, @JsonKey(name: "carbohydrates_value")  double? carbohydratesValue, @JsonKey(name: "energy")  int? energy, @JsonKey(name: "energy-kcal")  int? energyKcal, @JsonKey(name: "energy-kcal_100g")  int? energyKcal100G, @JsonKey(name: "energy-kcal_serving")  int? energyKcalServing, @JsonKey(name: "energy-kcal_unit")  String? energyKcalUnit, @JsonKey(name: "energy-kcal_value")  int? energyKcalValue, @JsonKey(name: "energy-kcal_value_computed")  double? energyKcalValueComputed, @JsonKey(name: "energy-kj")  int? energyKj, @JsonKey(name: "energy-kj_100g")  int? energyKj100G, @JsonKey(name: "energy-kj_serving")  int? energyKjServing, @JsonKey(name: "energy-kj_unit")  String? energyKjUnit, @JsonKey(name: "energy-kj_value")  int? energyKjValue, @JsonKey(name: "energy-kj_value_computed")  double? energyKjValueComputed, @JsonKey(name: "energy_100g")  int? energy100G, @JsonKey(name: "energy_serving")  int? energyServing, @JsonKey(name: "energy_unit")  String? energyUnit, @JsonKey(name: "energy_value")  int? energyValue, @JsonKey(name: "fat")  int? fat, @JsonKey(name: "fat_100g")  int? fat100G, @JsonKey(name: "fat_serving")  int? fatServing, @JsonKey(name: "fat_unit")  String? fatUnit, @JsonKey(name: "fat_value")  int? fatValue, @JsonKey(name: "fiber")  int? fiber, @JsonKey(name: "fiber_100g")  int? fiber100G, @JsonKey(name: "fiber_serving")  int? fiberServing, @JsonKey(name: "fiber_unit")  String? fiberUnit, @JsonKey(name: "fiber_value")  int? fiberValue, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g")  int? fruitsVegetablesLegumesEstimateFromIngredients100G, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving")  int? fruitsVegetablesLegumesEstimateFromIngredientsServing, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g")  int? fruitsVegetablesNutsEstimateFromIngredients100G, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving")  int? fruitsVegetablesNutsEstimateFromIngredientsServing, @JsonKey(name: "nutrition-score-fr")  int? nutritionScoreFr, @JsonKey(name: "nutrition-score-fr_100g")  int? nutritionScoreFr100G, @JsonKey(name: "proteins")  int? proteins, @JsonKey(name: "proteins_100g")  int? proteins100G, @JsonKey(name: "proteins_serving")  int? proteinsServing, @JsonKey(name: "proteins_unit")  String? proteinsUnit, @JsonKey(name: "proteins_value")  int? proteinsValue, @JsonKey(name: "salt")  int? salt, @JsonKey(name: "salt_100g")  int? salt100G, @JsonKey(name: "salt_serving")  int? saltServing, @JsonKey(name: "salt_unit")  String? saltUnit, @JsonKey(name: "salt_value")  int? saltValue, @JsonKey(name: "saturated-fat")  int? saturatedFat, @JsonKey(name: "saturated-fat_100g")  int? saturatedFat100G, @JsonKey(name: "saturated-fat_serving")  int? saturatedFatServing, @JsonKey(name: "saturated-fat_unit")  String? saturatedFatUnit, @JsonKey(name: "saturated-fat_value")  int? saturatedFatValue, @JsonKey(name: "sodium")  int? sodium, @JsonKey(name: "sodium_100g")  int? sodium100G, @JsonKey(name: "sodium_serving")  int? sodiumServing, @JsonKey(name: "sodium_unit")  String? sodiumUnit, @JsonKey(name: "sodium_value")  int? sodiumValue, @JsonKey(name: "sugars")  int? sugars, @JsonKey(name: "sugars_100g")  double? sugars100G, @JsonKey(name: "sugars_serving")  int? sugarsServing, @JsonKey(name: "sugars_unit")  String? sugarsUnit, @JsonKey(name: "sugars_value")  int? sugarsValue, @JsonKey(name: "calcium")  double? calcium, @JsonKey(name: "calcium_100g")  double? calcium100G, @JsonKey(name: "calcium_label")  String? calciumLabel, @JsonKey(name: "calcium_serving")  double? calciumServing, @JsonKey(name: "calcium_unit")  String? calciumUnit, @JsonKey(name: "calcium_value")  double? calciumValue, @JsonKey(name: "fat_label")  String? fatLabel, @JsonKey(name: "nova-group")  int? novaGroup, @JsonKey(name: "nova-group_100g")  int? novaGroup100G, @JsonKey(name: "nova-group_serving")  int? novaGroupServing)?  $default,) {final _that = this;
switch (_that) {
case _Nutriments() when $default != null:
return $default(_that.carbohydrates,_that.carbohydrates100G,_that.carbohydratesServing,_that.carbohydratesUnit,_that.carbohydratesValue,_that.energy,_that.energyKcal,_that.energyKcal100G,_that.energyKcalServing,_that.energyKcalUnit,_that.energyKcalValue,_that.energyKcalValueComputed,_that.energyKj,_that.energyKj100G,_that.energyKjServing,_that.energyKjUnit,_that.energyKjValue,_that.energyKjValueComputed,_that.energy100G,_that.energyServing,_that.energyUnit,_that.energyValue,_that.fat,_that.fat100G,_that.fatServing,_that.fatUnit,_that.fatValue,_that.fiber,_that.fiber100G,_that.fiberServing,_that.fiberUnit,_that.fiberValue,_that.fruitsVegetablesLegumesEstimateFromIngredients100G,_that.fruitsVegetablesLegumesEstimateFromIngredientsServing,_that.fruitsVegetablesNutsEstimateFromIngredients100G,_that.fruitsVegetablesNutsEstimateFromIngredientsServing,_that.nutritionScoreFr,_that.nutritionScoreFr100G,_that.proteins,_that.proteins100G,_that.proteinsServing,_that.proteinsUnit,_that.proteinsValue,_that.salt,_that.salt100G,_that.saltServing,_that.saltUnit,_that.saltValue,_that.saturatedFat,_that.saturatedFat100G,_that.saturatedFatServing,_that.saturatedFatUnit,_that.saturatedFatValue,_that.sodium,_that.sodium100G,_that.sodiumServing,_that.sodiumUnit,_that.sodiumValue,_that.sugars,_that.sugars100G,_that.sugarsServing,_that.sugarsUnit,_that.sugarsValue,_that.calcium,_that.calcium100G,_that.calciumLabel,_that.calciumServing,_that.calciumUnit,_that.calciumValue,_that.fatLabel,_that.novaGroup,_that.novaGroup100G,_that.novaGroupServing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Nutriments implements Nutriments {
  const _Nutriments({@JsonKey(name: "carbohydrates") this.carbohydrates, @JsonKey(name: "carbohydrates_100g") this.carbohydrates100G, @JsonKey(name: "carbohydrates_serving") this.carbohydratesServing, @JsonKey(name: "carbohydrates_unit") this.carbohydratesUnit, @JsonKey(name: "carbohydrates_value") this.carbohydratesValue, @JsonKey(name: "energy") this.energy, @JsonKey(name: "energy-kcal") this.energyKcal, @JsonKey(name: "energy-kcal_100g") this.energyKcal100G, @JsonKey(name: "energy-kcal_serving") this.energyKcalServing, @JsonKey(name: "energy-kcal_unit") this.energyKcalUnit, @JsonKey(name: "energy-kcal_value") this.energyKcalValue, @JsonKey(name: "energy-kcal_value_computed") this.energyKcalValueComputed, @JsonKey(name: "energy-kj") this.energyKj, @JsonKey(name: "energy-kj_100g") this.energyKj100G, @JsonKey(name: "energy-kj_serving") this.energyKjServing, @JsonKey(name: "energy-kj_unit") this.energyKjUnit, @JsonKey(name: "energy-kj_value") this.energyKjValue, @JsonKey(name: "energy-kj_value_computed") this.energyKjValueComputed, @JsonKey(name: "energy_100g") this.energy100G, @JsonKey(name: "energy_serving") this.energyServing, @JsonKey(name: "energy_unit") this.energyUnit, @JsonKey(name: "energy_value") this.energyValue, @JsonKey(name: "fat") this.fat, @JsonKey(name: "fat_100g") this.fat100G, @JsonKey(name: "fat_serving") this.fatServing, @JsonKey(name: "fat_unit") this.fatUnit, @JsonKey(name: "fat_value") this.fatValue, @JsonKey(name: "fiber") this.fiber, @JsonKey(name: "fiber_100g") this.fiber100G, @JsonKey(name: "fiber_serving") this.fiberServing, @JsonKey(name: "fiber_unit") this.fiberUnit, @JsonKey(name: "fiber_value") this.fiberValue, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g") this.fruitsVegetablesLegumesEstimateFromIngredients100G, @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving") this.fruitsVegetablesLegumesEstimateFromIngredientsServing, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g") this.fruitsVegetablesNutsEstimateFromIngredients100G, @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving") this.fruitsVegetablesNutsEstimateFromIngredientsServing, @JsonKey(name: "nutrition-score-fr") this.nutritionScoreFr, @JsonKey(name: "nutrition-score-fr_100g") this.nutritionScoreFr100G, @JsonKey(name: "proteins") this.proteins, @JsonKey(name: "proteins_100g") this.proteins100G, @JsonKey(name: "proteins_serving") this.proteinsServing, @JsonKey(name: "proteins_unit") this.proteinsUnit, @JsonKey(name: "proteins_value") this.proteinsValue, @JsonKey(name: "salt") this.salt, @JsonKey(name: "salt_100g") this.salt100G, @JsonKey(name: "salt_serving") this.saltServing, @JsonKey(name: "salt_unit") this.saltUnit, @JsonKey(name: "salt_value") this.saltValue, @JsonKey(name: "saturated-fat") this.saturatedFat, @JsonKey(name: "saturated-fat_100g") this.saturatedFat100G, @JsonKey(name: "saturated-fat_serving") this.saturatedFatServing, @JsonKey(name: "saturated-fat_unit") this.saturatedFatUnit, @JsonKey(name: "saturated-fat_value") this.saturatedFatValue, @JsonKey(name: "sodium") this.sodium, @JsonKey(name: "sodium_100g") this.sodium100G, @JsonKey(name: "sodium_serving") this.sodiumServing, @JsonKey(name: "sodium_unit") this.sodiumUnit, @JsonKey(name: "sodium_value") this.sodiumValue, @JsonKey(name: "sugars") this.sugars, @JsonKey(name: "sugars_100g") this.sugars100G, @JsonKey(name: "sugars_serving") this.sugarsServing, @JsonKey(name: "sugars_unit") this.sugarsUnit, @JsonKey(name: "sugars_value") this.sugarsValue, @JsonKey(name: "calcium") this.calcium, @JsonKey(name: "calcium_100g") this.calcium100G, @JsonKey(name: "calcium_label") this.calciumLabel, @JsonKey(name: "calcium_serving") this.calciumServing, @JsonKey(name: "calcium_unit") this.calciumUnit, @JsonKey(name: "calcium_value") this.calciumValue, @JsonKey(name: "fat_label") this.fatLabel, @JsonKey(name: "nova-group") this.novaGroup, @JsonKey(name: "nova-group_100g") this.novaGroup100G, @JsonKey(name: "nova-group_serving") this.novaGroupServing});
  factory _Nutriments.fromJson(Map<String, dynamic> json) => _$NutrimentsFromJson(json);

@override@JsonKey(name: "carbohydrates") final  double? carbohydrates;
@override@JsonKey(name: "carbohydrates_100g") final  double? carbohydrates100G;
@override@JsonKey(name: "carbohydrates_serving") final  double? carbohydratesServing;
@override@JsonKey(name: "carbohydrates_unit") final  String? carbohydratesUnit;
@override@JsonKey(name: "carbohydrates_value") final  double? carbohydratesValue;
@override@JsonKey(name: "energy") final  int? energy;
@override@JsonKey(name: "energy-kcal") final  int? energyKcal;
@override@JsonKey(name: "energy-kcal_100g") final  int? energyKcal100G;
@override@JsonKey(name: "energy-kcal_serving") final  int? energyKcalServing;
@override@JsonKey(name: "energy-kcal_unit") final  String? energyKcalUnit;
@override@JsonKey(name: "energy-kcal_value") final  int? energyKcalValue;
@override@JsonKey(name: "energy-kcal_value_computed") final  double? energyKcalValueComputed;
@override@JsonKey(name: "energy-kj") final  int? energyKj;
@override@JsonKey(name: "energy-kj_100g") final  int? energyKj100G;
@override@JsonKey(name: "energy-kj_serving") final  int? energyKjServing;
@override@JsonKey(name: "energy-kj_unit") final  String? energyKjUnit;
@override@JsonKey(name: "energy-kj_value") final  int? energyKjValue;
@override@JsonKey(name: "energy-kj_value_computed") final  double? energyKjValueComputed;
@override@JsonKey(name: "energy_100g") final  int? energy100G;
@override@JsonKey(name: "energy_serving") final  int? energyServing;
@override@JsonKey(name: "energy_unit") final  String? energyUnit;
@override@JsonKey(name: "energy_value") final  int? energyValue;
@override@JsonKey(name: "fat") final  int? fat;
@override@JsonKey(name: "fat_100g") final  int? fat100G;
@override@JsonKey(name: "fat_serving") final  int? fatServing;
@override@JsonKey(name: "fat_unit") final  String? fatUnit;
@override@JsonKey(name: "fat_value") final  int? fatValue;
@override@JsonKey(name: "fiber") final  int? fiber;
@override@JsonKey(name: "fiber_100g") final  int? fiber100G;
@override@JsonKey(name: "fiber_serving") final  int? fiberServing;
@override@JsonKey(name: "fiber_unit") final  String? fiberUnit;
@override@JsonKey(name: "fiber_value") final  int? fiberValue;
@override@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g") final  int? fruitsVegetablesLegumesEstimateFromIngredients100G;
@override@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving") final  int? fruitsVegetablesLegumesEstimateFromIngredientsServing;
@override@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g") final  int? fruitsVegetablesNutsEstimateFromIngredients100G;
@override@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving") final  int? fruitsVegetablesNutsEstimateFromIngredientsServing;
@override@JsonKey(name: "nutrition-score-fr") final  int? nutritionScoreFr;
@override@JsonKey(name: "nutrition-score-fr_100g") final  int? nutritionScoreFr100G;
@override@JsonKey(name: "proteins") final  int? proteins;
@override@JsonKey(name: "proteins_100g") final  int? proteins100G;
@override@JsonKey(name: "proteins_serving") final  int? proteinsServing;
@override@JsonKey(name: "proteins_unit") final  String? proteinsUnit;
@override@JsonKey(name: "proteins_value") final  int? proteinsValue;
@override@JsonKey(name: "salt") final  int? salt;
@override@JsonKey(name: "salt_100g") final  int? salt100G;
@override@JsonKey(name: "salt_serving") final  int? saltServing;
@override@JsonKey(name: "salt_unit") final  String? saltUnit;
@override@JsonKey(name: "salt_value") final  int? saltValue;
@override@JsonKey(name: "saturated-fat") final  int? saturatedFat;
@override@JsonKey(name: "saturated-fat_100g") final  int? saturatedFat100G;
@override@JsonKey(name: "saturated-fat_serving") final  int? saturatedFatServing;
@override@JsonKey(name: "saturated-fat_unit") final  String? saturatedFatUnit;
@override@JsonKey(name: "saturated-fat_value") final  int? saturatedFatValue;
@override@JsonKey(name: "sodium") final  int? sodium;
@override@JsonKey(name: "sodium_100g") final  int? sodium100G;
@override@JsonKey(name: "sodium_serving") final  int? sodiumServing;
@override@JsonKey(name: "sodium_unit") final  String? sodiumUnit;
@override@JsonKey(name: "sodium_value") final  int? sodiumValue;
@override@JsonKey(name: "sugars") final  int? sugars;
@override@JsonKey(name: "sugars_100g") final  double? sugars100G;
@override@JsonKey(name: "sugars_serving") final  int? sugarsServing;
@override@JsonKey(name: "sugars_unit") final  String? sugarsUnit;
@override@JsonKey(name: "sugars_value") final  int? sugarsValue;
@override@JsonKey(name: "calcium") final  double? calcium;
@override@JsonKey(name: "calcium_100g") final  double? calcium100G;
@override@JsonKey(name: "calcium_label") final  String? calciumLabel;
@override@JsonKey(name: "calcium_serving") final  double? calciumServing;
@override@JsonKey(name: "calcium_unit") final  String? calciumUnit;
@override@JsonKey(name: "calcium_value") final  double? calciumValue;
@override@JsonKey(name: "fat_label") final  String? fatLabel;
@override@JsonKey(name: "nova-group") final  int? novaGroup;
@override@JsonKey(name: "nova-group_100g") final  int? novaGroup100G;
@override@JsonKey(name: "nova-group_serving") final  int? novaGroupServing;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Nutriments&&(identical(other.carbohydrates, carbohydrates) || other.carbohydrates == carbohydrates)&&(identical(other.carbohydrates100G, carbohydrates100G) || other.carbohydrates100G == carbohydrates100G)&&(identical(other.carbohydratesServing, carbohydratesServing) || other.carbohydratesServing == carbohydratesServing)&&(identical(other.carbohydratesUnit, carbohydratesUnit) || other.carbohydratesUnit == carbohydratesUnit)&&(identical(other.carbohydratesValue, carbohydratesValue) || other.carbohydratesValue == carbohydratesValue)&&(identical(other.energy, energy) || other.energy == energy)&&(identical(other.energyKcal, energyKcal) || other.energyKcal == energyKcal)&&(identical(other.energyKcal100G, energyKcal100G) || other.energyKcal100G == energyKcal100G)&&(identical(other.energyKcalServing, energyKcalServing) || other.energyKcalServing == energyKcalServing)&&(identical(other.energyKcalUnit, energyKcalUnit) || other.energyKcalUnit == energyKcalUnit)&&(identical(other.energyKcalValue, energyKcalValue) || other.energyKcalValue == energyKcalValue)&&(identical(other.energyKcalValueComputed, energyKcalValueComputed) || other.energyKcalValueComputed == energyKcalValueComputed)&&(identical(other.energyKj, energyKj) || other.energyKj == energyKj)&&(identical(other.energyKj100G, energyKj100G) || other.energyKj100G == energyKj100G)&&(identical(other.energyKjServing, energyKjServing) || other.energyKjServing == energyKjServing)&&(identical(other.energyKjUnit, energyKjUnit) || other.energyKjUnit == energyKjUnit)&&(identical(other.energyKjValue, energyKjValue) || other.energyKjValue == energyKjValue)&&(identical(other.energyKjValueComputed, energyKjValueComputed) || other.energyKjValueComputed == energyKjValueComputed)&&(identical(other.energy100G, energy100G) || other.energy100G == energy100G)&&(identical(other.energyServing, energyServing) || other.energyServing == energyServing)&&(identical(other.energyUnit, energyUnit) || other.energyUnit == energyUnit)&&(identical(other.energyValue, energyValue) || other.energyValue == energyValue)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.fat100G, fat100G) || other.fat100G == fat100G)&&(identical(other.fatServing, fatServing) || other.fatServing == fatServing)&&(identical(other.fatUnit, fatUnit) || other.fatUnit == fatUnit)&&(identical(other.fatValue, fatValue) || other.fatValue == fatValue)&&(identical(other.fiber, fiber) || other.fiber == fiber)&&(identical(other.fiber100G, fiber100G) || other.fiber100G == fiber100G)&&(identical(other.fiberServing, fiberServing) || other.fiberServing == fiberServing)&&(identical(other.fiberUnit, fiberUnit) || other.fiberUnit == fiberUnit)&&(identical(other.fiberValue, fiberValue) || other.fiberValue == fiberValue)&&(identical(other.fruitsVegetablesLegumesEstimateFromIngredients100G, fruitsVegetablesLegumesEstimateFromIngredients100G) || other.fruitsVegetablesLegumesEstimateFromIngredients100G == fruitsVegetablesLegumesEstimateFromIngredients100G)&&(identical(other.fruitsVegetablesLegumesEstimateFromIngredientsServing, fruitsVegetablesLegumesEstimateFromIngredientsServing) || other.fruitsVegetablesLegumesEstimateFromIngredientsServing == fruitsVegetablesLegumesEstimateFromIngredientsServing)&&(identical(other.fruitsVegetablesNutsEstimateFromIngredients100G, fruitsVegetablesNutsEstimateFromIngredients100G) || other.fruitsVegetablesNutsEstimateFromIngredients100G == fruitsVegetablesNutsEstimateFromIngredients100G)&&(identical(other.fruitsVegetablesNutsEstimateFromIngredientsServing, fruitsVegetablesNutsEstimateFromIngredientsServing) || other.fruitsVegetablesNutsEstimateFromIngredientsServing == fruitsVegetablesNutsEstimateFromIngredientsServing)&&(identical(other.nutritionScoreFr, nutritionScoreFr) || other.nutritionScoreFr == nutritionScoreFr)&&(identical(other.nutritionScoreFr100G, nutritionScoreFr100G) || other.nutritionScoreFr100G == nutritionScoreFr100G)&&(identical(other.proteins, proteins) || other.proteins == proteins)&&(identical(other.proteins100G, proteins100G) || other.proteins100G == proteins100G)&&(identical(other.proteinsServing, proteinsServing) || other.proteinsServing == proteinsServing)&&(identical(other.proteinsUnit, proteinsUnit) || other.proteinsUnit == proteinsUnit)&&(identical(other.proteinsValue, proteinsValue) || other.proteinsValue == proteinsValue)&&(identical(other.salt, salt) || other.salt == salt)&&(identical(other.salt100G, salt100G) || other.salt100G == salt100G)&&(identical(other.saltServing, saltServing) || other.saltServing == saltServing)&&(identical(other.saltUnit, saltUnit) || other.saltUnit == saltUnit)&&(identical(other.saltValue, saltValue) || other.saltValue == saltValue)&&(identical(other.saturatedFat, saturatedFat) || other.saturatedFat == saturatedFat)&&(identical(other.saturatedFat100G, saturatedFat100G) || other.saturatedFat100G == saturatedFat100G)&&(identical(other.saturatedFatServing, saturatedFatServing) || other.saturatedFatServing == saturatedFatServing)&&(identical(other.saturatedFatUnit, saturatedFatUnit) || other.saturatedFatUnit == saturatedFatUnit)&&(identical(other.saturatedFatValue, saturatedFatValue) || other.saturatedFatValue == saturatedFatValue)&&(identical(other.sodium, sodium) || other.sodium == sodium)&&(identical(other.sodium100G, sodium100G) || other.sodium100G == sodium100G)&&(identical(other.sodiumServing, sodiumServing) || other.sodiumServing == sodiumServing)&&(identical(other.sodiumUnit, sodiumUnit) || other.sodiumUnit == sodiumUnit)&&(identical(other.sodiumValue, sodiumValue) || other.sodiumValue == sodiumValue)&&(identical(other.sugars, sugars) || other.sugars == sugars)&&(identical(other.sugars100G, sugars100G) || other.sugars100G == sugars100G)&&(identical(other.sugarsServing, sugarsServing) || other.sugarsServing == sugarsServing)&&(identical(other.sugarsUnit, sugarsUnit) || other.sugarsUnit == sugarsUnit)&&(identical(other.sugarsValue, sugarsValue) || other.sugarsValue == sugarsValue)&&(identical(other.calcium, calcium) || other.calcium == calcium)&&(identical(other.calcium100G, calcium100G) || other.calcium100G == calcium100G)&&(identical(other.calciumLabel, calciumLabel) || other.calciumLabel == calciumLabel)&&(identical(other.calciumServing, calciumServing) || other.calciumServing == calciumServing)&&(identical(other.calciumUnit, calciumUnit) || other.calciumUnit == calciumUnit)&&(identical(other.calciumValue, calciumValue) || other.calciumValue == calciumValue)&&(identical(other.fatLabel, fatLabel) || other.fatLabel == fatLabel)&&(identical(other.novaGroup, novaGroup) || other.novaGroup == novaGroup)&&(identical(other.novaGroup100G, novaGroup100G) || other.novaGroup100G == novaGroup100G)&&(identical(other.novaGroupServing, novaGroupServing) || other.novaGroupServing == novaGroupServing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,carbohydrates,carbohydrates100G,carbohydratesServing,carbohydratesUnit,carbohydratesValue,energy,energyKcal,energyKcal100G,energyKcalServing,energyKcalUnit,energyKcalValue,energyKcalValueComputed,energyKj,energyKj100G,energyKjServing,energyKjUnit,energyKjValue,energyKjValueComputed,energy100G,energyServing,energyUnit,energyValue,fat,fat100G,fatServing,fatUnit,fatValue,fiber,fiber100G,fiberServing,fiberUnit,fiberValue,fruitsVegetablesLegumesEstimateFromIngredients100G,fruitsVegetablesLegumesEstimateFromIngredientsServing,fruitsVegetablesNutsEstimateFromIngredients100G,fruitsVegetablesNutsEstimateFromIngredientsServing,nutritionScoreFr,nutritionScoreFr100G,proteins,proteins100G,proteinsServing,proteinsUnit,proteinsValue,salt,salt100G,saltServing,saltUnit,saltValue,saturatedFat,saturatedFat100G,saturatedFatServing,saturatedFatUnit,saturatedFatValue,sodium,sodium100G,sodiumServing,sodiumUnit,sodiumValue,sugars,sugars100G,sugarsServing,sugarsUnit,sugarsValue,calcium,calcium100G,calciumLabel,calciumServing,calciumUnit,calciumValue,fatLabel,novaGroup,novaGroup100G,novaGroupServing]);

@override
String toString() {
  return 'Nutriments(carbohydrates: $carbohydrates, carbohydrates100G: $carbohydrates100G, carbohydratesServing: $carbohydratesServing, carbohydratesUnit: $carbohydratesUnit, carbohydratesValue: $carbohydratesValue, energy: $energy, energyKcal: $energyKcal, energyKcal100G: $energyKcal100G, energyKcalServing: $energyKcalServing, energyKcalUnit: $energyKcalUnit, energyKcalValue: $energyKcalValue, energyKcalValueComputed: $energyKcalValueComputed, energyKj: $energyKj, energyKj100G: $energyKj100G, energyKjServing: $energyKjServing, energyKjUnit: $energyKjUnit, energyKjValue: $energyKjValue, energyKjValueComputed: $energyKjValueComputed, energy100G: $energy100G, energyServing: $energyServing, energyUnit: $energyUnit, energyValue: $energyValue, fat: $fat, fat100G: $fat100G, fatServing: $fatServing, fatUnit: $fatUnit, fatValue: $fatValue, fiber: $fiber, fiber100G: $fiber100G, fiberServing: $fiberServing, fiberUnit: $fiberUnit, fiberValue: $fiberValue, fruitsVegetablesLegumesEstimateFromIngredients100G: $fruitsVegetablesLegumesEstimateFromIngredients100G, fruitsVegetablesLegumesEstimateFromIngredientsServing: $fruitsVegetablesLegumesEstimateFromIngredientsServing, fruitsVegetablesNutsEstimateFromIngredients100G: $fruitsVegetablesNutsEstimateFromIngredients100G, fruitsVegetablesNutsEstimateFromIngredientsServing: $fruitsVegetablesNutsEstimateFromIngredientsServing, nutritionScoreFr: $nutritionScoreFr, nutritionScoreFr100G: $nutritionScoreFr100G, proteins: $proteins, proteins100G: $proteins100G, proteinsServing: $proteinsServing, proteinsUnit: $proteinsUnit, proteinsValue: $proteinsValue, salt: $salt, salt100G: $salt100G, saltServing: $saltServing, saltUnit: $saltUnit, saltValue: $saltValue, saturatedFat: $saturatedFat, saturatedFat100G: $saturatedFat100G, saturatedFatServing: $saturatedFatServing, saturatedFatUnit: $saturatedFatUnit, saturatedFatValue: $saturatedFatValue, sodium: $sodium, sodium100G: $sodium100G, sodiumServing: $sodiumServing, sodiumUnit: $sodiumUnit, sodiumValue: $sodiumValue, sugars: $sugars, sugars100G: $sugars100G, sugarsServing: $sugarsServing, sugarsUnit: $sugarsUnit, sugarsValue: $sugarsValue, calcium: $calcium, calcium100G: $calcium100G, calciumLabel: $calciumLabel, calciumServing: $calciumServing, calciumUnit: $calciumUnit, calciumValue: $calciumValue, fatLabel: $fatLabel, novaGroup: $novaGroup, novaGroup100G: $novaGroup100G, novaGroupServing: $novaGroupServing)';
}


}

/// @nodoc
abstract mixin class _$NutrimentsCopyWith<$Res> implements $NutrimentsCopyWith<$Res> {
  factory _$NutrimentsCopyWith(_Nutriments value, $Res Function(_Nutriments) _then) = __$NutrimentsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "carbohydrates") double? carbohydrates,@JsonKey(name: "carbohydrates_100g") double? carbohydrates100G,@JsonKey(name: "carbohydrates_serving") double? carbohydratesServing,@JsonKey(name: "carbohydrates_unit") String? carbohydratesUnit,@JsonKey(name: "carbohydrates_value") double? carbohydratesValue,@JsonKey(name: "energy") int? energy,@JsonKey(name: "energy-kcal") int? energyKcal,@JsonKey(name: "energy-kcal_100g") int? energyKcal100G,@JsonKey(name: "energy-kcal_serving") int? energyKcalServing,@JsonKey(name: "energy-kcal_unit") String? energyKcalUnit,@JsonKey(name: "energy-kcal_value") int? energyKcalValue,@JsonKey(name: "energy-kcal_value_computed") double? energyKcalValueComputed,@JsonKey(name: "energy-kj") int? energyKj,@JsonKey(name: "energy-kj_100g") int? energyKj100G,@JsonKey(name: "energy-kj_serving") int? energyKjServing,@JsonKey(name: "energy-kj_unit") String? energyKjUnit,@JsonKey(name: "energy-kj_value") int? energyKjValue,@JsonKey(name: "energy-kj_value_computed") double? energyKjValueComputed,@JsonKey(name: "energy_100g") int? energy100G,@JsonKey(name: "energy_serving") int? energyServing,@JsonKey(name: "energy_unit") String? energyUnit,@JsonKey(name: "energy_value") int? energyValue,@JsonKey(name: "fat") int? fat,@JsonKey(name: "fat_100g") int? fat100G,@JsonKey(name: "fat_serving") int? fatServing,@JsonKey(name: "fat_unit") String? fatUnit,@JsonKey(name: "fat_value") int? fatValue,@JsonKey(name: "fiber") int? fiber,@JsonKey(name: "fiber_100g") int? fiber100G,@JsonKey(name: "fiber_serving") int? fiberServing,@JsonKey(name: "fiber_unit") String? fiberUnit,@JsonKey(name: "fiber_value") int? fiberValue,@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g") int? fruitsVegetablesLegumesEstimateFromIngredients100G,@JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving") int? fruitsVegetablesLegumesEstimateFromIngredientsServing,@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g") int? fruitsVegetablesNutsEstimateFromIngredients100G,@JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving") int? fruitsVegetablesNutsEstimateFromIngredientsServing,@JsonKey(name: "nutrition-score-fr") int? nutritionScoreFr,@JsonKey(name: "nutrition-score-fr_100g") int? nutritionScoreFr100G,@JsonKey(name: "proteins") int? proteins,@JsonKey(name: "proteins_100g") int? proteins100G,@JsonKey(name: "proteins_serving") int? proteinsServing,@JsonKey(name: "proteins_unit") String? proteinsUnit,@JsonKey(name: "proteins_value") int? proteinsValue,@JsonKey(name: "salt") int? salt,@JsonKey(name: "salt_100g") int? salt100G,@JsonKey(name: "salt_serving") int? saltServing,@JsonKey(name: "salt_unit") String? saltUnit,@JsonKey(name: "salt_value") int? saltValue,@JsonKey(name: "saturated-fat") int? saturatedFat,@JsonKey(name: "saturated-fat_100g") int? saturatedFat100G,@JsonKey(name: "saturated-fat_serving") int? saturatedFatServing,@JsonKey(name: "saturated-fat_unit") String? saturatedFatUnit,@JsonKey(name: "saturated-fat_value") int? saturatedFatValue,@JsonKey(name: "sodium") int? sodium,@JsonKey(name: "sodium_100g") int? sodium100G,@JsonKey(name: "sodium_serving") int? sodiumServing,@JsonKey(name: "sodium_unit") String? sodiumUnit,@JsonKey(name: "sodium_value") int? sodiumValue,@JsonKey(name: "sugars") int? sugars,@JsonKey(name: "sugars_100g") double? sugars100G,@JsonKey(name: "sugars_serving") int? sugarsServing,@JsonKey(name: "sugars_unit") String? sugarsUnit,@JsonKey(name: "sugars_value") int? sugarsValue,@JsonKey(name: "calcium") double? calcium,@JsonKey(name: "calcium_100g") double? calcium100G,@JsonKey(name: "calcium_label") String? calciumLabel,@JsonKey(name: "calcium_serving") double? calciumServing,@JsonKey(name: "calcium_unit") String? calciumUnit,@JsonKey(name: "calcium_value") double? calciumValue,@JsonKey(name: "fat_label") String? fatLabel,@JsonKey(name: "nova-group") int? novaGroup,@JsonKey(name: "nova-group_100g") int? novaGroup100G,@JsonKey(name: "nova-group_serving") int? novaGroupServing
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
@override @pragma('vm:prefer-inline') $Res call({Object? carbohydrates = freezed,Object? carbohydrates100G = freezed,Object? carbohydratesServing = freezed,Object? carbohydratesUnit = freezed,Object? carbohydratesValue = freezed,Object? energy = freezed,Object? energyKcal = freezed,Object? energyKcal100G = freezed,Object? energyKcalServing = freezed,Object? energyKcalUnit = freezed,Object? energyKcalValue = freezed,Object? energyKcalValueComputed = freezed,Object? energyKj = freezed,Object? energyKj100G = freezed,Object? energyKjServing = freezed,Object? energyKjUnit = freezed,Object? energyKjValue = freezed,Object? energyKjValueComputed = freezed,Object? energy100G = freezed,Object? energyServing = freezed,Object? energyUnit = freezed,Object? energyValue = freezed,Object? fat = freezed,Object? fat100G = freezed,Object? fatServing = freezed,Object? fatUnit = freezed,Object? fatValue = freezed,Object? fiber = freezed,Object? fiber100G = freezed,Object? fiberServing = freezed,Object? fiberUnit = freezed,Object? fiberValue = freezed,Object? fruitsVegetablesLegumesEstimateFromIngredients100G = freezed,Object? fruitsVegetablesLegumesEstimateFromIngredientsServing = freezed,Object? fruitsVegetablesNutsEstimateFromIngredients100G = freezed,Object? fruitsVegetablesNutsEstimateFromIngredientsServing = freezed,Object? nutritionScoreFr = freezed,Object? nutritionScoreFr100G = freezed,Object? proteins = freezed,Object? proteins100G = freezed,Object? proteinsServing = freezed,Object? proteinsUnit = freezed,Object? proteinsValue = freezed,Object? salt = freezed,Object? salt100G = freezed,Object? saltServing = freezed,Object? saltUnit = freezed,Object? saltValue = freezed,Object? saturatedFat = freezed,Object? saturatedFat100G = freezed,Object? saturatedFatServing = freezed,Object? saturatedFatUnit = freezed,Object? saturatedFatValue = freezed,Object? sodium = freezed,Object? sodium100G = freezed,Object? sodiumServing = freezed,Object? sodiumUnit = freezed,Object? sodiumValue = freezed,Object? sugars = freezed,Object? sugars100G = freezed,Object? sugarsServing = freezed,Object? sugarsUnit = freezed,Object? sugarsValue = freezed,Object? calcium = freezed,Object? calcium100G = freezed,Object? calciumLabel = freezed,Object? calciumServing = freezed,Object? calciumUnit = freezed,Object? calciumValue = freezed,Object? fatLabel = freezed,Object? novaGroup = freezed,Object? novaGroup100G = freezed,Object? novaGroupServing = freezed,}) {
  return _then(_Nutriments(
carbohydrates: freezed == carbohydrates ? _self.carbohydrates : carbohydrates // ignore: cast_nullable_to_non_nullable
as double?,carbohydrates100G: freezed == carbohydrates100G ? _self.carbohydrates100G : carbohydrates100G // ignore: cast_nullable_to_non_nullable
as double?,carbohydratesServing: freezed == carbohydratesServing ? _self.carbohydratesServing : carbohydratesServing // ignore: cast_nullable_to_non_nullable
as double?,carbohydratesUnit: freezed == carbohydratesUnit ? _self.carbohydratesUnit : carbohydratesUnit // ignore: cast_nullable_to_non_nullable
as String?,carbohydratesValue: freezed == carbohydratesValue ? _self.carbohydratesValue : carbohydratesValue // ignore: cast_nullable_to_non_nullable
as double?,energy: freezed == energy ? _self.energy : energy // ignore: cast_nullable_to_non_nullable
as int?,energyKcal: freezed == energyKcal ? _self.energyKcal : energyKcal // ignore: cast_nullable_to_non_nullable
as int?,energyKcal100G: freezed == energyKcal100G ? _self.energyKcal100G : energyKcal100G // ignore: cast_nullable_to_non_nullable
as int?,energyKcalServing: freezed == energyKcalServing ? _self.energyKcalServing : energyKcalServing // ignore: cast_nullable_to_non_nullable
as int?,energyKcalUnit: freezed == energyKcalUnit ? _self.energyKcalUnit : energyKcalUnit // ignore: cast_nullable_to_non_nullable
as String?,energyKcalValue: freezed == energyKcalValue ? _self.energyKcalValue : energyKcalValue // ignore: cast_nullable_to_non_nullable
as int?,energyKcalValueComputed: freezed == energyKcalValueComputed ? _self.energyKcalValueComputed : energyKcalValueComputed // ignore: cast_nullable_to_non_nullable
as double?,energyKj: freezed == energyKj ? _self.energyKj : energyKj // ignore: cast_nullable_to_non_nullable
as int?,energyKj100G: freezed == energyKj100G ? _self.energyKj100G : energyKj100G // ignore: cast_nullable_to_non_nullable
as int?,energyKjServing: freezed == energyKjServing ? _self.energyKjServing : energyKjServing // ignore: cast_nullable_to_non_nullable
as int?,energyKjUnit: freezed == energyKjUnit ? _self.energyKjUnit : energyKjUnit // ignore: cast_nullable_to_non_nullable
as String?,energyKjValue: freezed == energyKjValue ? _self.energyKjValue : energyKjValue // ignore: cast_nullable_to_non_nullable
as int?,energyKjValueComputed: freezed == energyKjValueComputed ? _self.energyKjValueComputed : energyKjValueComputed // ignore: cast_nullable_to_non_nullable
as double?,energy100G: freezed == energy100G ? _self.energy100G : energy100G // ignore: cast_nullable_to_non_nullable
as int?,energyServing: freezed == energyServing ? _self.energyServing : energyServing // ignore: cast_nullable_to_non_nullable
as int?,energyUnit: freezed == energyUnit ? _self.energyUnit : energyUnit // ignore: cast_nullable_to_non_nullable
as String?,energyValue: freezed == energyValue ? _self.energyValue : energyValue // ignore: cast_nullable_to_non_nullable
as int?,fat: freezed == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as int?,fat100G: freezed == fat100G ? _self.fat100G : fat100G // ignore: cast_nullable_to_non_nullable
as int?,fatServing: freezed == fatServing ? _self.fatServing : fatServing // ignore: cast_nullable_to_non_nullable
as int?,fatUnit: freezed == fatUnit ? _self.fatUnit : fatUnit // ignore: cast_nullable_to_non_nullable
as String?,fatValue: freezed == fatValue ? _self.fatValue : fatValue // ignore: cast_nullable_to_non_nullable
as int?,fiber: freezed == fiber ? _self.fiber : fiber // ignore: cast_nullable_to_non_nullable
as int?,fiber100G: freezed == fiber100G ? _self.fiber100G : fiber100G // ignore: cast_nullable_to_non_nullable
as int?,fiberServing: freezed == fiberServing ? _self.fiberServing : fiberServing // ignore: cast_nullable_to_non_nullable
as int?,fiberUnit: freezed == fiberUnit ? _self.fiberUnit : fiberUnit // ignore: cast_nullable_to_non_nullable
as String?,fiberValue: freezed == fiberValue ? _self.fiberValue : fiberValue // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesLegumesEstimateFromIngredients100G: freezed == fruitsVegetablesLegumesEstimateFromIngredients100G ? _self.fruitsVegetablesLegumesEstimateFromIngredients100G : fruitsVegetablesLegumesEstimateFromIngredients100G // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesLegumesEstimateFromIngredientsServing: freezed == fruitsVegetablesLegumesEstimateFromIngredientsServing ? _self.fruitsVegetablesLegumesEstimateFromIngredientsServing : fruitsVegetablesLegumesEstimateFromIngredientsServing // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesNutsEstimateFromIngredients100G: freezed == fruitsVegetablesNutsEstimateFromIngredients100G ? _self.fruitsVegetablesNutsEstimateFromIngredients100G : fruitsVegetablesNutsEstimateFromIngredients100G // ignore: cast_nullable_to_non_nullable
as int?,fruitsVegetablesNutsEstimateFromIngredientsServing: freezed == fruitsVegetablesNutsEstimateFromIngredientsServing ? _self.fruitsVegetablesNutsEstimateFromIngredientsServing : fruitsVegetablesNutsEstimateFromIngredientsServing // ignore: cast_nullable_to_non_nullable
as int?,nutritionScoreFr: freezed == nutritionScoreFr ? _self.nutritionScoreFr : nutritionScoreFr // ignore: cast_nullable_to_non_nullable
as int?,nutritionScoreFr100G: freezed == nutritionScoreFr100G ? _self.nutritionScoreFr100G : nutritionScoreFr100G // ignore: cast_nullable_to_non_nullable
as int?,proteins: freezed == proteins ? _self.proteins : proteins // ignore: cast_nullable_to_non_nullable
as int?,proteins100G: freezed == proteins100G ? _self.proteins100G : proteins100G // ignore: cast_nullable_to_non_nullable
as int?,proteinsServing: freezed == proteinsServing ? _self.proteinsServing : proteinsServing // ignore: cast_nullable_to_non_nullable
as int?,proteinsUnit: freezed == proteinsUnit ? _self.proteinsUnit : proteinsUnit // ignore: cast_nullable_to_non_nullable
as String?,proteinsValue: freezed == proteinsValue ? _self.proteinsValue : proteinsValue // ignore: cast_nullable_to_non_nullable
as int?,salt: freezed == salt ? _self.salt : salt // ignore: cast_nullable_to_non_nullable
as int?,salt100G: freezed == salt100G ? _self.salt100G : salt100G // ignore: cast_nullable_to_non_nullable
as int?,saltServing: freezed == saltServing ? _self.saltServing : saltServing // ignore: cast_nullable_to_non_nullable
as int?,saltUnit: freezed == saltUnit ? _self.saltUnit : saltUnit // ignore: cast_nullable_to_non_nullable
as String?,saltValue: freezed == saltValue ? _self.saltValue : saltValue // ignore: cast_nullable_to_non_nullable
as int?,saturatedFat: freezed == saturatedFat ? _self.saturatedFat : saturatedFat // ignore: cast_nullable_to_non_nullable
as int?,saturatedFat100G: freezed == saturatedFat100G ? _self.saturatedFat100G : saturatedFat100G // ignore: cast_nullable_to_non_nullable
as int?,saturatedFatServing: freezed == saturatedFatServing ? _self.saturatedFatServing : saturatedFatServing // ignore: cast_nullable_to_non_nullable
as int?,saturatedFatUnit: freezed == saturatedFatUnit ? _self.saturatedFatUnit : saturatedFatUnit // ignore: cast_nullable_to_non_nullable
as String?,saturatedFatValue: freezed == saturatedFatValue ? _self.saturatedFatValue : saturatedFatValue // ignore: cast_nullable_to_non_nullable
as int?,sodium: freezed == sodium ? _self.sodium : sodium // ignore: cast_nullable_to_non_nullable
as int?,sodium100G: freezed == sodium100G ? _self.sodium100G : sodium100G // ignore: cast_nullable_to_non_nullable
as int?,sodiumServing: freezed == sodiumServing ? _self.sodiumServing : sodiumServing // ignore: cast_nullable_to_non_nullable
as int?,sodiumUnit: freezed == sodiumUnit ? _self.sodiumUnit : sodiumUnit // ignore: cast_nullable_to_non_nullable
as String?,sodiumValue: freezed == sodiumValue ? _self.sodiumValue : sodiumValue // ignore: cast_nullable_to_non_nullable
as int?,sugars: freezed == sugars ? _self.sugars : sugars // ignore: cast_nullable_to_non_nullable
as int?,sugars100G: freezed == sugars100G ? _self.sugars100G : sugars100G // ignore: cast_nullable_to_non_nullable
as double?,sugarsServing: freezed == sugarsServing ? _self.sugarsServing : sugarsServing // ignore: cast_nullable_to_non_nullable
as int?,sugarsUnit: freezed == sugarsUnit ? _self.sugarsUnit : sugarsUnit // ignore: cast_nullable_to_non_nullable
as String?,sugarsValue: freezed == sugarsValue ? _self.sugarsValue : sugarsValue // ignore: cast_nullable_to_non_nullable
as int?,calcium: freezed == calcium ? _self.calcium : calcium // ignore: cast_nullable_to_non_nullable
as double?,calcium100G: freezed == calcium100G ? _self.calcium100G : calcium100G // ignore: cast_nullable_to_non_nullable
as double?,calciumLabel: freezed == calciumLabel ? _self.calciumLabel : calciumLabel // ignore: cast_nullable_to_non_nullable
as String?,calciumServing: freezed == calciumServing ? _self.calciumServing : calciumServing // ignore: cast_nullable_to_non_nullable
as double?,calciumUnit: freezed == calciumUnit ? _self.calciumUnit : calciumUnit // ignore: cast_nullable_to_non_nullable
as String?,calciumValue: freezed == calciumValue ? _self.calciumValue : calciumValue // ignore: cast_nullable_to_non_nullable
as double?,fatLabel: freezed == fatLabel ? _self.fatLabel : fatLabel // ignore: cast_nullable_to_non_nullable
as String?,novaGroup: freezed == novaGroup ? _self.novaGroup : novaGroup // ignore: cast_nullable_to_non_nullable
as int?,novaGroup100G: freezed == novaGroup100G ? _self.novaGroup100G : novaGroup100G // ignore: cast_nullable_to_non_nullable
as int?,novaGroupServing: freezed == novaGroupServing ? _self.novaGroupServing : novaGroupServing // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
