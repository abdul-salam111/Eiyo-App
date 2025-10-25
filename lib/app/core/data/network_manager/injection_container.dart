import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:neutri_lens/app/core/constants/api_keys.dart';
import 'package:neutri_lens/app/core/data/local_data/secure_storage/storage.dart';
import 'package:neutri_lens/app/core/services/session_manager.dart';
import 'prints.dart';

Dio getDio() {
  Dio dio = Dio();

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        printValue(tag: 'API URL:', '${options.uri}');
        printValue(tag: 'HEADER:', options.headers);
        try {
          printValue(tag: 'REQUEST BODY:', jsonEncode(options.data));
        } catch (e) {
          printValue(tag: "Request Body", e.toString());
        }
        return handler.next(options);
      },

      onResponse: (Response response, ResponseInterceptorHandler handler) {
        printValue(tag: 'API RESPONSE:', response.data);
        return handler.next(response);
      },

      onError: (DioException e, ErrorInterceptorHandler handler) async {
        printValue(tag: 'STATUS CODE:', "${e.response?.statusCode ?? ""}");
        printValue(tag: 'ERROR DATA:', "${e.response?.data ?? ""}");

        // Check for 401 Unauthorized error
        if (e.response?.statusCode == 401) {
          // Token refresh handling logic
          final refreshToken = await _refreshAccessToken();
          if (refreshToken != null) {
            // Update the request with the new token
            e.requestOptions.headers['Authorization'] = 'Bearer $refreshToken';

            // Retry the original request with the new token
            try {
              final retryResponse = await dio.request(
                e.requestOptions.path,
                options: Options(
                  method: e.requestOptions.method,
                  headers: e.requestOptions.headers,
                  contentType: e.requestOptions.contentType,
                  responseType: e.requestOptions.responseType,
                  followRedirects: e.requestOptions.followRedirects,
                  validateStatus: e.requestOptions.validateStatus,
                ),
                data: e.requestOptions.data,
              );
              return handler.resolve(retryResponse);
            } catch (retryError) {
              // Ensure retryError is a DioException
              if (retryError is DioException) {
                return handler.reject(retryError);
              }
              // Handle non-DioException errors, if necessary
              printValue(
                tag: "Non-Dio error during retry",
                retryError.toString(),
              );
              return handler.reject(
                DioException(
                  requestOptions: e.requestOptions,
                  error: retryError,
                ),
              );
            }
          }
        }
        return handler.next(e);
      },
    ),
  );

  return dio;
}

// Method to refresh the token
Future<String?> _refreshAccessToken() async {
  try {
    // Send a request to refresh the token
    final response = await Dio().post(
      ApiKeys.loginUserUrl,
      data: {
        "username": SessionController().getUserDetails.username,
        "password": await storage.readValues(StorageKeys.password),
      },
    );

    if (response.statusCode == 200) {
      final data = response.data;
      final newToken = data['result']['access_token'];
      // Store the new token
      await storage.setValues(StorageKeys.token, newToken);

      return newToken;
    }
  } catch (e) {
    printValue(tag: "Error refreshing token", e.toString());
  }
  return null;
}
