import '../../../../constants/api_keys.dart';
import '../../../../data/exceptions/app_exceptions.dart';
import '../../../../data/network_manager/dio_helper.dart';
import '../../models/get_goals_diet_list/get_goals_diet_list.dart';

abstract interface class GoalsAndPrefRemoteDataSource {
  Future<GetGoalsDietList> getGoalsDietList();
}

class GoalsAndPrefRemoteDatasourcImpl implements GoalsAndPrefRemoteDataSource {
  final DioHelper dioHelper;

  GoalsAndPrefRemoteDatasourcImpl({required this.dioHelper});

  @override
  Future<GetGoalsDietList> getGoalsDietList() async {
    try {
      final response = await dioHelper.getApi(url: ApiKeys.getGoalsAndDietUrl);
      return GetGoalsDietList.fromJson(response);
    } catch (error) {
      throw AppException(error.toString());
    }
  }
}
