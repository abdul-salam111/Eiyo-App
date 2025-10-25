import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/core/data/exceptions/app_exceptions.dart';
import 'package:neutri_lens/app/core/shared/domain/usecase/usecase.dart';
import 'package:neutri_lens/app/modules/auth/data/models/user_model/user_model.dart';

import 'package:neutri_lens/app/modules/auth/domain/repository/auth_repository.dart';

class SignupUserUsecase implements UseCase<bool, UserModel> {
  final AuthRepository userRepository;
  SignupUserUsecase({required this.userRepository});
  @override
  Future<Either<AppException, bool>> call(UserModel userModel) async {
    return await userRepository.signup(userModel);
  }
}
