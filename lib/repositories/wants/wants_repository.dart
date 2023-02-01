import 'package:dartz/dartz.dart';

import '../../models/want/want.dart';

// Define interface for this repository
abstract class WantsRepository {
  double get progress;
  Future<Either<Exception, List<Want>>> getWants();
  void clearWants();
}
