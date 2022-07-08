import '../../../domain/domain.dart';
import '../../data.dart';

class LocationModel extends Location {
  const LocationModel({
    required super.street,
    required super.city,
    required super.country,
    required super.postcode,
    required super.coordinates,
    required super.timezone,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        street: StreetModel.fromJson(json['street']),
        city: json['city'],
        country: json['country'],
        postcode: json['postcode'].toString(),
        coordinates: CoordinateModel.fromJson(json['coordinates']),
        timezone: TimeZoneModel.fromJson(json['timezone']),
      );
}
