import 'package:get/get.dart';
import 'package:neutri_lens/app/core/data/network_manager/dio_helper.dart';
import 'package:neutri_lens/app/modules/profile/domain/usecases/update_user_usecase.dart';
import '../../../auth/data/datasources/remote_data_source/auth_remote_data_source.dart';
import '../../../auth/data/repository_impl/auth_repository_impl.dart';
import '../../../auth/domain/repository/auth_repository.dart';
import '../controllers/settings_controller.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(dioHelper: Get.find<DioHelper>()),
    );
    Get.lazyPut<AuthRepository>(
      (() => AuthRepositoryImpl(
        authRemoteDataSource: Get.find<AuthRemoteDataSource>(),
      )),
    );
    
    Get.lazyPut<SettingsController>(
      () => SettingsController(
        getGoalsAndPrefUsecase: Get.find(),
        updateUserUsecase: Get.find<UpdateUserProfileUsecase>(),
      ),
    );
  }
}
