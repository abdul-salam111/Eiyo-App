import 'package:neutri_lens/app/core/core.dart';
import 'package:neutri_lens/app/modules/home/data/models/get_all_products_model.dart';


abstract class HomeRemoteDataSource {
  Future<GetAllProductsModel> getProducts({int page = 1, int pageSize = 20});
  Future<GetAllProductsModel> searchProducts({
    required String query,
    int page = 1,
    int pagesize = 20,
  });
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final DioHelper _dioHelper;
  HomeRemoteDataSourceImpl(this._dioHelper);

  @override
  Future<GetAllProductsModel> getProducts({
    int page = 1,
    int pageSize = 20,
  }) async {
    try {
      final response = await _dioHelper.getApi(
        url:
            "${ApiKeys.openfoodBaseUrl}/api/v2/search?page=$page&page_size=$pageSize&${ApiKeys.openapiProductFields}",
      );
      return GetAllProductsModel.fromJson(response);
    } catch (e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<GetAllProductsModel> searchProducts({
    required String query,
    int page = 1,
    int pagesize = 20,
  }) async {
    try {
      final response = await _dioHelper.getApi(
        url:
            "${ApiKeys.openfoodBaseUrl}/cgi/search.pl?action=process&search_terms=$query&json=1&page=$page&page_size=$pagesize&${ApiKeys.openapiProductFields}",
      );
      return GetAllProductsModel.fromJson(response);
    } catch (error) {
      throw AppException(error.toString());
    }
  }
}
