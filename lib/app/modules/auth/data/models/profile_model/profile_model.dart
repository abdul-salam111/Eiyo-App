// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

@freezed
abstract class ProfileModel with _$ProfileModel {
    const factory ProfileModel({
        @JsonKey(name: "full_name")
        String? fullName,
        @JsonKey(name: "age_from")
        int? ageFrom,
        @JsonKey(name: "age_to")
        int? ageTo,
        @JsonKey(name: "goals")
        List<DietPreference>? goals,
        @JsonKey(name: "diet_preferences")
        List<DietPreference>? dietPreferences,
    }) = _ProfileModel;

    factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
}

@freezed
abstract class DietPreference with _$DietPreference {
    const factory DietPreference({
        @JsonKey(name: "id")
        int? id,
    }) = _DietPreference;

    factory DietPreference.fromJson(Map<String, dynamic> json) => _$DietPreferenceFromJson(json);
}
