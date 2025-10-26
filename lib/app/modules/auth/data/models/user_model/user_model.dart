import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_entity.dart';
// import 'package:neutri_lens/app/modules/auth/domain/entities/user_entity.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "full_name") String? fullName,
    @JsonKey(name: "age_from") int? ageFrom,
    @JsonKey(name: "age_to") int? ageTo,
    @JsonKey(name: "goals") List<int>? goals,
    @JsonKey(name: "diet_preferences") List<int>? dietPreferences,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserModelX on UserModel {
  UserEntity toEntity() => UserEntity(
    username: username ?? "",
    password: password ?? "",
    fullname: fullName ?? "",
    ageFrom: ageFrom ?? 18,
    toAge: ageTo ?? 24,
    goals: goals ?? [],
    dietPreferences: dietPreferences ?? [],
  );
}
