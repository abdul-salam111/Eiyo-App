// To parse this JSON data, do
//
//     final getGoalsAndPreferencesResponse = getGoalsAndPreferencesResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_goals_and_preferences_response.freezed.dart';
part 'get_goals_and_preferences_response.g.dart';

GetGoalsAndPreferencesResponse getGoalsAndPreferencesResponseFromJson(String str) => GetGoalsAndPreferencesResponse.fromJson(json.decode(str));

String getGoalsAndPreferencesResponseToJson(GetGoalsAndPreferencesResponse data) => json.encode(data.toJson());

@freezed
abstract class GetGoalsAndPreferencesResponse with _$GetGoalsAndPreferencesResponse {
    const factory GetGoalsAndPreferencesResponse({
        @JsonKey(name: "goals_met")
        List<GoalsMet>? goalsMet,
        @JsonKey(name: "preferences_violated")
        List<GoalsMet>? preferencesViolated,
    }) = _GetGoalsAndPreferencesResponse;

    factory GetGoalsAndPreferencesResponse.fromJson(Map<String, dynamic> json) => _$GetGoalsAndPreferencesResponseFromJson(json);
}

@freezed
abstract class GoalsMet with _$GoalsMet {
    const factory GoalsMet({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "name")
        String? name,
    }) = _GoalsMet;

    factory GoalsMet.fromJson(Map<String, dynamic> json) => _$GoalsMetFromJson(json);
}
