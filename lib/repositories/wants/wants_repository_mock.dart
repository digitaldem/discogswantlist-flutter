import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/want/want.dart';
import './wants_repository.dart';

final wantsRepositoryProvider = Provider<WantsRepository>((ref) => WantsRepositoryMock());

class WantsRepositoryMock implements WantsRepository {
  @override
  double get progress => 0.0;

  @override
  Future<Either<Exception, List<Want>>> getWants() async {
    try {
      final List<Want> wants = <Want>[];
      return Right(wants);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  @override
  void clearWants() {}
}
