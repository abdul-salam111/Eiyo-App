import 'package:get/get.dart';
import 'package:neutri_lens/app/modules/auth/data/datasources/remote_data_source/auth_remote_data_source.dart';
import 'package:neutri_lens/app/modules/auth/data/repository_impl/auth_repository_impl.dart';
import 'package:neutri_lens/app/modules/auth/domain/repository/auth_repository.dart';
import 'package:neutri_lens/app/modules/auth/domain/usecases/login_user_usecase.dart';
import '../../../domain/usecases/get_loggedin_user_usecase.dart';
import '../controllers/signin_controller.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(dioHelper: Get.find()),
    );
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(
        authRemoteDataSource: Get.find<AuthRemoteDataSource>(),
      ),
    );
    Get.lazyPut<LoginUserUseCase>(
      () => LoginUserUseCase(userRepository: Get.find<AuthRepository>()),
    );
    Get.lazyPut<GetLoggedInUserUseCase>(
      () => GetLoggedInUserUseCase(authRepository: Get.find<AuthRepository>()),
    );

    Get.lazyPut<SigninController>(
      () => SigninController(
        loginUserUseCase: Get.find<LoginUserUseCase>(),
        getUserUseCase: Get.find<GetLoggedInUserUseCase>(),
      ),
    );
  }
}
