import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/modules/profile/data/remote_datasource/profile_remote_datasource.dart';
import 'package:neutri_lens/app/modules/profile/domain/abstract_repository/profile_repository.dart';
import '../../../../core/data/exceptions/app_exceptions.dart';
import '../../../auth/data/models/profile_model/profile_model.dart';
import '../../../auth/data/models/user_model/user_model.dart';

class UserProfileRepositoryImple implements ProfileRepository {
  final UserProfileRemoteDatasource userProfileRemoteDatasource;
  UserProfileRepositoryImple({required this.userProfileRemoteDatasource});

  @override
  Future<Either<AppException, UserModel>> updateUserProfile(
    ProfileModel profileModel,
  ) async {
    try {
      final updatedUser = await userProfileRemoteDatasource.updateUser(
        profileModel,
      );
      return right(updatedUser);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

 
}
