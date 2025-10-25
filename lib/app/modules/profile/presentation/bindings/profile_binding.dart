import 'package:get/get.dart';
import 'package:neutri_lens/app/core/data/network_manager/dio_helper.dart';
import 'package:neutri_lens/app/modules/profile/data/remote_datasource/profile_remote_datasource.dart';
import 'package:neutri_lens/app/modules/profile/data/repository_impl/profile_repository_impl.dart';
import 'package:neutri_lens/app/modules/profile/domain/abstract_repository/profile_repository.dart';
import 'package:neutri_lens/app/modules/profile/domain/usecases/update_user_usecase.dart';

import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserProfileRemoteDatasource>(
      () => UserProfileRemoteDatasourceImple(dioHelper: Get.find<DioHelper>()),
    );
    Get.lazyPut<ProfileRepository>(
      () => UserProfileRepositoryImple(
        userProfileRemoteDatasource: Get.find<UserProfileRemoteDatasource>(),
      ),
    );
    Get.lazyPut(
      () => UpdateUserProfileUsecase(
        profileRepository: Get.find<ProfileRepository>(),
      ),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(
        updateUserUsecase: Get.find<UpdateUserProfileUsecase>(),
      ),
    );
  }
}
