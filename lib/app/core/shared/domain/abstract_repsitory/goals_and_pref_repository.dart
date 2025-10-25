import 'package:fpdart/fpdart.dart';
import '../../../data/exceptions/app_exceptions.dart';
import '../../data/models/get_goals_diet_list/get_goals_diet_list.dart';

abstract interface class GoalsAndPrefRepository {
    Future<Either<AppException, GetGoalsDietList>> getGoalsDietList();
}