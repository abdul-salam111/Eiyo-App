// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetAllProductsModel _$GetAllProductsModelFromJson(Map<String, dynamic> json) =>
    _GetAllProductsModel(
      count: const IntConverter().fromJson(json['count']),
      page: const IntConverter().fromJson(json['page']),
      pageCount: const IntConverter().fromJson(json['page_count']),
      pageSize: const IntConverter().fromJson(json['page_size']),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      skip: const IntConverter().fromJson(json['skip']),
    );

Map<String, dynamic> _$GetAllProductsModelToJson(
  _GetAllProductsModel instance,
) => <String, dynamic>{
  'count': const IntConverter().toJson(instance.count),
  'page': const IntConverter().toJson(instance.page),
  'page_count': const IntConverter().toJson(instance.pageCount),
  'page_size': const IntConverter().toJson(instance.pageSize),
  'products': instance.products,
  'skip': const IntConverter().toJson(instance.skip),
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
  nutriscoreScore: const IntConverter().fromJson(json['nutriscore_score']),
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
  'nutriscore_score': const IntConverter().toJson(instance.nutriscoreScore),
  'product_name': instance.productName,
  'quantity': instance.quantity,
};

_Nutriments _$NutrimentsFromJson(Map<String, dynamic> json) => _Nutriments(
  carbohydrates: const NumConverter().fromJson(json['carbohydrates']),
  carbohydrates100G: const NumConverter().fromJson(json['carbohydrates_100g']),
  carbohydratesServing: const NumConverter().fromJson(
    json['carbohydrates_serving'],
  ),
  carbohydratesUnit: json['carbohydrates_unit'] as String?,
  carbohydratesValue: const NumConverter().fromJson(
    json['carbohydrates_value'],
  ),
  energy: const NumConverter().fromJson(json['energy']),
  energyKcal: const NumConverter().fromJson(json['energy-kcal']),
  energyKcal100G: const NumConverter().fromJson(json['energy-kcal_100g']),
  energyKcalServing: const NumConverter().fromJson(json['energy-kcal_serving']),
  energyKcalUnit: json['energy-kcal_unit'] as String?,
  energyKcalValue: const NumConverter().fromJson(json['energy-kcal_value']),
  energyKcalValueComputed: const NumConverter().fromJson(
    json['energy-kcal_value_computed'],
  ),
  energyKj: const NumConverter().fromJson(json['energy-kj']),
  energyKj100G: const NumConverter().fromJson(json['energy-kj_100g']),
  energyKjServing: const NumConverter().fromJson(json['energy-kj_serving']),
  energyKjUnit: json['energy-kj_unit'] as String?,
  energyKjValue: const NumConverter().fromJson(json['energy-kj_value']),
  energyKjValueComputed: const NumConverter().fromJson(
    json['energy-kj_value_computed'],
  ),
  energy100G: const NumConverter().fromJson(json['energy_100g']),
  energyServing: const NumConverter().fromJson(json['energy_serving']),
  energyUnit: json['energy_unit'] as String?,
  energyValue: const NumConverter().fromJson(json['energy_value']),
  fat: const NumConverter().fromJson(json['fat']),
  fat100G: const NumConverter().fromJson(json['fat_100g']),
  fatServing: const NumConverter().fromJson(json['fat_serving']),
  fatUnit: json['fat_unit'] as String?,
  fatValue: const NumConverter().fromJson(json['fat_value']),
  fiber: const NumConverter().fromJson(json['fiber']),
  fiber100G: const NumConverter().fromJson(json['fiber_100g']),
  fiberServing: const NumConverter().fromJson(json['fiber_serving']),
  fiberUnit: json['fiber_unit'] as String?,
  fiberValue: const NumConverter().fromJson(json['fiber_value']),
  fruitsVegetablesLegumesEstimateFromIngredients100G: const NumConverter()
      .fromJson(
        json['fruits-vegetables-legumes-estimate-from-ingredients_100g'],
      ),
  fruitsVegetablesLegumesEstimateFromIngredientsServing: const NumConverter()
      .fromJson(
        json['fruits-vegetables-legumes-estimate-from-ingredients_serving'],
      ),
  fruitsVegetablesNutsEstimateFromIngredients100G: const NumConverter()
      .fromJson(json['fruits-vegetables-nuts-estimate-from-ingredients_100g']),
  fruitsVegetablesNutsEstimateFromIngredientsServing: const NumConverter()
      .fromJson(
        json['fruits-vegetables-nuts-estimate-from-ingredients_serving'],
      ),
  nutritionScoreFr: const IntConverter().fromJson(json['nutrition-score-fr']),
  nutritionScoreFr100G: const IntConverter().fromJson(
    json['nutrition-score-fr_100g'],
  ),
  proteins: const NumConverter().fromJson(json['proteins']),
  proteins100G: const NumConverter().fromJson(json['proteins_100g']),
  proteinsServing: const NumConverter().fromJson(json['proteins_serving']),
  proteinsUnit: json['proteins_unit'] as String?,
  proteinsValue: const NumConverter().fromJson(json['proteins_value']),
  salt: const NumConverter().fromJson(json['salt']),
  salt100G: const NumConverter().fromJson(json['salt_100g']),
  saltServing: const NumConverter().fromJson(json['salt_serving']),
  saltUnit: json['salt_unit'] as String?,
  saltValue: const NumConverter().fromJson(json['salt_value']),
  saturatedFat: const NumConverter().fromJson(json['saturated-fat']),
  saturatedFat100G: const NumConverter().fromJson(json['saturated-fat_100g']),
  saturatedFatServing: const NumConverter().fromJson(
    json['saturated-fat_serving'],
  ),
  saturatedFatUnit: json['saturated-fat_unit'] as String?,
  saturatedFatValue: const NumConverter().fromJson(json['saturated-fat_value']),
  sodium: const NumConverter().fromJson(json['sodium']),
  sodium100G: const NumConverter().fromJson(json['sodium_100g']),
  sodiumServing: const NumConverter().fromJson(json['sodium_serving']),
  sodiumUnit: json['sodium_unit'] as String?,
  sodiumValue: const NumConverter().fromJson(json['sodium_value']),
  sugars: const NumConverter().fromJson(json['sugars']),
  sugars100G: const NumConverter().fromJson(json['sugars_100g']),
  sugarsServing: const NumConverter().fromJson(json['sugars_serving']),
  sugarsUnit: json['sugars_unit'] as String?,
  sugarsValue: const NumConverter().fromJson(json['sugars_value']),
  calcium: const NumConverter().fromJson(json['calcium']),
  calcium100G: const NumConverter().fromJson(json['calcium_100g']),
  calciumLabel: json['calcium_label'] as String?,
  calciumServing: const NumConverter().fromJson(json['calcium_serving']),
  calciumUnit: json['calcium_unit'] as String?,
  calciumValue: const NumConverter().fromJson(json['calcium_value']),
  fatLabel: json['fat_label'] as String?,
  novaGroup: const IntConverter().fromJson(json['nova-group']),
  novaGroup100G: const IntConverter().fromJson(json['nova-group_100g']),
  novaGroupServing: const IntConverter().fromJson(json['nova-group_serving']),
);

