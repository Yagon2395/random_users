import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../domain.dart';

class GetSingleUserUsecase implements BaseUsecase<Result?, NoParams> {
  final RandomUserRepository repository;

  GetSingleUserUsecase(this.repository);

  @override
  Future<Either<Failure, Result?>> call(NoParams params) async {
    var result = await repository.getRandomUsers(1);

    return result.fold((l) {
      log(l.message);
      return Left(l);
    }, (r) {
      return Right(r?.first);
    });
  }
}
