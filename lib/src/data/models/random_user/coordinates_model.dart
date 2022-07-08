import '../../../domain/domain.dart';

class CoordinateModel extends Coordinates {
  const CoordinateModel({
    required super.latitude,
    required super.longitude,
  });

  factory CoordinateModel.fromJson(Map<String, dynamic> json) => CoordinateModel(
        latitude: json['latitude'],
        longitude: json['longitude'],
      );

  Map<String, dynamic> toJson() => {
        'latitude': latitude,
        'longitude': longitude,
      };
}