Map<String, dynamic> _$NutrimentsToJson(
  _Nutriments instance,
) => <String, dynamic>{
  'carbohydrates': const NumConverter().toJson(instance.carbohydrates),
  'carbohydrates_100g': const NumConverter().toJson(instance.carbohydrates100G),
  'carbohydrates_serving': const NumConverter().toJson(
    instance.carbohydratesServing,
  ),
  'carbohydrates_unit': instance.carbohydratesUnit,
  'carbohydrates_value': const NumConverter().toJson(
    instance.carbohydratesValue,
  ),
  'energy': const NumConverter().toJson(instance.energy),
  'energy-kcal': const NumConverter().toJson(instance.energyKcal),
  'energy-kcal_100g': const NumConverter().toJson(instance.energyKcal100G),
  'energy-kcal_serving': const NumConverter().toJson(
    instance.energyKcalServing,
  ),
  'energy-kcal_unit': instance.energyKcalUnit,
  'energy-kcal_value': const NumConverter().toJson(instance.energyKcalValue),
  'energy-kcal_value_computed': const NumConverter().toJson(
    instance.energyKcalValueComputed,
  ),
  'energy-kj': const NumConverter().toJson(instance.energyKj),
  'energy-kj_100g': const NumConverter().toJson(instance.energyKj100G),
  'energy-kj_serving': const NumConverter().toJson(instance.energyKjServing),
  'energy-kj_unit': instance.energyKjUnit,
  'energy-kj_value': const NumConverter().toJson(instance.energyKjValue),
  'energy-kj_value_computed': const NumConverter().toJson(
    instance.energyKjValueComputed,
  ),
  'energy_100g': const NumConverter().toJson(instance.energy100G),
  'energy_serving': const NumConverter().toJson(instance.energyServing),
  'energy_unit': instance.energyUnit,
  'energy_value': const NumConverter().toJson(instance.energyValue),
  'fat': const NumConverter().toJson(instance.fat),
  'fat_100g': const NumConverter().toJson(instance.fat100G),
  'fat_serving': const NumConverter().toJson(instance.fatServing),
  'fat_unit': instance.fatUnit,
  'fat_value': const NumConverter().toJson(instance.fatValue),
  'fiber': const NumConverter().toJson(instance.fiber),
  'fiber_100g': const NumConverter().toJson(instance.fiber100G),
  'fiber_serving': const NumConverter().toJson(instance.fiberServing),
  'fiber_unit': instance.fiberUnit,
  'fiber_value': const NumConverter().toJson(instance.fiberValue),
  'fruits-vegetables-legumes-estimate-from-ingredients_100g':
      const NumConverter().toJson(
        instance.fruitsVegetablesLegumesEstimateFromIngredients100G,
      ),
  'fruits-vegetables-legumes-estimate-from-ingredients_serving':
      const NumConverter().toJson(
        instance.fruitsVegetablesLegumesEstimateFromIngredientsServing,
      ),
  'fruits-vegetables-nuts-estimate-from-ingredients_100g': const NumConverter()
      .toJson(instance.fruitsVegetablesNutsEstimateFromIngredients100G),
  'fruits-vegetables-nuts-estimate-from-ingredients_serving':
      const NumConverter().toJson(
        instance.fruitsVegetablesNutsEstimateFromIngredientsServing,
      ),
  'nutrition-score-fr': const IntConverter().toJson(instance.nutritionScoreFr),
  'nutrition-score-fr_100g': const IntConverter().toJson(
    instance.nutritionScoreFr100G,
  ),
  'proteins': const NumConverter().toJson(instance.proteins),
  'proteins_100g': const NumConverter().toJson(instance.proteins100G),
  'proteins_serving': const NumConverter().toJson(instance.proteinsServing),
  'proteins_unit': instance.proteinsUnit,
  'proteins_value': const NumConverter().toJson(instance.proteinsValue),
  'salt': const NumConverter().toJson(instance.salt),
  'salt_100g': const NumConverter().toJson(instance.salt100G),
  'salt_serving': const NumConverter().toJson(instance.saltServing),
  'salt_unit': instance.saltUnit,
  'salt_value': const NumConverter().toJson(instance.saltValue),
  'saturated-fat': const NumConverter().toJson(instance.saturatedFat),
  'saturated-fat_100g': const NumConverter().toJson(instance.saturatedFat100G),
  'saturated-fat_serving': const NumConverter().toJson(
    instance.saturatedFatServing,
  ),
  'saturated-fat_unit': instance.saturatedFatUnit,
  'saturated-fat_value': const NumConverter().toJson(
    instance.saturatedFatValue,
  ),
  'sodium': const NumConverter().toJson(instance.sodium),
  'sodium_100g': const NumConverter().toJson(instance.sodium100G),
  'sodium_serving': const NumConverter().toJson(instance.sodiumServing),
  'sodium_unit': instance.sodiumUnit,
  'sodium_value': const NumConverter().toJson(instance.sodiumValue),
  'sugars': const NumConverter().toJson(instance.sugars),
  'sugars_100g': const NumConverter().toJson(instance.sugars100G),
  'sugars_serving': const NumConverter().toJson(instance.sugarsServing),
  'sugars_unit': instance.sugarsUnit,
  'sugars_value': const NumConverter().toJson(instance.sugarsValue),
  'calcium': const NumConverter().toJson(instance.calcium),
  'calcium_100g': const NumConverter().toJson(instance.calcium100G),
  'calcium_label': instance.calciumLabel,
  'calcium_serving': const NumConverter().toJson(instance.calciumServing),
  'calcium_unit': instance.calciumUnit,
  'calcium_value': const NumConverter().toJson(instance.calciumValue),
  'fat_label': instance.fatLabel,
  'nova-group': const IntConverter().toJson(instance.novaGroup),
  'nova-group_100g': const IntConverter().toJson(instance.novaGroup100G),
  'nova-group_serving': const IntConverter().toJson(instance.novaGroupServing),
};
