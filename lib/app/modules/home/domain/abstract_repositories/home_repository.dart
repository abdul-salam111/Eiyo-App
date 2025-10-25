import 'package:fpdart/fpdart.dart';

import '../../../../core/data/exceptions/app_exceptions.dart';
import '../../data/models/get_all_products_model.dart';

abstract interface class HomeRepository {
  Future<Either<AppException, GetAllProductsModel>> getProducts({
    int page = 1,
    int pageSize = 20,
  });
  Future<Either<AppException, GetAllProductsModel>> searchProducts({
    required String query,
    int page = 1,
    int pagesize = 20,
  });
}
