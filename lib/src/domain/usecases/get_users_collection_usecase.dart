import 'dart:developer';

import 'package:dartz/dartz.dart';

import '../domain.dart';

class GetUsersCollectionUsecase implements BaseUsecase<List<Result>?, int> {
  final RandomUserRepository repository;

  GetUsersCollectionUsecase(this.repository);

  @override
  Future<Either<Failure, List<Result>?>> call(int results) async {
    var result = await repository.getRandomUsers(results);

    return result.fold((l) {
      log(l.message);
      return Left(l);
    }, (r) {
      return Right(r);
    });
  }
}
