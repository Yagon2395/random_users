import 'package:equatable/equatable.dart';

class Coordinates extends Equatable {
  final String latitude;
  final String longitude;

  const Coordinates({
    required this.latitude,
    required this.longitude,
  });

  @override
  List<Object?> get props => [latitude, longitude];
}
