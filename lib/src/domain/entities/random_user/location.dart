import 'package:equatable/equatable.dart';

import '../../domain.dart';

class Location extends Equatable {
  final Street street;
  final String city;
  final String country;
  final String postcode;
  final Coordinates coordinates;
  final Timezone timezone;

  const Location({
    required this.street,
    required this.city,
    required this.country,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  @override
  List<Object?> get props => [street, city, country, postcode, coordinates, timezone];
}
