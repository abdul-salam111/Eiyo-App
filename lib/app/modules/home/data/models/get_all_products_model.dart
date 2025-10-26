// To parse this JSON data, do
//
//     final getAllProductsModel = getAllProductsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_all_products_model.freezed.dart';
part 'get_all_products_model.g.dart';

// Custom converter for handling both string and number (for double fields)
class NumConverter implements JsonConverter<double?, dynamic> {
  const NumConverter();

  @override
  double? fromJson(dynamic value) {
    if (value == null) return null;
    if (value is num) return value.toDouble();
    if (value is String) {
      // Handle empty strings
      if (value.trim().isEmpty) return null;
      return double.tryParse(value);
    }
    return null;
  }

  @override
  dynamic toJson(double? value) => value;
}

// Custom converter for int fields
class IntConverter implements JsonConverter<int?, dynamic> {
  const IntConverter();

  @override
  int? fromJson(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    if (value is num) return value.toInt();
    if (value is String) {
      // Handle empty strings
      if (value.trim().isEmpty) return null;
      final parsed = int.tryParse(value);
      if (parsed != null) return parsed;
      // Try parsing as double first, then convert to int
      final doubleValue = double.tryParse(value);
      if (doubleValue != null) return doubleValue.toInt();
    }
    return null;
  }

  @override
  dynamic toJson(int? value) => value;
}

GetAllProductsModel getAllProductsModelFromJson(String str) {
  try {
    final jsonData = json.decode(str);
    // Deep process the entire JSON structure
    final processedJson = _preProcessJson(jsonData) as Map<String, dynamic>;
    return GetAllProductsModel.fromJson(processedJson);
  } catch (e) {
    print('❌ Error parsing JSON: $e');
    rethrow;
  }
}

String getAllProductsModelToJson(GetAllProductsModel data) =>
    json.encode(data.toJson());

// Helper function to convert string numbers to actual numbers
dynamic _preProcessJson(dynamic data) {
  if (data is Map) {
    final Map<String, dynamic> result = {};
    data.forEach((key, value) {
      final keyStr = key.toString();
      // Skip modifier fields entirely
      if (keyStr.endsWith('_modifier')) {
        return; // Don't include modifier fields
      }
      result[keyStr] = _preProcessJson(value);
    });
    return result;
  } else if (data is List) {
    return data.map(_preProcessJson).toList();
  } else if (data is String) {
    if (data.isEmpty) return data;

    // Try to parse as number
    final num? number = num.tryParse(data);
    if (number != null) {
      // Return int if it's a whole number, otherwise return double
      return number is int ? number : number.toDouble();
    }

    // Try to parse as boolean
    final lowerCase = data.toLowerCase();
    if (lowerCase == 'true') return true;
    if (lowerCase == 'false') return false;

    // Return as string if not a number or boolean
    return data;
  }
  // Return as-is for other types (numbers, booleans, null, etc.)
  return data;
}

@freezed
abstract class GetAllProductsModel with _$GetAllProductsModel {
  const factory GetAllProductsModel({
    @IntConverter() @JsonKey(name: "count") int? count,
    @IntConverter() @JsonKey(name: "page") int? page,
    @IntConverter() @JsonKey(name: "page_count") int? pageCount,
    @IntConverter() @JsonKey(name: "page_size") int? pageSize,
    @JsonKey(name: "products") List<Product>? products,
    @IntConverter() @JsonKey(name: "skip") int? skip,
  }) = _GetAllProductsModel;

