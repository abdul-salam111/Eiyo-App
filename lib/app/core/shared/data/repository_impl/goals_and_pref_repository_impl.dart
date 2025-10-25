import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/core/data/exceptions/app_exceptions.dart';
import 'package:neutri_lens/app/core/shared/data/datasource/remote_datasource/goals_and_pref_remote_datasource.dart';

import 'package:neutri_lens/app/core/shared/data/models/get_goals_diet_list/get_goals_diet_list.dart';

import '../../domain/abstract_repsitory/goals_and_pref_repository.dart';

class GoalsAndPrefRepositoryImpl implements GoalsAndPrefRepository {
  final GoalsAndPrefRemoteDataSource goalsAndPrefRemoteDataSource;
  GoalsAndPrefRepositoryImpl({required this.goalsAndPrefRemoteDataSource});
  @override
  Future<Either<AppException, GetGoalsDietList>> getGoalsDietList() async {
    try {
      final goalsAndDietList = await goalsAndPrefRemoteDataSource
          .getGoalsDietList();
      return right(goalsAndDietList);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }
}
