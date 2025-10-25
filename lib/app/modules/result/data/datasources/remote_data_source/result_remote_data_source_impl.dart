import 'package:neutri_lens/app/core/core.dart';
import 'package:neutri_lens/app/modules/result/data/datasources/remote_data_source/result_remote_data_source.dart';
import 'package:neutri_lens/app/modules/result/data/models/get_product_result_model/get_product_result_model.dart';
import 'package:neutri_lens/app/modules/result/data/models/get_suggested_product/get_suggested_product_model.dart';
import 'package:neutri_lens/app/modules/result/data/models/upload_product_record/upload_product_record_model.dart';

import '../../../../../core/data/local_data/secure_storage/storage.dart';

class ResultRemoteDataSourceImpl implements ResultRemoteDataSource {
  final DioHelper _dioHelper;
  ResultRemoteDataSourceImpl(this._dioHelper);
  @override
  Future<GetProductResultModel> getProductResult({
    required String barCode,
  }) async {
    try {
      final response = await _dioHelper.getApi(
        url:
            "${ApiKeys.openfoodBaseUrl}/api/v2/product/$barCode?fields=product_name,brands,nutriment_nutrients,nutriscore_score,nutriscore_grade,nutrient_levels_tags,image_front_small_url,nutriments",
      );
      if (response['status_verbose'].toString().contains(
        "no code or invalid code",
      )) {
        throw AppException(response['status_verbose'].toString());
      }
      return GetProductResultModel.fromJson(response);
    } catch (error) {
      throw AppException(error.toString());
    }
  }

  @override
  Future<GetSuggestedProductModel> getSuggestedProducts({
    required String qrCode,
  }) async {
    try {
      final response = await _dioHelper.getApi(
        url: "${ApiKeys.getSuggestedProductsUrl}$qrCode",
        authToken: await storage.readValues(StorageKeys.token),
        isAuthRequired: true,
      );

      return GetSuggestedProductModel.fromJson(response);
    } catch (error) {
      throw AppException(error.toString());
    }
  }

  @override
  Future<bool> uploadScannedProduct(
    UploadProductRecordModel uploadProductRecordModel,
  ) async {
    try {
      await _dioHelper.postApi(
        url: ApiKeys.uploadScannedProductUrl,
        requestBody: uploadProductRecordModel.toJson(),
        authToken: await storage.readValues(StorageKeys.token),
        isAuthRequired: true,
      );
      return true;
    } catch (error) {
      throw AppException(error.toString());
    }
  }
}
