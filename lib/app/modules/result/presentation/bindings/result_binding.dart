import 'package:get/get.dart';
import 'package:neutri_lens/app/modules/result/data/respository/product_repository_impl.dart';
import '../../domain/abstract_repositories/product_repository.dart';
import '../controllers/result_controller.dart';

class ResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ProductRepository>(ProductRepositoryImpl());
    Get.put<ResultController>(ResultController(Get.find()));
  }
}
