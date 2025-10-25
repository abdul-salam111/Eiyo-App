// To parse this JSON data, do
//
//     final getAllProductsModel = getAllProductsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_all_products_model.freezed.dart';
part 'get_all_products_model.g.dart';

GetAllProductsModel getAllProductsModelFromJson(String str) => GetAllProductsModel.fromJson(json.decode(str));

String getAllProductsModelToJson(GetAllProductsModel data) => json.encode(data.toJson());

@freezed
abstract class GetAllProductsModel with _$GetAllProductsModel {
    const factory GetAllProductsModel({
        @JsonKey(name: "count")
        int? count,
        @JsonKey(name: "page")
        int? page,
        @JsonKey(name: "page_count")
        int? pageCount,
        @JsonKey(name: "page_size")
        int? pageSize,
        @JsonKey(name: "products")
        List<Product>? products,
        @JsonKey(name: "skip")
        int? skip,
    }) = _GetAllProductsModel;

    factory GetAllProductsModel.fromJson(Map<String, dynamic> json) => _$GetAllProductsModelFromJson(json);
}

@freezed
abstract class Product with _$Product {
    const factory Product({
        @JsonKey(name: "brands")
        String? brands,
        @JsonKey(name: "categories")
        String? categories,
        @JsonKey(name: "categories_tags")
        List<String>? categoriesTags,
        @JsonKey(name: "code")
        String? code,
        @JsonKey(name: "image_front_small_url")
        String? imageFrontSmallUrl,
        @JsonKey(name: "ingredients_text")
        String? ingredientsText,
        @JsonKey(name: "nutriments")
        Nutriments? nutriments,
        @JsonKey(name: "nutriscore_grade")
        String? nutriscoreGrade,
        @JsonKey(name: "nutriscore_score")
        int? nutriscoreScore,
        @JsonKey(name: "product_name")
        String? productName,
        @JsonKey(name: "quantity")
        String? quantity,
    }) = _Product;

    factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
abstract class Nutriments with _$Nutriments {
    const factory Nutriments({
        @JsonKey(name: "carbohydrates")
        double? carbohydrates,
        @JsonKey(name: "carbohydrates_100g")
        double? carbohydrates100G,
        @JsonKey(name: "carbohydrates_serving")
        double? carbohydratesServing,
        @JsonKey(name: "carbohydrates_unit")
        String? carbohydratesUnit,
        @JsonKey(name: "carbohydrates_value")
        double? carbohydratesValue,
        @JsonKey(name: "energy")
        int? energy,
        @JsonKey(name: "energy-kcal")
        int? energyKcal,
        @JsonKey(name: "energy-kcal_100g")
        int? energyKcal100G,
        @JsonKey(name: "energy-kcal_serving")
        int? energyKcalServing,
        @JsonKey(name: "energy-kcal_unit")
        String? energyKcalUnit,
        @JsonKey(name: "energy-kcal_value")
        int? energyKcalValue,
        @JsonKey(name: "energy-kcal_value_computed")
        double? energyKcalValueComputed,
        @JsonKey(name: "energy-kj")
        int? energyKj,
        @JsonKey(name: "energy-kj_100g")
        int? energyKj100G,
        @JsonKey(name: "energy-kj_serving")
        int? energyKjServing,
        @JsonKey(name: "energy-kj_unit")
        String? energyKjUnit,
        @JsonKey(name: "energy-kj_value")
        int? energyKjValue,
        @JsonKey(name: "energy-kj_value_computed")
        double? energyKjValueComputed,
        @JsonKey(name: "energy_100g")
        int? energy100G,
        @JsonKey(name: "energy_serving")
        int? energyServing,
        @JsonKey(name: "energy_unit")
        String? energyUnit,
        @JsonKey(name: "energy_value")
        int? energyValue,
        @JsonKey(name: "fat")
        int? fat,
        @JsonKey(name: "fat_100g")
        int? fat100G,
        @JsonKey(name: "fat_serving")
        int? fatServing,
        @JsonKey(name: "fat_unit")
        String? fatUnit,
        @JsonKey(name: "fat_value")
        int? fatValue,
        @JsonKey(name: "fiber")
        int? fiber,
        @JsonKey(name: "fiber_100g")
        int? fiber100G,
        @JsonKey(name: "fiber_serving")
        int? fiberServing,
        @JsonKey(name: "fiber_unit")
        String? fiberUnit,
        @JsonKey(name: "fiber_value")
        int? fiberValue,
        @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g")
        int? fruitsVegetablesLegumesEstimateFromIngredients100G,
        @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_serving")
        int? fruitsVegetablesLegumesEstimateFromIngredientsServing,
        @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g")
        int? fruitsVegetablesNutsEstimateFromIngredients100G,
        @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving")
        int? fruitsVegetablesNutsEstimateFromIngredientsServing,
        @JsonKey(name: "nutrition-score-fr")
        int? nutritionScoreFr,
        @JsonKey(name: "nutrition-score-fr_100g")
        int? nutritionScoreFr100G,
        @JsonKey(name: "proteins")
        int? proteins,
        @JsonKey(name: "proteins_100g")
        int? proteins100G,
        @JsonKey(name: "proteins_serving")
        int? proteinsServing,
        @JsonKey(name: "proteins_unit")
        String? proteinsUnit,
        @JsonKey(name: "proteins_value")
        int? proteinsValue,
        @JsonKey(name: "salt")
        int? salt,
        @JsonKey(name: "salt_100g")
        int? salt100G,
        @JsonKey(name: "salt_serving")
        int? saltServing,
        @JsonKey(name: "salt_unit")
        String? saltUnit,
        @JsonKey(name: "salt_value")
        int? saltValue,
        @JsonKey(name: "saturated-fat")
        int? saturatedFat,
        @JsonKey(name: "saturated-fat_100g")
        int? saturatedFat100G,
        @JsonKey(name: "saturated-fat_serving")
        int? saturatedFatServing,
        @JsonKey(name: "saturated-fat_unit")
        String? saturatedFatUnit,
        @JsonKey(name: "saturated-fat_value")
        int? saturatedFatValue,
        @JsonKey(name: "sodium")
        int? sodium,
        @JsonKey(name: "sodium_100g")
        int? sodium100G,
        @JsonKey(name: "sodium_serving")
        int? sodiumServing,
        @JsonKey(name: "sodium_unit")
        String? sodiumUnit,
        @JsonKey(name: "sodium_value")
        int? sodiumValue,
        @JsonKey(name: "sugars")
        int? sugars,
        @JsonKey(name: "sugars_100g")
        double? sugars100G,
        @JsonKey(name: "sugars_serving")
        int? sugarsServing,
        @JsonKey(name: "sugars_unit")
        String? sugarsUnit,
        @JsonKey(name: "sugars_value")
        int? sugarsValue,
        @JsonKey(name: "calcium")
        double? calcium,
        @JsonKey(name: "calcium_100g")
        double? calcium100G,
        @JsonKey(name: "calcium_label")
        String? calciumLabel,
        @JsonKey(name: "calcium_serving")
        double? calciumServing,
        @JsonKey(name: "calcium_unit")
        String? calciumUnit,
        @JsonKey(name: "calcium_value")
        double? calciumValue,
        @JsonKey(name: "fat_label")
        String? fatLabel,
        @JsonKey(name: "nova-group")
        int? novaGroup,
        @JsonKey(name: "nova-group_100g")
        int? novaGroup100G,
        @JsonKey(name: "nova-group_serving")
        int? novaGroupServing,
    }) = _Nutriments;

    factory Nutriments.fromJson(Map<String, dynamic> json) => _$NutrimentsFromJson(json);
}
