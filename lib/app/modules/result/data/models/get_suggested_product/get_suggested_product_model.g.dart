// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_suggested_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetSuggestedProductModel _$GetSuggestedProductModelFromJson(
  Map<String, dynamic> json,
) => _GetSuggestedProductModel(
  suggestedProducts: (json['suggested_products'] as List<dynamic>?)
      ?.map((e) => SuggestedProduct.fromJson(e as Map<String, dynamic>))
      .toList(),
  userGoals: (json['user_goals'] as List<dynamic>?)
      ?.map((e) => UserGoal.fromJson(e as Map<String, dynamic>))
      .toList(),
  userPreferences: (json['user_preferences'] as List<dynamic>?)
      ?.map((e) => UserPreference.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetSuggestedProductModelToJson(
  _GetSuggestedProductModel instance,
) => <String, dynamic>{
  'suggested_products': instance.suggestedProducts,
  'user_goals': instance.userGoals,
  'user_preferences': instance.userPreferences,
};

_SuggestedProduct _$SuggestedProductFromJson(Map<String, dynamic> json) =>
    _SuggestedProduct(
      productName: json['product_name'] as String?,
      brand: json['brand'] as String?,
      nutritionGrade: json['nutrition_grade'] as String?,
      imageUrl: json['image_url'] as String?,
      barcode: json['barcode'] as String?,
    );

Map<String, dynamic> _$SuggestedProductToJson(_SuggestedProduct instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'brand': instance.brand,
      'nutrition_grade': instance.nutritionGrade,
      'image_url': instance.imageUrl,
      'barcode': instance.barcode,
    };

_UserGoal _$UserGoalFromJson(Map<String, dynamic> json) =>
    _UserGoal(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$UserGoalToJson(_UserGoal instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_UserPreference _$UserPreferenceFromJson(Map<String, dynamic> json) =>
    _UserPreference(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UserPreferenceToJson(_UserPreference instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
