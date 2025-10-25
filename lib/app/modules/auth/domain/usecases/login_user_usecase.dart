// domain/usecases/login_user.dart
import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/core/data/exceptions/app_exceptions.dart';
import 'package:neutri_lens/app/modules/auth/domain/repository/auth_repository.dart';
import '../../../../core/shared/domain/usecase/usecase.dart';

class LoginParams {
  final String email;
  final String password;

  LoginParams({required this.email, required this.password});
}

class LoginUserUseCase implements UseCase<String, LoginParams> {
  final AuthRepository userRepository;
  LoginUserUseCase({required this.userRepository});
  @override
  Future<Either<AppException, String>> call(LoginParams params) async {
    return await userRepository.login(params.email, params.password);
  }
}
