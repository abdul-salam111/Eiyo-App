import 'dart:async';

import 'package:dio/dio.dart';
import '../exceptions/app_exceptions.dart';
import 'injection_container.dart';

class DioHelper {
  Dio get dio => getDio();

  Options options = Options(
    receiveDataWhenStatusError: true,
    contentType: "application/json",
    responseType: ResponseType.json,
    sendTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
  );

  Future<dynamic> getApi({
    required String url,
    bool isAuthRequired = false,
    String? authToken,
  }) async {
    Options requestOptions = isAuthRequired
        ? options.copyWith(
            headers: {
              ...?options.headers,
              "Authorization": "Bearer $authToken",
            },
          )
        : options;

    try {
      Response response = await dio.get(url, options: requestOptions);
      return response.data;
    } on DioException catch (error) {
      _handleDioError(error);
    } catch (error) {
      throw FetchDataException(
        "Data cannot be fetched, please check your internet connection!",
      );
    }
  }

  Future<dynamic> postApi({
    required String url,
    bool isAuthRequired = false,
    String? authToken,
    Object? requestBody,
  }) async {
    Options requestOptions = isAuthRequired
        ? options.copyWith(
            headers: {
              ...?options.headers,
              "Authorization": "Bearer $authToken",
            },
          )
        : options;

    try {
      Response response = await dio.post(
        url,
        data: requestBody,
        options: requestOptions,
      );

      return response.data;
    } on DioException catch (error) {
      _handleDioError(error);
    } catch (error) {
      return null;
    }
  }

  Future<dynamic> putApi({
    required String url,
    bool isAuthRequired = false,
    Object? requestBody,
    String? authToken,
  }) async {
    Options requestOptions = isAuthRequired
        ? options.copyWith(
            headers: {
              ...?options.headers,
              "Authorization": "Bearer $authToken",
            },
          )
        : options;
    try {
      Response response;
      if (requestBody == null) {
        response = await dio.put(url, options: requestOptions);
      } else {
        response = await dio.put(
          url,
          options: requestOptions,
          data: requestBody,
        );
      }
      return response.data;
    } on DioException catch (error) {
      _handleDioError(error);
    } catch (error) {
      return null;
    }
  }

  Future<dynamic> patchApi({
    required String url,
    bool isAuthRequired = false,
    Object? requestBody,
    String? authToken,
  }) async {
    Options requestOptions = isAuthRequired
        ? options.copyWith(
            headers: {
              ...?options.headers,
              "Authorization": "Bearer $authToken",
            },
          )
        : options;

    try {
      Response response;
      if (requestBody == null) {
        response = await dio.patch(url, options: requestOptions);
      } else {
        response = await dio.patch(url, options: options, data: requestBody);
      }
      return response.data;
    } on DioException catch (error) {
      _handleDioError(error);
    } catch (error) {
      return null;
    }
  }

  Future<dynamic> deleteApi({
    required String url,
    bool isAuthRequired = false,
    Object? requestBody,
    String? authToken,
  }) async {
    Options requestOptions = isAuthRequired
        ? options.copyWith(
            headers: {
              ...?options.headers,
              "Authorization": "Bearer $authToken",
            },
          )
        : options;
    try {
      Response response;
      if (requestBody == null) {
        response = await dio.delete(url, options: requestOptions);
      } else {
        response = await dio.delete(url, options: options, data: requestBody);
      }
      return response.data;
    } on DioException catch (error) {
      _handleDioError(error);
    } catch (error) {
      return null;
    }
  }

  void _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        throw RequestTimeoutException(
          "Connection time out. Please, check your internet connection.",
        );
      case DioExceptionType.sendTimeout:
        throw RequestTimeoutException(
          "Connection time out. Please, check your internet connection.",
        );

      case DioExceptionType.receiveTimeout:
        throw RequestTimeoutException(
          "Connection time out. Please, check your internet connection.",
        );
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        switch (statusCode) {
          case 400:
            throw UnauthorizedException(
              "Invalid credentials. Please, try again.",
            );
          case 404:
            throw InternalServerErrorException(
              "Server unavailble, Please check your internet connection.",
            );
          case 4002:
            throw InvalidInputException("Invalid Input");
          case 6001:
            throw InvalidInputException("The user already exist!");
          case 4003:
            throw InvalidInputException("Invalid Mobile Number");
          case 4004:
            throw UnauthorizedException("Otp Not Verified");
          case 4005:
            throw UnauthorizedException("Customer not approved");
          case 4006:
            throw TimeoutException("Otp Expired!");
          case 4007:
            throw InvalidInputException("Invalid Otp!");
          case 4008:
            throw NotFoundException("Customer not found");
          case 4009:
            throw InvalidInputException("Password Do Not Match");
          case 4010:
            throw InvalidInputException("InValid Customer");
          case 4011:
            throw InvalidInputException("InValid Login Id");
          case 4012:
            throw InvalidInputException("InValid Order");
          default:
            throw FetchDataException("Error occurred!");
        }
      case DioExceptionType.cancel:
        throw FetchDataException('Request cancelled');
      case DioExceptionType.connectionError:
        throw NoInternetException('Please, check your internet connection.');
      case DioExceptionType.badCertificate:
        throw FetchDataException('Bad certificate');
      case DioExceptionType.unknown:
        throw FetchDataException('Unknown error occurred');
    }
  }

  /// MULTIPART API
  Future<dynamic> multiPartRequest({
    required String url,
    required Object requestBody,
    bool isAuthRequired = false,
  }) async {
    Options option = Options(headers: {"Content-Type": "multipart/form-data"});

    try {
      Response response = await dio.post(
        url,
        data: requestBody,
        options: option,
      );
      return response.data;
    } on DioException catch (error) {
      _handleDioError(error);
    } catch (error) {
      return null;
    }
  }
}
