// To parse this JSON data, do
//
//     final uploadProductRecordModel = uploadProductRecordModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'upload_product_record_model.freezed.dart';
part 'upload_product_record_model.g.dart';

UploadProductRecordModel uploadProductRecordModelFromJson(String str) => UploadProductRecordModel.fromJson(json.decode(str));

String uploadProductRecordModelToJson(UploadProductRecordModel data) => json.encode(data.toJson());

@freezed
abstract class UploadProductRecordModel with _$UploadProductRecordModel {
    const factory UploadProductRecordModel({
        @JsonKey(name: "barcode")
        String? barcode,
        @JsonKey(name: "product_name")
        String? productName,
        @JsonKey(name: "food_iq_score")
        double? foodIqScore,
    }) = _UploadProductRecordModel;

    factory UploadProductRecordModel.fromJson(Map<String, dynamic> json) => _$UploadProductRecordModelFromJson(json);
}
