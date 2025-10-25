import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/core/data/exceptions/app_exceptions.dart';
import 'package:neutri_lens/app/modules/auth/data/datasources/remote_data_source/auth_remote_data_source.dart';

import 'package:neutri_lens/app/modules/auth/data/models/user_model/user_model.dart';
import '../../domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRemoteDataSource authRemoteDataSource;
  AuthRepositoryImpl({required this.authRemoteDataSource});
  
  @override
  Future<Either<AppException, String>> login(
    String email,
    String password,
  ) async {
    try {
      final token = await authRemoteDataSource.login(email, password);
      return right(token);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, bool>> signup(UserModel registerUserModel) async {
    try {
      final isSignup = await authRemoteDataSource.signup(registerUserModel);
      return right(isSignup);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }

   @override
  Future<Either<AppException, UserModel>> getLoggedInUser() async {
    try {
      final currentUser = await authRemoteDataSource.getLoggedInUser();
      return right(currentUser);
    } catch (error) {
      return Left(AppException(error.toString()));
    }
  }
}
