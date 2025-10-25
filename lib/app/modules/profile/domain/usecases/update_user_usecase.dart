// domain/usecases/get_user.dart
import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/core/data/exceptions/app_exceptions.dart';
import 'package:neutri_lens/app/modules/auth/data/models/profile_model/profile_model.dart';
import 'package:neutri_lens/app/modules/auth/data/models/user_model/user_model.dart';
import 'package:neutri_lens/app/modules/profile/domain/abstract_repository/profile_repository.dart';
import '../../../../core/shared/domain/usecase/usecase.dart';

class UpdateUserProfileUsecase implements UseCase<UserModel, ProfileModel> {
  final ProfileRepository profileRepository;
  UpdateUserProfileUsecase({required this.profileRepository});
  @override
  Future<Either<AppException, UserModel>> call(
    ProfileModel profileModel,
  ) async {
    return await profileRepository.updateUserProfile(profileModel);
  }
}
