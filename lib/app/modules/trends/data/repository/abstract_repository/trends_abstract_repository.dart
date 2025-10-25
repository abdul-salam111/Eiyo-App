import 'package:fpdart/fpdart.dart';
import 'package:neutri_lens/app/core/core.dart';

import '../../model/get_trends_model/get_trends_model.dart';

abstract interface class TrendsAbstractRepository {
  Future<Either<AppException, GetTrendsModel>> getTrends(
    String startDate,
    String endDate,
  );
}
