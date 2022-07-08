import 'package:random_users/src/data/data.dart';

class RandomUserResponse {
  final List<ResultModel>? results;
  final InfoModel info;

  RandomUserResponse({
    required this.results,
    required this.info,
  });

  factory RandomUserResponse.fromJson(Map<String, dynamic> json) => RandomUserResponse(
        results: json['results'] != null
            ? List<ResultModel>.from(json['results']?.map((p) => ResultModel.fromJson(p)))
            : null,
        info: InfoModel.fromJson(json['info']),
      );
}
