// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_goals_diet_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetGoalsDietList _$GetGoalsDietListFromJson(Map<String, dynamic> json) =>
    _GetGoalsDietList(
      goals: (json['goals'] as List<dynamic>?)
          ?.map((e) => DietPreference.fromJson(e as Map<String, dynamic>))
          .toList(),
      dietPreferences: (json['diet_preferences'] as List<dynamic>?)
          ?.map((e) => DietPreference.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetGoalsDietListToJson(_GetGoalsDietList instance) =>
    <String, dynamic>{
      'goals': instance.goals,
      'diet_preferences': instance.dietPreferences,
    };

_DietPreference _$DietPreferenceFromJson(Map<String, dynamic> json) =>
    _DietPreference(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DietPreferenceToJson(_DietPreference instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
