import 'package:get/get.dart';
import 'package:neutri_lens/app/modules/home/domain/abstract_repositories/home_repository.dart';
import 'package:neutri_lens/app/modules/home/data/repository_impl/home_repository_impl.dart';
import 'package:neutri_lens/app/modules/home/domain/usecases/get_all_products_usecase.dart';
import 'package:neutri_lens/app/modules/home/domain/usecases/search_products_usecase.dart';

import '../../../../core/data/network_manager/dio_helper.dart';
import '../../data/datasources/remote_data_source/home_remote_data_source.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(Get.find<DioHelper>()),
    );
    Get.lazyPut<HomeRepository>(
      () => HomeRepositoryImpl(Get.find<HomeRemoteDataSource>()),
    );
    Get.lazyPut(
      () => GetAllProductsUsecase(homeRepository: Get.find<HomeRepository>()),
    );
    Get.lazyPut(
      () => SearchProductsUsecase(homeRepository: Get.find<HomeRepository>()),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(
        getAllProductsUsecase: Get.find<GetAllProductsUsecase>(),
        searchProductsUsecase: Get.find<SearchProductsUsecase>(),
      ),
    );
  }
}
