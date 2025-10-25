import 'package:neutri_lens/app/core/data/network_manager/dio_helper.dart';

import '../../../../core/constants/api_keys.dart';
import '../../../../core/data/exceptions/app_exceptions.dart';
import '../../../../core/data/local_data/secure_storage/storage.dart';
import '../../../auth/data/models/profile_model/profile_model.dart';
import '../../../auth/data/models/user_model/user_model.dart';

abstract interface class UserProfileRemoteDatasource {
 
  Future<UserModel> updateUser(ProfileModel profileModel);
}

class UserProfileRemoteDatasourceImple implements UserProfileRemoteDatasource {
  final DioHelper dioHelper;
  UserProfileRemoteDatasourceImple({required this.dioHelper});
 
  @override
  Future<UserModel> updateUser(ProfileModel profileModel) async {
    try {
      final response = await dioHelper.putApi(
        url: ApiKeys.getUserUrl,
        isAuthRequired: true,
        authToken: await storage.readValues(StorageKeys.token),
        requestBody: profileModel.toJson(),
      );
      return UserModel.fromJson(response['profile']);
    } catch (error) {
      throw AppException(error.toString());
    }
  }
}
