// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetProductResultModel _$GetProductResultModelFromJson(
  Map<String, dynamic> json,
) => _GetProductResultModel(
  code: json['code'] as String?,
  product: json['product'] == null
      ? null
      : Product.fromJson(json['product'] as Map<String, dynamic>),
  status: (json['status'] as num?)?.toInt(),
  statusVerbose: json['status_verbose'] as String?,
);

Map<String, dynamic> _$GetProductResultModelToJson(
  _GetProductResultModel instance,
) => <String, dynamic>{
  'code': instance.code,
  'product': instance.product,
  'status': instance.status,
  'status_verbose': instance.statusVerbose,
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
  nutrientLevelsTags: (json['nutrient_levels_tags'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  nutriments: json['nutriments'] == null
      ? null
      : Nutriments.fromJson(json['nutriments'] as Map<String, dynamic>),
  nutriscoreGrade: json['nutriscore_grade'] as String?,
  nutriscoreScore: (json['nutriscore_score'] as num?)?.toInt(),
  productName: json['product_name'] as String?,
  quantity: json['quantity'] as String?,
  additivesN: (json['additives_n'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'brands': instance.brands,
  'categories': instance.categories,
  'categories_tags': instance.categoriesTags,
  'code': instance.code,
  'image_front_small_url': instance.imageFrontSmallUrl,
  'ingredients_text': instance.ingredientsText,
  'nutrient_levels_tags': instance.nutrientLevelsTags,
  'nutriments': instance.nutriments,
  'nutriscore_grade': instance.nutriscoreGrade,
  'nutriscore_score': instance.nutriscoreScore,
  'product_name': instance.productName,
  'quantity': instance.quantity,
  'additives_n': instance.additivesN,
};

_Nutriments _$NutrimentsFromJson(Map<String, dynamic> json) => _Nutriments(
  fat: (json['fat'] as num?)?.toDouble(),
  fiber: (json['fiber'] as num?)?.toDouble(),
  salt: (json['salt'] as num?)?.toDouble(),
  saturatedFat: (json['saturated-fat'] as num?)?.toDouble(),
  sodium: (json['sodium'] as num?)?.toDouble(),
  sugars: (json['sugars'] as num?)?.toDouble(),
  energyKcal: (json['energy-kcal'] as num?)?.toDouble(),
  proteins: (json['proteins'] as num?)?.toDouble(),
  carbohydrates: (json['carbohydrates'] as num?)?.toDouble(),
  fat100g: (json['fat_100g'] as num?)?.toDouble(),
  fiber100g: (json['fiber_100g'] as num?)?.toDouble(),
  salt100g: (json['salt_100g'] as num?)?.toDouble(),
  saturatedFat100g: (json['saturated-fat_100g'] as num?)?.toDouble(),
  sodium100g: (json['sodium_100g'] as num?)?.toDouble(),
  sugars100g: (json['sugars_100g'] as num?)?.toDouble(),
  energyKcal100g: (json['energy-kcal_100g'] as num?)?.toDouble(),
  proteins100g: (json['proteins_100g'] as num?)?.toDouble(),
  carbohydrates100g: (json['carbohydrates_100g'] as num?)?.toDouble(),
  fatServing: (json['fat_serving'] as num?)?.toDouble(),
  fiberServing: (json['fiber_serving'] as num?)?.toDouble(),
  saltServing: (json['salt_serving'] as num?)?.toDouble(),
  saturatedFatServing: (json['saturated-fat_serving'] as num?)?.toDouble(),
  sodiumServing: (json['sodium_serving'] as num?)?.toDouble(),
  sugarsServing: (json['sugars_serving'] as num?)?.toDouble(),
  energyKcalServing: (json['energy-kcal_serving'] as num?)?.toDouble(),
  proteinsServing: (json['proteins_serving'] as num?)?.toDouble(),
  carbohydratesServing: (json['carbohydrates_serving'] as num?)?.toDouble(),
  fatUnit: json['fat_unit'] as String?,
  fiberUnit: json['fiber_unit'] as String?,
  saltUnit: json['salt_unit'] as String?,
  saturatedFatUnit: json['saturated-fat_unit'] as String?,
  sodiumUnit: json['sodium_unit'] as String?,
  sugarsUnit: json['sugars_unit'] as String?,
  energyKcalUnit: json['energy-kcal_unit'] as String?,
  proteinsUnit: json['proteins_unit'] as String?,
  carbohydratesUnit: json['carbohydrates_unit'] as String?,
  fatValue: (json['fat_value'] as num?)?.toDouble(),
  fiberValue: (json['fiber_value'] as num?)?.toDouble(),
  saltValue: (json['salt_value'] as num?)?.toDouble(),
  saturatedFatValue: (json['saturated-fat_value'] as num?)?.toDouble(),
  sodiumValue: (json['sodium_value'] as num?)?.toDouble(),
  sugarsValue: (json['sugars_value'] as num?)?.toDouble(),
  energyKcalValue: (json['energy-kcal_value'] as num?)?.toDouble(),
  proteinsValue: (json['proteins_value'] as num?)?.toDouble(),
  carbohydratesValue: (json['carbohydrates_value'] as num?)?.toDouble(),
  energy: (json['energy'] as num?)?.toInt(),
  energy100g: (json['energy_100g'] as num?)?.toInt(),
  energyServing: (json['energy_serving'] as num?)?.toInt(),
  energyUnit: json['energy_unit'] as String?,
  energyValue: (json['energy_value'] as num?)?.toInt(),
  energyKj: (json['energy-kj'] as num?)?.toInt(),
  energyKj100g: (json['energy-kj_100g'] as num?)?.toInt(),
  energyKjServing: (json['energy-kj_serving'] as num?)?.toInt(),
  energyKjUnit: json['energy-kj_unit'] as String?,
  energyKjValue: (json['energy-kj_value'] as num?)?.toInt(),
  energyKcalValueComputed: (json['energy-kcal_value_computed'] as num?)
      ?.toDouble(),
  energyKjValueComputed: (json['energy-kj_value_computed'] as num?)?.toDouble(),
  fruitsVegetablesLegumesEstimateFromIngredients100g:
      (json['fruits-vegetables-legumes-estimate-from-ingredients_100g'] as num?)
          ?.toInt(),
  fruitsVegetablesLegumesEstimateFromIngredientsServing:
      (json['fruits-vegetables-legumes-estimate-from-ingredients_serving']
              as num?)
          ?.toInt(),
  fruitsVegetablesNutsEstimateFromIngredients100g:
      (json['fruits-vegetables-nuts-estimate-from-ingredients_100g'] as num?)
          ?.toInt(),
  fruitsVegetablesNutsEstimateFromIngredientsServing:
      (json['fruits-vegetables-nuts-estimate-from-ingredients_serving'] as num?)
          ?.toInt(),
  nutritionScoreFr: (json['nutrition-score-fr'] as num?)?.toInt(),
  nutritionScoreFr100g: (json['nutrition-score-fr_100g'] as num?)?.toInt(),
  novaGroup: (json['nova-group'] as num?)?.toInt(),
  novaGroup100g: (json['nova-group_100g'] as num?)?.toInt(),
  novaGroupServing: (json['nova-group_serving'] as num?)?.toInt(),
  calcium: (json['calcium'] as num?)?.toDouble(),
  calcium100g: (json['calcium_100g'] as num?)?.toDouble(),
  calciumServing: (json['calcium_serving'] as num?)?.toDouble(),
  calciumUnit: json['calcium_unit'] as String?,
  calciumValue: (json['calcium_value'] as num?)?.toDouble(),
  calciumLabel: json['calcium_label'] as String?,
  fatLabel: json['fat_label'] as String?,
);

Map<String, dynamic> _$NutrimentsToJson(_Nutriments instance) =>
    <String, dynamic>{
      'fat': instance.fat,
      'fiber': instance.fiber,
      'salt': instance.salt,
      'saturated-fat': instance.saturatedFat,
      'sodium': instance.sodium,
      'sugars': instance.sugars,
      'energy-kcal': instance.energyKcal,
      'proteins': instance.proteins,
      'carbohydrates': instance.carbohydrates,
      'fat_100g': instance.fat100g,
      'fiber_100g': instance.fiber100g,
      'salt_100g': instance.salt100g,
      'saturated-fat_100g': instance.saturatedFat100g,
      'sodium_100g': instance.sodium100g,
      'sugars_100g': instance.sugars100g,
      'energy-kcal_100g': instance.energyKcal100g,
      'proteins_100g': instance.proteins100g,
      'carbohydrates_100g': instance.carbohydrates100g,
      'fat_serving': instance.fatServing,
      'fiber_serving': instance.fiberServing,
      'salt_serving': instance.saltServing,
      'saturated-fat_serving': instance.saturatedFatServing,
      'sodium_serving': instance.sodiumServing,
      'sugars_serving': instance.sugarsServing,
      'energy-kcal_serving': instance.energyKcalServing,
      'proteins_serving': instance.proteinsServing,
      'carbohydrates_serving': instance.carbohydratesServing,
      'fat_unit': instance.fatUnit,
      'fiber_unit': instance.fiberUnit,
      'salt_unit': instance.saltUnit,
      'saturated-fat_unit': instance.saturatedFatUnit,
      'sodium_unit': instance.sodiumUnit,
      'sugars_unit': instance.sugarsUnit,
      'energy-kcal_unit': instance.energyKcalUnit,
      'proteins_unit': instance.proteinsUnit,
      'carbohydrates_unit': instance.carbohydratesUnit,
      'fat_value': instance.fatValue,
      'fiber_value': instance.fiberValue,
      'salt_value': instance.saltValue,
      'saturated-fat_value': instance.saturatedFatValue,
      'sodium_value': instance.sodiumValue,
      'sugars_value': instance.sugarsValue,
      'energy-kcal_value': instance.energyKcalValue,
      'proteins_value': instance.proteinsValue,
      'carbohydrates_value': instance.carbohydratesValue,
      'energy': instance.energy,
      'energy_100g': instance.energy100g,
      'energy_serving': instance.energyServing,
      'energy_unit': instance.energyUnit,
      'energy_value': instance.energyValue,
      'energy-kj': instance.energyKj,
      'energy-kj_100g': instance.energyKj100g,
      'energy-kj_serving': instance.energyKjServing,
      'energy-kj_unit': instance.energyKjUnit,
      'energy-kj_value': instance.energyKjValue,
      'energy-kcal_value_computed': instance.energyKcalValueComputed,
      'energy-kj_value_computed': instance.energyKjValueComputed,
      'fruits-vegetables-legumes-estimate-from-ingredients_100g':
          instance.fruitsVegetablesLegumesEstimateFromIngredients100g,
      'fruits-vegetables-legumes-estimate-from-ingredients_serving':
          instance.fruitsVegetablesLegumesEstimateFromIngredientsServing,
      'fruits-vegetables-nuts-estimate-from-ingredients_100g':
          instance.fruitsVegetablesNutsEstimateFromIngredients100g,
      'fruits-vegetables-nuts-estimate-from-ingredients_serving':
          instance.fruitsVegetablesNutsEstimateFromIngredientsServing,
      'nutrition-score-fr': instance.nutritionScoreFr,
      'nutrition-score-fr_100g': instance.nutritionScoreFr100g,
      'nova-group': instance.novaGroup,
      'nova-group_100g': instance.novaGroup100g,
      'nova-group_serving': instance.novaGroupServing,
      'calcium': instance.calcium,
      'calcium_100g': instance.calcium100g,
      'calcium_serving': instance.calciumServing,
      'calcium_unit': instance.calciumUnit,
      'calcium_value': instance.calciumValue,
      'calcium_label': instance.calciumLabel,
      'fat_label': instance.fatLabel,
    };
