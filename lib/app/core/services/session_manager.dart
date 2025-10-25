import 'dart:convert';

import 'package:neutri_lens/app/modules/auth/data/models/user_model/user_model.dart';

import '../data/local_data/secure_storage/storage.dart';

class SessionController {
  UserModel getUserDetails = UserModel();
  static final SessionController _session = SessionController._internal();
  bool islogin = false;
  String? userId;
  SessionController._internal();

  static SessionController get instance => _session;

  factory SessionController() {
    return _session;
  }

  // get user details as a param and save in shared pref
  Future<void> saveUserInStorage(UserModel user) async {
    await storage.setValues(StorageKeys.userDetails, jsonEncode(user));
    await storage.setValues(StorageKeys.loggedIn, 'true');
  }

  Future<void> getUserfromSharedpref() async {
    try {
      final userData = await storage.readValues(StorageKeys.userDetails);
      if (userData != null) {
        SessionController().getUserDetails = UserModel.fromJson(
          jsonDecode(userData),
        );
      }
      final isLoggedIn = await storage.readValues(StorageKeys.loggedIn);
      SessionController().islogin = (isLoggedIn == 'true' ? true : false);
    } catch (e) {
      throw Exception(e);
    }
  }
}
