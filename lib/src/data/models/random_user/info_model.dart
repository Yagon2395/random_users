import '../../../domain/domain.dart';

class InfoModel extends Info {
  const InfoModel({
    required super.seed,
    required super.results,
    required super.page,
    required super.version,
  });

  factory InfoModel.fromJson(Map<String, dynamic> json) => InfoModel(
        seed: json['seed'],
        results: json['results'],
        page: json['page'],
        version: json['version'],
      );
}
