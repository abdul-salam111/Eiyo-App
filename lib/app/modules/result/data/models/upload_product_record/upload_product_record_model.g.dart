// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_product_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadProductRecordModel _$UploadProductRecordModelFromJson(
  Map<String, dynamic> json,
) => _UploadProductRecordModel(
  barcode: json['barcode'] as String?,
  productName: json['product_name'] as String?,
  foodIqScore: (json['food_iq_score'] as num?)?.toDouble(),
);

Map<String, dynamic> _$UploadProductRecordModelToJson(
  _UploadProductRecordModel instance,
) => <String, dynamic>{
  'barcode': instance.barcode,
  'product_name': instance.productName,
  'food_iq_score': instance.foodIqScore,
};
