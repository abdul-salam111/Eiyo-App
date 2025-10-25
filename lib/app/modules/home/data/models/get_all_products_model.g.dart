// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetAllProductsModel _$GetAllProductsModelFromJson(Map<String, dynamic> json) =>
    _GetAllProductsModel(
      count: (json['count'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      pageCount: (json['page_count'] as num?)?.toInt(),
      pageSize: (json['page_size'] as num?)?.toInt(),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      skip: (json['skip'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetAllProductsModelToJson(
  _GetAllProductsModel instance,
) => <String, dynamic>{
  'count': instance.count,
  'page': instance.page,
  'page_count': instance.pageCount,
  'page_size': instance.pageSize,
  'products': instance.products,
  'skip': instance.skip,
};

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  brands: json['brands'] as String?,
  categories: json['categories'] as String?,
  categoriesTags: (json['categories_tags'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  code: json['code'] as String?,
  imageFrontSmallUrl: json['image_front_small_url'] as String?,
  ingredientsText: json['ingredients_text'] as String?,
  nutriments: json['nutriments'] == null
      ? null
      : Nutriments.fromJson(json['nutriments'] as Map<String, dynamic>),
  nutriscoreGrade: json['nutriscore_grade'] as String?,
  nutriscoreScore: (json['nutriscore_score'] as num?)?.toInt(),
  productName: json['product_name'] as String?,
  quantity: json['quantity'] as String?,
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'brands': instance.brands,
  'categories': instance.categories,
  'categories_tags': instance.categoriesTags,
  'code': instance.code,
  'image_front_small_url': instance.imageFrontSmallUrl,
  'ingredients_text': instance.ingredientsText,
  'nutriments': instance.nutriments,
  'nutriscore_grade': instance.nutriscoreGrade,
  'nutriscore_score': instance.nutriscoreScore,
  'product_name': instance.productName,
  'quantity': instance.quantity,
};

_Nutriments _$NutrimentsFromJson(Map<String, dynamic> json) => _Nutriments(
  carbohydrates: (json['carbohydrates'] as num?)?.toDouble(),
  carbohydrates100G: (json['carbohydrates_100g'] as num?)?.toDouble(),
  carbohydratesServing: (json['carbohydrates_serving'] as num?)?.toDouble(),
  carbohydratesUnit: json['carbohydrates_unit'] as String?,
  carbohydratesValue: (json['carbohydrates_value'] as num?)?.toDouble(),
  energy: (json['energy'] as num?)?.toInt(),
  energyKcal: (json['energy-kcal'] as num?)?.toInt(),
  energyKcal100G: (json['energy-kcal_100g'] as num?)?.toInt(),
  energyKcalServing: (json['energy-kcal_serving'] as num?)?.toInt(),
  energyKcalUnit: json['energy-kcal_unit'] as String?,
  energyKcalValue: (json['energy-kcal_value'] as num?)?.toInt(),
  energyKcalValueComputed: (json['energy-kcal_value_computed'] as num?)
      ?.toDouble(),
  energyKj: (json['energy-kj'] as num?)?.toInt(),
  energyKj100G: (json['energy-kj_100g'] as num?)?.toInt(),
  energyKjServing: (json['energy-kj_serving'] as num?)?.toInt(),
  energyKjUnit: json['energy-kj_unit'] as String?,
  energyKjValue: (json['energy-kj_value'] as num?)?.toInt(),
  energyKjValueComputed: (json['energy-kj_value_computed'] as num?)?.toDouble(),
  energy100G: (json['energy_100g'] as num?)?.toInt(),
  energyServing: (json['energy_serving'] as num?)?.toInt(),
  energyUnit: json['energy_unit'] as String?,
  energyValue: (json['energy_value'] as num?)?.toInt(),
  fat: (json['fat'] as num?)?.toInt(),
  fat100G: (json['fat_100g'] as num?)?.toInt(),
  fatServing: (json['fat_serving'] as num?)?.toInt(),
  fatUnit: json['fat_unit'] as String?,
  fatValue: (json['fat_value'] as num?)?.toInt(),
  fiber: (json['fiber'] as num?)?.toInt(),
  fiber100G: (json['fiber_100g'] as num?)?.toInt(),
  fiberServing: (json['fiber_serving'] as num?)?.toInt(),
  fiberUnit: json['fiber_unit'] as String?,
  fiberValue: (json['fiber_value'] as num?)?.toInt(),
  fruitsVegetablesLegumesEstimateFromIngredients100G:
      (json['fruits-vegetables-legumes-estimate-from-ingredients_100g'] as num?)
          ?.toInt(),
  fruitsVegetablesLegumesEstimateFromIngredientsServing:
      (json['fruits-vegetables-legumes-estimate-from-ingredients_serving']
              as num?)
          ?.toInt(),
  fruitsVegetablesNutsEstimateFromIngredients100G:
      (json['fruits-vegetables-nuts-estimate-from-ingredients_100g'] as num?)
          ?.toInt(),
  fruitsVegetablesNutsEstimateFromIngredientsServing:
      (json['fruits-vegetables-nuts-estimate-from-ingredients_serving'] as num?)
          ?.toInt(),
  nutritionScoreFr: (json['nutrition-score-fr'] as num?)?.toInt(),
  nutritionScoreFr100G: (json['nutrition-score-fr_100g'] as num?)?.toInt(),
  proteins: (json['proteins'] as num?)?.toInt(),
  proteins100G: (json['proteins_100g'] as num?)?.toInt(),
  proteinsServing: (json['proteins_serving'] as num?)?.toInt(),
  proteinsUnit: json['proteins_unit'] as String?,
  proteinsValue: (json['proteins_value'] as num?)?.toInt(),
  salt: (json['salt'] as num?)?.toInt(),
  salt100G: (json['salt_100g'] as num?)?.toInt(),
  saltServing: (json['salt_serving'] as num?)?.toInt(),
  saltUnit: json['salt_unit'] as String?,
  saltValue: (json['salt_value'] as num?)?.toInt(),
  saturatedFat: (json['saturated-fat'] as num?)?.toInt(),
  saturatedFat100G: (json['saturated-fat_100g'] as num?)?.toInt(),
  saturatedFatServing: (json['saturated-fat_serving'] as num?)?.toInt(),
  saturatedFatUnit: json['saturated-fat_unit'] as String?,
  saturatedFatValue: (json['saturated-fat_value'] as num?)?.toInt(),
  sodium: (json['sodium'] as num?)?.toInt(),
  sodium100G: (json['sodium_100g'] as num?)?.toInt(),
  sodiumServing: (json['sodium_serving'] as num?)?.toInt(),
  sodiumUnit: json['sodium_unit'] as String?,
  sodiumValue: (json['sodium_value'] as num?)?.toInt(),
  sugars: (json['sugars'] as num?)?.toInt(),
  sugars100G: (json['sugars_100g'] as num?)?.toDouble(),
  sugarsServing: (json['sugars_serving'] as num?)?.toInt(),
  sugarsUnit: json['sugars_unit'] as String?,
  sugarsValue: (json['sugars_value'] as num?)?.toInt(),
  calcium: (json['calcium'] as num?)?.toDouble(),
  calcium100G: (json['calcium_100g'] as num?)?.toDouble(),
  calciumLabel: json['calcium_label'] as String?,
  calciumServing: (json['calcium_serving'] as num?)?.toDouble(),
  calciumUnit: json['calcium_unit'] as String?,
  calciumValue: (json['calcium_value'] as num?)?.toDouble(),
  fatLabel: json['fat_label'] as String?,
  novaGroup: (json['nova-group'] as num?)?.toInt(),
  novaGroup100G: (json['nova-group_100g'] as num?)?.toInt(),
  novaGroupServing: (json['nova-group_serving'] as num?)?.toInt(),
);

Map<String, dynamic> _$NutrimentsToJson(_Nutriments instance) =>
    <String, dynamic>{
      'carbohydrates': instance.carbohydrates,
      'carbohydrates_100g': instance.carbohydrates100G,
      'carbohydrates_serving': instance.carbohydratesServing,
      'carbohydrates_unit': instance.carbohydratesUnit,
      'carbohydrates_value': instance.carbohydratesValue,
      'energy': instance.energy,
      'energy-kcal': instance.energyKcal,
      'energy-kcal_100g': instance.energyKcal100G,
      'energy-kcal_serving': instance.energyKcalServing,
      'energy-kcal_unit': instance.energyKcalUnit,
      'energy-kcal_value': instance.energyKcalValue,
      'energy-kcal_value_computed': instance.energyKcalValueComputed,
      'energy-kj': instance.energyKj,
      'energy-kj_100g': instance.energyKj100G,
      'energy-kj_serving': instance.energyKjServing,
      'energy-kj_unit': instance.energyKjUnit,
      'energy-kj_value': instance.energyKjValue,
      'energy-kj_value_computed': instance.energyKjValueComputed,
      'energy_100g': instance.energy100G,
      'energy_serving': instance.energyServing,
      'energy_unit': instance.energyUnit,
      'energy_value': instance.energyValue,
      'fat': instance.fat,
      'fat_100g': instance.fat100G,
      'fat_serving': instance.fatServing,
      'fat_unit': instance.fatUnit,
      'fat_value': instance.fatValue,
      'fiber': instance.fiber,
      'fiber_100g': instance.fiber100G,
      'fiber_serving': instance.fiberServing,
      'fiber_unit': instance.fiberUnit,
      'fiber_value': instance.fiberValue,
      'fruits-vegetables-legumes-estimate-from-ingredients_100g':
          instance.fruitsVegetablesLegumesEstimateFromIngredients100G,
      'fruits-vegetables-legumes-estimate-from-ingredients_serving':
          instance.fruitsVegetablesLegumesEstimateFromIngredientsServing,
      'fruits-vegetables-nuts-estimate-from-ingredients_100g':
          instance.fruitsVegetablesNutsEstimateFromIngredients100G,
      'fruits-vegetables-nuts-estimate-from-ingredients_serving':
          instance.fruitsVegetablesNutsEstimateFromIngredientsServing,
      'nutrition-score-fr': instance.nutritionScoreFr,
      'nutrition-score-fr_100g': instance.nutritionScoreFr100G,
      'proteins': instance.proteins,
      'proteins_100g': instance.proteins100G,
      'proteins_serving': instance.proteinsServing,
      'proteins_unit': instance.proteinsUnit,
      'proteins_value': instance.proteinsValue,
      'salt': instance.salt,
      'salt_100g': instance.salt100G,
      'salt_serving': instance.saltServing,
      'salt_unit': instance.saltUnit,
      'salt_value': instance.saltValue,
      'saturated-fat': instance.saturatedFat,
      'saturated-fat_100g': instance.saturatedFat100G,
      'saturated-fat_serving': instance.saturatedFatServing,
      'saturated-fat_unit': instance.saturatedFatUnit,
      'saturated-fat_value': instance.saturatedFatValue,
      'sodium': instance.sodium,
      'sodium_100g': instance.sodium100G,
      'sodium_serving': instance.sodiumServing,
      'sodium_unit': instance.sodiumUnit,
      'sodium_value': instance.sodiumValue,
      'sugars': instance.sugars,
      'sugars_100g': instance.sugars100G,
      'sugars_serving': instance.sugarsServing,
      'sugars_unit': instance.sugarsUnit,
      'sugars_value': instance.sugarsValue,
      'calcium': instance.calcium,
      'calcium_100g': instance.calcium100G,
      'calcium_label': instance.calciumLabel,
      'calcium_serving': instance.calciumServing,
      'calcium_unit': instance.calciumUnit,
      'calcium_value': instance.calciumValue,
      'fat_label': instance.fatLabel,
      'nova-group': instance.novaGroup,
      'nova-group_100g': instance.novaGroup100G,
      'nova-group_serving': instance.novaGroupServing,
    };
