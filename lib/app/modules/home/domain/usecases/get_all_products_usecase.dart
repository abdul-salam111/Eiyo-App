import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/core/data/exceptions/app_exceptions.dart';
import 'package:neutri_lens/app/core/shared/domain/usecase/usecase.dart';
import 'package:neutri_lens/app/modules/home/data/models/get_all_products_model.dart';

import '../abstract_repositories/home_repository.dart';

class GetAllProductsParams {
  int page;
  int pageSize;
  GetAllProductsParams({this.page = 1, this.pageSize = 20});
}

class GetAllProductsUsecase
    implements UseCase<GetAllProductsModel, GetAllProductsParams> {
  final HomeRepository homeRepository;
  GetAllProductsUsecase({required this.homeRepository});

  @override
  Future<Either<AppException, GetAllProductsModel>> call(params) {
    return homeRepository.getProducts(
      page: params.page,
      pageSize: params.pageSize,
    );
  }
}
