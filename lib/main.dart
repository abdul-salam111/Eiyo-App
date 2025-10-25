import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:neutri_lens/app/core/shared/data/datasource/remote_datasource/goals_and_pref_remote_datasource.dart';
import 'package:neutri_lens/app/core/shared/data/repository_impl/goals_and_pref_repository_impl.dart';
import 'package:neutri_lens/app/core/shared/domain/abstract_repsitory/goals_and_pref_repository.dart';
import 'package:neutri_lens/app/core/shared/domain/usecase/get_goals_and_pref_usecase.dart';
import 'package:neutri_lens/app/core/theme/theme.dart';
import 'app/core/data/network_manager/dio_helper.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Neutri Lens Clean Architecture",
      initialRoute: Routes.SPLASH,
      getPages: AppPages.routes,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      initialBinding: AppBindings(),
    );
  }
}

// 5. App Bindings - Initialize controllers
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