  factory GetAllProductsModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductsModelFromJson(json);
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
    @JsonKey(name: "nutriments") Nutriments? nutriments,
    @JsonKey(name: "nutriscore_grade") String? nutriscoreGrade,
    @IntConverter()
    @JsonKey(name: "nutriscore_score")
    int? nutriscoreScore,
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "quantity") String? quantity,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
abstract class Nutriments with _$Nutriments {
  const factory Nutriments({
    @NumConverter() @JsonKey(name: "carbohydrates") double? carbohydrates,
    @NumConverter() @JsonKey(name: "carbohydrates_100g") double? carbohydrates100G,
    @NumConverter() @JsonKey(name: "carbohydrates_serving") double? carbohydratesServing,
    @JsonKey(name: "carbohydrates_unit") String? carbohydratesUnit,
    @NumConverter() @JsonKey(name: "carbohydrates_value") double? carbohydratesValue,
    @NumConverter() @JsonKey(name: "energy") double? energy,
    @NumConverter() @JsonKey(name: "energy-kcal") double? energyKcal,
    @NumConverter() @JsonKey(name: "energy-kcal_100g") double? energyKcal100G,
    @NumConverter() @JsonKey(name: "energy-kcal_serving") double? energyKcalServing,
    @JsonKey(name: "energy-kcal_unit") String? energyKcalUnit,
    @NumConverter() @JsonKey(name: "energy-kcal_value") double? energyKcalValue,
    @NumConverter()
    @JsonKey(name: "energy-kcal_value_computed")
    double? energyKcalValueComputed,
    @NumConverter() @JsonKey(name: "energy-kj") double? energyKj,
    @NumConverter() @JsonKey(name: "energy-kj_100g") double? energyKj100G,
    @NumConverter() @JsonKey(name: "energy-kj_serving") double? energyKjServing,
    @JsonKey(name: "energy-kj_unit") String? energyKjUnit,
    @NumConverter() @JsonKey(name: "energy-kj_value") double? energyKjValue,
    @NumConverter() @JsonKey(name: "energy-kj_value_computed") double? energyKjValueComputed,
    @NumConverter() @JsonKey(name: "energy_100g") double? energy100G,
    @NumConverter() @JsonKey(name: "energy_serving") double? energyServing,
    @JsonKey(name: "energy_unit") String? energyUnit,
    @NumConverter() @JsonKey(name: "energy_value") double? energyValue,
    @NumConverter() @JsonKey(name: "fat") double? fat,
    @NumConverter() @JsonKey(name: "fat_100g") double? fat100G,
    @NumConverter() @JsonKey(name: "fat_serving") double? fatServing,
    @JsonKey(name: "fat_unit") String? fatUnit,
    @NumConverter() @JsonKey(name: "fat_value") double? fatValue,
    @NumConverter() @JsonKey(name: "fiber") double? fiber,
    @NumConverter() @JsonKey(name: "fiber_100g") double? fiber100G,
    @NumConverter() @JsonKey(name: "fiber_serving") double? fiberServing,
    @JsonKey(name: "fiber_unit") String? fiberUnit,
    @NumConverter() @JsonKey(name: "fiber_value") double? fiberValue,
    @NumConverter()
    @JsonKey(name: "fruits-vegetables-legumes-estimate-from-ingredients_100g")
    double? fruitsVegetablesLegumesEstimateFromIngredients100G,
    @NumConverter()
    @JsonKey(
      name: "fruits-vegetables-legumes-estimate-from-ingredients_serving",
    )
    double? fruitsVegetablesLegumesEstimateFromIngredientsServing,
    @NumConverter()
    @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_100g")
    double? fruitsVegetablesNutsEstimateFromIngredients100G,
    @NumConverter()
    @JsonKey(name: "fruits-vegetables-nuts-estimate-from-ingredients_serving")
    double? fruitsVegetablesNutsEstimateFromIngredientsServing,
    @IntConverter() @JsonKey(name: "nutrition-score-fr") int? nutritionScoreFr,
    @IntConverter() @JsonKey(name: "nutrition-score-fr_100g") int? nutritionScoreFr100G,
    @NumConverter() @JsonKey(name: "proteins") double? proteins,
    @NumConverter() @JsonKey(name: "proteins_100g") double? proteins100G,
    @NumConverter() @JsonKey(name: "proteins_serving") double? proteinsServing,
    @JsonKey(name: "proteins_unit") String? proteinsUnit,
    @NumConverter() @JsonKey(name: "proteins_value") double? proteinsValue,
    @NumConverter() @JsonKey(name: "salt") double? salt,
    @NumConverter() @JsonKey(name: "salt_100g") double? salt100G,
    @NumConverter() @JsonKey(name: "salt_serving") double? saltServing,
    @JsonKey(name: "salt_unit") String? saltUnit,
    @NumConverter() @JsonKey(name: "salt_value") double? saltValue,
    @NumConverter() @JsonKey(name: "saturated-fat") double? saturatedFat,
    @NumConverter() @JsonKey(name: "saturated-fat_100g") double? saturatedFat100G,
    @NumConverter() @JsonKey(name: "saturated-fat_serving") double? saturatedFatServing,
    @JsonKey(name: "saturated-fat_unit") String? saturatedFatUnit,
    @NumConverter() @JsonKey(name: "saturated-fat_value") double? saturatedFatValue,
    @NumConverter() @JsonKey(name: "sodium") double? sodium,
    @NumConverter() @JsonKey(name: "sodium_100g") double? sodium100G,
    @NumConverter() @JsonKey(name: "sodium_serving") double? sodiumServing,
    @JsonKey(name: "sodium_unit") String? sodiumUnit,
    @NumConverter() @JsonKey(name: "sodium_value") double? sodiumValue,
    @NumConverter() @JsonKey(name: "sugars") double? sugars,
    @NumConverter() @JsonKey(name: "sugars_100g") double? sugars100G,
    @NumConverter() @JsonKey(name: "sugars_serving") double? sugarsServing,
    @JsonKey(name: "sugars_unit") String? sugarsUnit,
    @NumConverter() @JsonKey(name: "sugars_value") double? sugarsValue,
    @NumConverter() @JsonKey(name: "calcium") double? calcium,
    @NumConverter() @JsonKey(name: "calcium_100g") double? calcium100G,
    @JsonKey(name: "calcium_label") String? calciumLabel,
    @NumConverter() @JsonKey(name: "calcium_serving") double? calciumServing,
    @JsonKey(name: "calcium_unit") String? calciumUnit,
    @NumConverter() @JsonKey(name: "calcium_value") double? calciumValue,
    @JsonKey(name: "fat_label") String? fatLabel,
    @IntConverter() @JsonKey(name: "nova-group") int? novaGroup,
    @IntConverter() @JsonKey(name: "nova-group_100g") int? novaGroup100G,
    @IntConverter() @JsonKey(name: "nova-group_serving") int? novaGroupServing,
  }) = _Nutriments;

  factory Nutriments.fromJson(Map<String, dynamic> json) =>
      _$NutrimentsFromJson(json);
}