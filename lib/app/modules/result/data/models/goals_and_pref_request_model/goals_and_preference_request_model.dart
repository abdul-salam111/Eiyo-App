// To parse this JSON data, do
//
//     final goalsAndPreferenceRequestModel = goalsAndPreferenceRequestModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'goals_and_preference_request_model.freezed.dart';
part 'goals_and_preference_request_model.g.dart';

GoalsAndPreferenceRequestModel goalsAndPreferenceRequestModelFromJson(String str) => GoalsAndPreferenceRequestModel.fromJson(json.decode(str));

String goalsAndPreferenceRequestModelToJson(GoalsAndPreferenceRequestModel data) => json.encode(data.toJson());

@freezed
abstract class GoalsAndPreferenceRequestModel with _$GoalsAndPreferenceRequestModel {
    const factory GoalsAndPreferenceRequestModel({
        @JsonKey(name: "nutriments")
        String? nutriments,
        @JsonKey(name: "ingredients")
        String? ingredients,
    }) = _GoalsAndPreferenceRequestModel;

    factory GoalsAndPreferenceRequestModel.fromJson(Map<String, dynamic> json) => _$GoalsAndPreferenceRequestModelFromJson(json);
}
