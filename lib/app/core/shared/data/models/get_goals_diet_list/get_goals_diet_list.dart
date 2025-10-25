// To parse this JSON data, do
//
//     final getGoalsDietList = getGoalsDietListFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_goals_diet_list.freezed.dart';
part 'get_goals_diet_list.g.dart';

GetGoalsDietList getGoalsDietListFromJson(String str) =>
    GetGoalsDietList.fromJson(json.decode(str));

String getGoalsDietListToJson(GetGoalsDietList data) =>
    json.encode(data.toJson());

@freezed
abstract class GetGoalsDietList with _$GetGoalsDietList {
  const factory GetGoalsDietList({
    @JsonKey(name: "goals") List<DietPreference>? goals,
    @JsonKey(name: "diet_preferences") List<DietPreference>? dietPreferences,
  }) = _GetGoalsDietList;

  factory GetGoalsDietList.fromJson(Map<String, dynamic> json) =>
      _$GetGoalsDietListFromJson(json);
}

@freezed
abstract class DietPreference with _$DietPreference {
  const factory DietPreference({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
  }) = _DietPreference;

  factory DietPreference.fromJson(Map<String, dynamic> json) =>
      _$DietPreferenceFromJson(json);
}
