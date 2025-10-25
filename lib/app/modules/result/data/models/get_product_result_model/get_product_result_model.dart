import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_product_result_model.freezed.dart';
part 'get_product_result_model.g.dart';

GetProductResultModel getProductResultModelFromJson(String str) => GetProductResultModel.fromJson(json.decode(str));

String getProductResultModelToJson(GetProductResultModel data) => json.encode(data.toJson());

@freezed
abstract class GetProductResultModel with _$GetProductResultModel {
  const factory GetProductResultModel({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "product") Product? product,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "status_verbose") String? statusVerbose,
  }) = _GetProductResultModel;

  factory GetProductResultModel.fromJson(Map<String, dynamic> json) =>
      _$GetProductResultModelFromJson(json);
}

@freezed
abstract class Product with _$Product {
  const factory Product({
    @JsonKey(name: "brands") String? brands,
    @JsonKey(name: "categories") String? categories,
    @JsonKey(name: "categories_tags") List<String>? categoriesTags,
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "image_front_small_url") String? imageFrontSmallUrl,
    @JsonKey(name: "ingredients_text") String? ingredientsText,
    @JsonKey(name: "nutrient_levels_tags") List<String>? nutrientLevelsTags,
    @JsonKey(name: "nutriments") Nutriments? nutriments,
    @JsonKey(name: "nutriscore_grade") String? nutriscoreGrade,
    @JsonKey(name: "nutriscore_score") int? nutriscoreScore,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "quantity") String? quantity,
    @JsonKey(name: "additives_n") int? additivesN,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
abstract class Nutriments with _$Nutriments {
  const factory Nutriments({
    // Basic nutrients
    @JsonKey(name: "fat") double? fat,
    @JsonKey(name: "fiber") double? fiber,
    @JsonKey(name: "salt") double? salt,
    @JsonKey(name: "saturated-fat") double? saturatedFat,
    @JsonKey(name: "sodium") double? sodium,
    @JsonKey(name: "sugars") double? sugars,
    @JsonKey(name: "energy-kcal") double? energyKcal,
    @JsonKey(name: "proteins") double? proteins,
    @JsonKey(name: "carbohydrates") double? carbohydrates,

    // Per 100g values
    @JsonKey(name: "fat_100g") double? fat100g,
    @JsonKey(name: "fiber_100g") double? fiber100g,
    @JsonKey(name: "salt_100g") double? salt100g,
    @JsonKey(name: "saturated-fat_100g") double? saturatedFat100g,
    @JsonKey(name: "sodium_100g") double? sodium100g,
    @JsonKey(name: "sugars_100g") double? sugars100g,
    @JsonKey(name: "energy-kcal_100g") double? energyKcal100g,
    @JsonKey(name: "proteins_100g") double? proteins100g,
    @JsonKey(name: "carbohydrates_100g") double? carbohydrates100g,

    // Serving values
    @JsonKey(name: "fat_serving") double? fatServing,
    @JsonKey(name: "fiber_serving") double? fiberServing,
    @JsonKey(name: "salt_serving") double? saltServing,
    @JsonKey(name: "saturated-fat_serving") double? saturatedFatServing,
    @JsonKey(name: "sodium_serving") double? sodiumServing,
    @JsonKey(name: "sugars_serving") double? sugarsServing,
    @JsonKey(name: "energy-kcal_serving") double? energyKcalServing,
    @JsonKey(name: "proteins_serving") double? proteinsServing,
    @JsonKey(name: "carbohydrates_serving") double? carbohydratesServing,

    // Unit values
    @JsonKey(name: "fat_unit") String? fatUnit,
    @JsonKey(name: "fiber_unit") String? fiberUnit,
    @JsonKey(name: "salt_unit") String? saltUnit,
    @JsonKey(name: "saturated-fat_unit") String? saturatedFatUnit,
    @JsonKey(name: "sodium_unit") String? sodiumUnit,
    @JsonKey(name: "sugars_unit") String? sugarsUnit,
    @JsonKey(name: "energy-kcal_unit") String? energyKcalUnit,
    @JsonKey(name: "proteins_unit") String? proteinsUnit,
    @JsonKey(name: "carbohydrates_unit") String? carbohydratesUnit,

    // Value fields
    @JsonKey(name: "fat_value") double? fatValue,
    @JsonKey(name: "fiber_value") double? fiberValue,
    @JsonKey(name: "salt_value") double? saltValue,
    @JsonKey(name: "saturated-fat_value") double? saturatedFatValue,
    @JsonKey(name: "sodium_value") double? sodiumValue,
    @JsonKey(name: "sugars_value") double? sugarsValue,
    @JsonKey(name: "energy-kcal_value") double? energyKcalValue,
    @JsonKey(name: "proteins_value") double? proteinsValue,
    @JsonKey(name: "carbohydrates_value") double? carbohydratesValue,

    // Energy fields
    @JsonKey(name: "energy") int? energy,
    @JsonKey(name: "energy_100g") int? energy100g,
    @JsonKey(name: "energy_serving") int? energyServing,
    @JsonKey(name: "energy_unit") String? energyUnit,
    @JsonKey(name: "energy_value") int? energyValue,
    @JsonKey(name: "energy-kj") int? energyKj,
    @JsonKey(name: "energy-kj_100g") int? energyKj100g,
    @JsonKey(name: "energy-kj_serving") int? energyKjServing,
    @JsonKey(name: "energy-kj_unit") String? energyKjUnit,
    @JsonKey(name: "energy-kj_value") int? energyKjValue,
    @JsonKey(name: "energy-kcal_value_computed") double? energyKcalValueComputed,
    @JsonKey(name: "energy-kj_value_computed") double? energyKjValueComputed,

    // Fruits and vegetables estimates
    @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g") int? fruitsVegetablesLegumesEstimateFromIngredients100g,
    @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving") int? fruitsVegetablesLegumesEstimateFromIngredientsServing,
    @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g") int? fruitsVegetablesNutsEstimateFromIngredients100g,
    @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving") int? fruitsVegetablesNutsEstimateFromIngredientsServing,

    // Nutrition scores
    @JsonKey(name: "nutrition-score-fr") int? nutritionScoreFr,
    @JsonKey(name: "nutrition-score-fr_100g") int? nutritionScoreFr100g,

    // NOVA groups
    @JsonKey(name: "nova-group") int? novaGroup,
    @JsonKey(name: "nova-group_100g") int? novaGroup100g,
    @JsonKey(name: "nova-group_serving") int? novaGroupServing,

    // Additional nutrients
    @JsonKey(name: "calcium") double? calcium,
    @JsonKey(name: "calcium_100g") double? calcium100g,
    @JsonKey(name: "calcium_serving") double? calciumServing,
    @JsonKey(name: "calcium_unit") String? calciumUnit,
    @JsonKey(name: "calcium_value") double? calciumValue,
    @JsonKey(name: "calcium_label") String? calciumLabel,
    @JsonKey(name: "fat_label") String? fatLabel,
  }) = _Nutriments;

  factory Nutriments.fromJson(Map<String, dynamic> json) =>
      _$NutrimentsFromJson(json);
}