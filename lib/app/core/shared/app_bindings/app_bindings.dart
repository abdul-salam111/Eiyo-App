// 5. App Bindings - Initialize controllers
import 'package:get/get.dart';
import 'package:neutri_lens/app/core/shared/data/datasource/remote_datasource/goals_and_pref_remote_datasource.dart';
import 'package:neutri_lens/app/core/shared/data/repository_impl/goals_and_pref_repository_impl.dart';
import 'package:neutri_lens/app/core/shared/domain/abstract_repsitory/goals_and_pref_repository.dart';
import 'package:neutri_lens/app/core/shared/domain/usecase/get_goals_and_pref_usecase.dart';
import '../../data/network_manager/dio_helper.dart';
import '../../theme/theme.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ThemeController(), permanent: true);
    Get.put<DioHelper>(DioHelper(), permanent: true);
    Get.lazyPut<GoalsAndPrefRemoteDataSource>(
      () => GoalsAndPrefRemoteDatasourcImpl(dioHelper: Get.find<DioHelper>()),
      fenix: true,
    );
    Get.lazyPut<GoalsAndPrefRepository>(
      () => GoalsAndPrefRepositoryImpl(
        goalsAndPrefRemoteDataSource: Get.find<GoalsAndPrefRemoteDataSource>(),
      ),
      fenix: true,
    );
    Get.lazyPut<GetGoalsAndPrefUsecase>(
      () => GetGoalsAndPrefUsecase(
        goalsAndPrefRepository: Get.find<GoalsAndPrefRepository>(),
      ),
      fenix: true,
    );
  }
}
