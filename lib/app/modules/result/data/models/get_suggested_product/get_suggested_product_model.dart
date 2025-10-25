// To parse this JSON data, do
//
//     final getSuggestedProductModel = getSuggestedProductModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_suggested_product_model.freezed.dart';
part 'get_suggested_product_model.g.dart';

GetSuggestedProductModel getSuggestedProductModelFromJson(String str) =>
    GetSuggestedProductModel.fromJson(json.decode(str));

String getSuggestedProductModelToJson(GetSuggestedProductModel data) =>
    json.encode(data.toJson());

@freezed
abstract class GetSuggestedProductModel with _$GetSuggestedProductModel {
  const factory GetSuggestedProductModel({
    @JsonKey(name: "suggested_products")
    List<SuggestedProduct>? suggestedProducts,

    @JsonKey(name: "user_goals")
    List<UserGoal>? userGoals,

    @JsonKey(name: "user_preferences")
    List<UserPreference>? userPreferences, // ✅ Updated type
  }) = _GetSuggestedProductModel;

  factory GetSuggestedProductModel.fromJson(Map<String, dynamic> json) =>
      _$GetSuggestedProductModelFromJson(json);
}

@freezed
abstract class SuggestedProduct with _$SuggestedProduct {
  const factory SuggestedProduct({
    @JsonKey(name: "product_name") String? productName,
    @JsonKey(name: "brand") String? brand,
    @JsonKey(name: "nutrition_grade") String? nutritionGrade,
    @JsonKey(name: "image_url") String? imageUrl,
    @JsonKey(name: "barcode") String? barcode,
  }) = _SuggestedProduct;

  factory SuggestedProduct.fromJson(Map<String, dynamic> json) =>
      _$SuggestedProductFromJson(json);
}

@freezed
abstract class UserGoal with _$UserGoal {
  const factory UserGoal({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
  }) = _UserGoal;

  factory UserGoal.fromJson(Map<String, dynamic> json) =>
      _$UserGoalFromJson(json);
}

@freezed
abstract class UserPreference with _$UserPreference { // ✅ Added this model
  const factory UserPreference({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
  }) = _UserPreference;

  factory UserPreference.fromJson(Map<String, dynamic> json) =>
      _$UserPreferenceFromJson(json);
}
