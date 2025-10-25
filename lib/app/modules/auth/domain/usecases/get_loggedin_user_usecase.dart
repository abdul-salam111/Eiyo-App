// domain/usecases/get_user.dart
import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/core/data/exceptions/app_exceptions.dart';
import 'package:neutri_lens/app/modules/auth/data/models/user_model/user_model.dart';
import 'package:neutri_lens/app/modules/auth/domain/repository/auth_repository.dart';
import '../../../../core/shared/domain/usecase/usecase.dart';

class GetLoggedInUserUseCase implements UseCase<UserModel, NoParams> {
  final AuthRepository authRepository;
  GetLoggedInUserUseCase({required this.authRepository});
  @override
  Future<Either<AppException, UserModel>> call(NoParams params) async {
    return await authRepository.getLoggedInUser();
  }
}
