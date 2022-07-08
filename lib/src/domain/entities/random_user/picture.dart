import 'package:equatable/equatable.dart';

class Picture extends Equatable {
  final String large;
  final String medium;
  final String thumbnail;

  const Picture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  @override
  List<Object?> get props => [large, medium, thumbnail];
}
