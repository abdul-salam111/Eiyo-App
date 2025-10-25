import 'package:fpdart/fpdart.dart';
import '../../../../core/data/exceptions/app_exceptions.dart';
import '../../../auth/data/models/profile_model/profile_model.dart';
import '../../../auth/data/models/user_model/user_model.dart';

abstract interface class ProfileRepository {

  Future<Either<AppException, UserModel>> updateUserProfile(ProfileModel profileModel);
}