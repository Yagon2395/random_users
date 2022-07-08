import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../data.dart';

part 'random_user_datasource.g.dart';

@RestApi(baseUrl: "https://randomuser.me/")
abstract class RandomUserDatasource {
  factory RandomUserDatasource(Dio dio, {String baseUrl}) = _RandomUserDatasource;

  @GET("/api")
  Future<HttpResponse<RandomUserResponse>> getRandomUsers(@Query("results") int results);
}
