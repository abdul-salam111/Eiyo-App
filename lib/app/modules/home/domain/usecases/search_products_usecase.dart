import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/core/shared/domain/usecase/usecase.dart';

import '../../../../core/data/exceptions/app_exceptions.dart';
import '../../data/models/get_all_products_model.dart';
import '../abstract_repositories/home_repository.dart';

class SearchProductsParams {
  int page;
  int pageSize;
  String query;
  SearchProductsParams({
    this.page = 1,
    this.pageSize = 20,
    required this.query,
  });
}

class SearchProductsUsecase
    implements UseCase<GetAllProductsModel, SearchProductsParams> {
  final HomeRepository homeRepository;

  SearchProductsUsecase({required this.homeRepository});

  @override
  Future<Either<AppException, GetAllProductsModel>> call(params) {
    return homeRepository.searchProducts(
      query: params.query,
      page: params.page,
      pagesize: params.pageSize,
    );
  }
}
