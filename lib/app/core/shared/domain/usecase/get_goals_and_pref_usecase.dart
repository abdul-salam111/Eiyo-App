import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/core/data/exceptions/app_exceptions.dart';
import 'package:neutri_lens/app/core/shared/domain/abstract_repsitory/goals_and_pref_repository.dart';
import 'package:neutri_lens/app/core/shared/domain/usecase/usecase.dart';
import '../../data/models/get_goals_diet_list/get_goals_diet_list.dart';

class GetGoalsAndPrefUsecase implements UseCase<GetGoalsDietList, NoParams> {
  final GoalsAndPrefRepository goalsAndPrefRepository;
  GetGoalsAndPrefUsecase({required this.goalsAndPrefRepository});

  @override
  Future<Either<AppException, GetGoalsDietList>> call(params) {
    return goalsAndPrefRepository.getGoalsDietList();
  }
}
