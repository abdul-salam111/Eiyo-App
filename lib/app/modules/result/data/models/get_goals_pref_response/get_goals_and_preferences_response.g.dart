// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_goals_and_preferences_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetGoalsAndPreferencesResponse _$GetGoalsAndPreferencesResponseFromJson(
  Map<String, dynamic> json,
) => _GetGoalsAndPreferencesResponse(
  goalsMet: (json['goals_met'] as List<dynamic>?)
      ?.map((e) => GoalsMet.fromJson(e as Map<String, dynamic>))
      .toList(),
  preferencesViolated: (json['preferences_violated'] as List<dynamic>?)
      ?.map((e) => GoalsMet.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetGoalsAndPreferencesResponseToJson(
  _GetGoalsAndPreferencesResponse instance,
) => <String, dynamic>{
  'goals_met': instance.goalsMet,
  'preferences_violated': instance.preferencesViolated,
};

_GoalsMet _$GoalsMetFromJson(Map<String, dynamic> json) =>
    _GoalsMet(id: (json['id'] as num?)?.toInt(), name: json['name'] as String?);

Map<String, dynamic> _$GoalsMetToJson(_GoalsMet instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};
