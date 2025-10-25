// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_trends_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetTrendsModel _$GetTrendsModelFromJson(Map<String, dynamic> json) =>
    _GetTrendsModel(
      goodPickAvg: (json['good_pick_avg'] as num?)?.toDouble(),
      mediumPickAvg: (json['medium_pick_avg'] as num?)?.toDouble(),
      poorPickAvg: (json['poor_pick_avg'] as num?)?.toDouble(),
      entries: (json['entries'] as List<dynamic>?)
          ?.map((e) => Entry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetTrendsModelToJson(_GetTrendsModel instance) =>
    <String, dynamic>{
      'good_pick_avg': instance.goodPickAvg,
      'medium_pick_avg': instance.mediumPickAvg,
      'poor_pick_avg': instance.poorPickAvg,
      'entries': instance.entries,
    };

_Entry _$EntryFromJson(Map<String, dynamic> json) => _Entry(
  id: (json['id'] as num?)?.toInt(),
  foodIqScore: (json['food_iq_score'] as num?)?.toInt(),
  scannedAt: json['scanned_at'] as String?,
);

Map<String, dynamic> _$EntryToJson(_Entry instance) => <String, dynamic>{
  'id': instance.id,
  'food_iq_score': instance.foodIqScore,
  'scanned_at': instance.scannedAt,
};
