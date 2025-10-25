import '../../models/get_product_result_model/get_product_result_model.dart';
import '../../models/get_suggested_product/get_suggested_product_model.dart';
import '../../models/upload_product_record/upload_product_record_model.dart';

abstract interface class ResultRemoteDataSource {
  Future<GetProductResultModel> getProductResult({required String barCode});
  Future<GetSuggestedProductModel> getSuggestedProducts({required String qrCode});
  Future<bool> uploadScannedProduct(UploadProductRecordModel uploadProductRecordModel);
}