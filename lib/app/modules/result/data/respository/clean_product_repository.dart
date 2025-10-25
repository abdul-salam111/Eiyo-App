// import 'package:fpdart/fpdart.dart';
// import 'package:neutri_lens/app/core/data/exceptions/app_exceptions.dart';
// import 'package:neutri_lens/app/modules/result/data/datasources/remote_data_source/result_remote_data_source.dart';
// import 'package:neutri_lens/app/modules/result/data/models/get_product_result_model/get_product_result_model.dart';
// import 'package:neutri_lens/app/modules/result/data/models/get_suggested_product/get_suggested_product_model.dart';
// import 'package:neutri_lens/app/modules/result/data/models/upload_product_record/upload_product_record_model.dart';
// import '../../domain/abstract_repositories/product_repository.dart';

// class CleanProductRepository implements ProductRepository {
//   final ResultRemoteDataSource remoteDataSource;
//   CleanProductRepository(this.remoteDataSource);
//   @override
//   Future<Either<AppException, GetProductResultModel>> getProductResult({
//     required String barCode,
//   }) async {
//     try {
//       final result = await remoteDataSource.getProductResult(barCode: barCode);
//       return right(result);
//     } catch (error) {
//       return left(AppException(error.toString()));
//     }
//   }

//   @override
//   Future<Either<AppException, GetSuggestedProductModel>> getSuggestedProducts({
//     required String qrCode,
//   }) async {
//     try {
//       final result = await remoteDataSource.getSuggestedProducts(
//         qrCode: qrCode,
//       );
//       return right(result);
//     } catch (error) {
//       return left(AppException(error.toString()));
//     }
//   }

//   @override
//   Future<Either<AppException, bool>> uploadScannedProduct(
//     UploadProductRecordModel uploadProductRecordModel,
//   ) async {
//     try {
//       final result = await remoteDataSource.uploadScannedProduct(
//         uploadProductRecordModel,
//       );
//       return right(result);
//     } catch (error) {
//       return left(AppException(error.toString()));
//     }
//   }
// }
