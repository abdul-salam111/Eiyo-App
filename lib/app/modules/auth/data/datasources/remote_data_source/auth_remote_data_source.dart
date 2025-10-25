import 'package:neutri_lens/app/core/core.dart';
import '../../../../../core/data/local_data/secure_storage/storage.dart';
import '../../models/user_model/user_model.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> login(String username, String password);
  Future<bool> signup(UserModel registerUserModel);

  Future<UserModel> getLoggedInUser();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  DioHelper dioHelper;
  AuthRemoteDataSourceImpl({required this.dioHelper});

  @override
  Future<String> login(String username, String password) async {
    try {
      final response = await dioHelper.postApi(
        url: ApiKeys.loginUserUrl,
        requestBody: {"username": username, "password": password},
      );
      return response['result']['access_token'];
    } catch (error) {
      throw AppException(error.toString());
    }
  }

  @override
  Future<bool> signup(UserModel registerUserModel) async {
    try {
      await dioHelper.postApi(
        url: ApiKeys.registerUserUrl,
        requestBody: registerUserModel.toJson(),
      );
      return true;
    } catch (error) {
      throw AppException(error.toString());
    }
  }

  @override
  Future<UserModel> getLoggedInUser() async {
    try {
      final response = await dioHelper.getApi(
        url: ApiKeys.getUserUrl,
        isAuthRequired: true,
        authToken: await storage.readValues(StorageKeys.token),
      );
      return UserModel.fromJson(response);
    } catch (error) {
      throw AppException(error.toString());
    }
  }
}
