// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      fullName: json['full_name'] as String?,
      ageFrom: (json['age_from'] as num?)?.toInt(),
      ageTo: (json['age_to'] as num?)?.toInt(),
      goals: (json['goals'] as List<dynamic>?)
          ?.map((e) => DietPreference.fromJson(e as Map<String, dynamic>))
          .toList(),
      dietPreferences: (json['diet_preferences'] as List<dynamic>?)
          ?.map((e) => DietPreference.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'age_from': instance.ageFrom,
      'age_to': instance.ageTo,
      'goals': instance.goals,
      'diet_preferences': instance.dietPreferences,
    };

_DietPreference _$DietPreferenceFromJson(Map<String, dynamic> json) =>
    _DietPreference(id: (json['id'] as num?)?.toInt());

Map<String, dynamic> _$DietPreferenceToJson(_DietPreference instance) =>
    <String, dynamic>{'id': instance.id};
