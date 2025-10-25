import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  // Make the class a singleton
  static final LocalStorage _instance = LocalStorage._internal();
  factory LocalStorage() => _instance;

  LocalStorage._internal();

  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<bool> setValues(String key, String value) async {
    await _storage.write(key: key, value: value);
    return true;
  }

  readValues(String key) {
    return _storage.read(key: key);
  }

  Future<bool> clearValues(String key) async {
    await _storage.delete(key: key);
    return true;
  }
}

// Global getter
final LocalStorage storage = LocalStorage();

class StorageKeys {
  static const String loggedIn = 'loggedIn';
  static const String token = "token";
  static const String userId = 'userId';
  static const String userDetails = 'userDetails';
  static const String testingToken = 'testingToken';
  static const String appToken = 'appToken';
  static const String phoneNumber = 'phoneNumber';
  static const String password = 'password';
  static const String rememberMe='rememberMe';
}

enum UserType { artist, trainer }

extension LocalStorageGetters on LocalStorage {
  Future<String?> get userId async {
    return await readValues(StorageKeys.userId);
  }

  Future<String?> get userToken async {
    return await readValues(StorageKeys.token);
  }

  Future<String?> get testingToken async {
    return await readValues(StorageKeys.testingToken);
  }
}
