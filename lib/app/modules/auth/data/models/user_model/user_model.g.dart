// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  username: json['username'] as String?,
  password: json['password'] as String?,
  fullName: json['full_name'] as String?,
  ageFrom: (json['age_from'] as num?)?.toInt(),
  ageTo: (json['age_to'] as num?)?.toInt(),
  goals: (json['goals'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  dietPreferences: (json['diet_preferences'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'full_name': instance.fullName,
      'age_from': instance.ageFrom,
      'age_to': instance.ageTo,
      'goals': instance.goals,
      'diet_preferences': instance.dietPreferences,
    };
