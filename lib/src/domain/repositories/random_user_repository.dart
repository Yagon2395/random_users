import 'package:dartz/dartz.dart';

import '../domain.dart';

abstract class RandomUserRepository {
  Future<Either<Failure, List<Result>?>> getRandomUsers(int results);
}
