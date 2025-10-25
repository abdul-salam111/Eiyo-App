import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/core/core.dart';
import 'package:neutri_lens/app/modules/result/data/models/get_product_result_model/get_product_result_model.dart';
import 'package:neutri_lens/app/modules/result/data/models/get_suggested_product/get_suggested_product_model.dart';
import 'package:neutri_lens/app/modules/result/data/models/upload_product_record/upload_product_record_model.dart';
import 'package:neutri_lens/app/modules/result/domain/abstract_repositories/product_repository.dart';

import '../../../../core/data/local_data/secure_storage/storage.dart';
import '../models/get_goals_pref_response/get_goals_and_preferences_response.dart';
import '../models/goals_and_pref_request_model/goals_and_preference_request_model.dart';

class ProductRepositoryImpl implements ProductRepository {
  static final _dio = DioHelper();
  @override
  Future<Either<AppException, GetProductResultModel>> getProductResult({
    required String barCode,
  }) async {
    try {
      final response = await _dio.getApi(
        url:
            "${ApiKeys.openfoodBaseUrl}/api/v2/product/$barCode?fields=product_name,brands,nutriment_nutrients,nutriscore_score,nutriscore_grade,nutrient_levels_tags,image_front_small_url,categories_tags,ingredients_text,nutriments",
      );

      if (response['status_verbose'].toString().contains(
        "no code or invalid code",
      )) {
        return left(AppException(response['status_verbose'].toString()));
      }
      return right(GetProductResultModel.fromJson(response));
    } catch (e) {
      return left(AppException(e.toString()));
    }
  }

  @override
  Future<Either<AppException, List<SuggestedProduct>>> getSuggestedProducts({
    required List<String> tags,
  }) async {
    try {
      final response = await _dio.postApi(
        url: ApiKeys.getSuggestedProductsUrl,
        authToken: await storage.readValues(StorageKeys.token),
        isAuthRequired: true,
        requestBody: tags,
      );
      print("${response}response is here");

      // Assuming response is a List
      if (response is List) {
        final products = response
            .map<SuggestedProduct>((item) => SuggestedProduct.fromJson(item))
            .toList();
        return right(products);
      }
      // If response contains a 'data' field with the list
      else if (response is Map<String, dynamic> && response['data'] is List) {
        final products = (response as List)
            .map<SuggestedProduct>((item) => SuggestedProduct.fromJson(item))
            .toList();
        return right(products);
      } else {
        return left(
          AppException('Unexpected response format: ${response.runtimeType}'),
        );
      }
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, bool>> uploadScannedProduct(
    UploadProductRecordModel uploadProductRecordModel,
  ) async {
    try {
      await _dio.postApi(
        url: ApiKeys.uploadScannedProductUrl,
        requestBody: uploadProductRecordModel.toJson(),
        authToken: await storage.readValues(StorageKeys.token),
        isAuthRequired: true,
      );
      return right(true);
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }

  @override
  Future<Either<AppException, GetGoalsAndPreferencesResponse>>
  getGoalsAndPreferences({
    required GoalsAndPreferenceRequestModel goalsAndPreferenceRequestModel,
  }) async {
    try {
      final response = await _dio.postApi(
        url: ApiKeys.getMetGoalsAndPrefForUser,
        requestBody: goalsAndPreferenceRequestModel.toJson(),
        authToken: await storage.readValues(StorageKeys.token),
        isAuthRequired: true,
      );
      return right(GetGoalsAndPreferencesResponse.fromJson(response));
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }
}
