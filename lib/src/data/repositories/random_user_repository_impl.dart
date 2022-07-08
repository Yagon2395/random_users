import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:random_users/src/data/datasources/random_user_datasource.dart';

import '../../domain/domain.dart';

class RandomUserRepositoryImpl implements RandomUserRepository {
  final RandomUserDatasource datasource;
  final logger = Logger();

  RandomUserRepositoryImpl(this.datasource);
  @override
  Future<Either<Failure, List<Result>?>> getRandomUsers(int results) async {
    try {
      final httpResponse = await datasource.getRandomUsers(results);

      if (httpResponse.response.statusCode != 200) {
        return Left(ServerFailure(
          "${httpResponse.response.statusMessage}",
          httpResponse.response.statusCode,
        ));
      }

      logger.i(httpResponse.data);
      return Right(httpResponse.data.results);
    } on DioError catch (error) {
      logger.i(('${error.message} => ${error.response?.statusMessage}'));
      return Left(ServerFailure(
        'Houve um problema ao se conectar com o servidor.',
        error.response?.statusCode,
      ));
    } catch (error) {
      logger.i(error.toString());
      return const Left(UnknownFailure(
        message: 'Houve um problema ao se conectar com o servidor.',
      ));
    }
  }
}
