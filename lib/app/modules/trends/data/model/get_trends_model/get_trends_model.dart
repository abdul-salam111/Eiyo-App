// To parse this JSON data, do
//
//     final getTrendsModel = getTrendsModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_trends_model.freezed.dart';
part 'get_trends_model.g.dart';

GetTrendsModel getTrendsModelFromJson(String str) => GetTrendsModel.fromJson(json.decode(str));

String getTrendsModelToJson(GetTrendsModel data) => json.encode(data.toJson());

@freezed
abstract class GetTrendsModel with _$GetTrendsModel {
    const factory GetTrendsModel({
        @JsonKey(name: "good_pick_avg")
        double? goodPickAvg,
        @JsonKey(name: "medium_pick_avg")
        double? mediumPickAvg,
        @JsonKey(name: "poor_pick_avg")
        double? poorPickAvg,
        @JsonKey(name: "entries")
        List<Entry>? entries,
    }) = _GetTrendsModel;

    factory GetTrendsModel.fromJson(Map<String, dynamic> json) => _$GetTrendsModelFromJson(json);
}

@freezed
abstract class Entry with _$Entry {
    const factory Entry({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "food_iq_score")
        int? foodIqScore,
        @JsonKey(name: "scanned_at")
        String? scannedAt,
    }) = _Entry;

    factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);
}
