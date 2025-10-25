class UserEntity {
  final String username;
  final String password;
  final String fullname;
  final int ageFrom;
  final int toAge;
  final List<int> goals;
  final List<int> dietPreferences;

  UserEntity({
    required this.username,
    required this.password,
    required this.fullname,
    required this.ageFrom,
    required this.toAge,
    required this.goals,
    required this.dietPreferences,
  });
}
