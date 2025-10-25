import 'package:get/get.dart';
import 'package:neutri_lens/app/modules/trends/data/repository/repository_impl/trends_repository_impl.dart';

import '../controllers/trends_controller.dart';
import '../../data/repository/abstract_repository/trends_abstract_repository.dart';

class TrendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TrendsAbstractRepository>(() => TrendsRepositoryImpl());
    Get.lazyPut<TrendsController>(

      () => TrendsController(repository: Get.find()),
    );
  }
}
