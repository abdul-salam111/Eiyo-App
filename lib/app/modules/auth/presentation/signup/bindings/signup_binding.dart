import 'package:get/get.dart';
import 'package:neutri_lens/app/core/data/network_manager/dio_helper.dart';
import 'package:neutri_lens/app/core/shared/domain/usecase/get_goals_and_pref_usecase.dart';
import 'package:neutri_lens/app/modules/auth/domain/usecases/signup_user_usecase.dart';
import '../../../data/datasources/remote_data_source/auth_remote_data_source.dart';
import '../../../data/repository_impl/auth_repository_impl.dart';
import '../../../domain/repository/auth_repository.dart';
import '../controllers/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    // Data Source
    Get.lazyPut<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(dioHelper: Get.find<DioHelper>()),
    );

    // Repository
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(
        authRemoteDataSource: Get.find<AuthRemoteDataSource>(),
      ),
    );

    Get.lazyPut(
      () => SignupUserUsecase(userRepository: Get.find<AuthRepository>()),
    );

    // Controller
    Get.lazyPut<SignupController>(
      () => SignupController(
        getGoalsAndPrefUsecase: Get.find<GetGoalsAndPrefUsecase>(),
        signupUserUsecase: Get.find<SignupUserUsecase>(),
      ),
    );
  }
}
