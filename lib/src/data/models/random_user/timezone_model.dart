import '../../../domain/domain.dart';

class TimeZoneModel extends Timezone {
  const TimeZoneModel({
    required super.offset,
    required super.description,
  });

  factory TimeZoneModel.fromJson(Map<String, dynamic> json) => TimeZoneModel(
        offset: json['offset'],
        description: json['description'],
      );

  Map<String, dynamic> toJson() => {
        'offset': offset,
        'description': description,
      };
}
