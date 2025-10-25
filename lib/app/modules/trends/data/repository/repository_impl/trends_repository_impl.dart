import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/core/core.dart';

import 'package:neutri_lens/app/modules/trends/data/model/get_trends_model/get_trends_model.dart';
import 'package:neutri_lens/app/modules/trends/data/repository/abstract_repository/trends_abstract_repository.dart';

import '../../../../../core/data/local_data/secure_storage/storage.dart';

class TrendsRepositoryImpl implements TrendsAbstractRepository {
  final dioHelper = DioHelper();
  @override
  Future<Either<AppException, GetTrendsModel>> getTrends(
    String startDate,
    String endDate,
  ) async {
    try {
      final result = await dioHelper.getApi(
        url: "${ApiKeys.getTrendsUrl}$startDate&to_date=$endDate",
        authToken: await storage.readValues(StorageKeys.token),
        isAuthRequired: true,
      );
      return right(GetTrendsModel.fromJson(result));
    } catch (error) {
      return left(AppException(error.toString()));
    }
  }
}
