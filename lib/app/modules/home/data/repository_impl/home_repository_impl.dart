import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/modules/home/data/models/get_all_products_model.dart';
import 'package:neutri_lens/app/modules/home/domain/abstract_repositories/home_repository.dart';
import '../../../../core/core.dart';
import '../datasources/remote_data_source/home_remote_data_source.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppException, GetAllProductsModel>> getProducts({
    int page = 1,
    int pageSize = 20,
  }) async {
    try {
      final result = await remoteDataSource.getProducts(page: page, pageSize: pageSize);
      return right(result);
    } catch (e) {
      return left(AppException(e.toString()));
    }
  }

  @override
  Future<Either<AppException, GetAllProductsModel>> searchProducts({
    required String query,
    int page = 1,
    int pagesize = 20,
  }) async {
    try {
      final result = await remoteDataSource.searchProducts(query: query, page: page, pagesize: pagesize);
      return right(result);
    } catch (e) {
      return left(AppException(e.toString()));
    }
  }
}
