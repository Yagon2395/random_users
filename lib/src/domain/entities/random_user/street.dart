import 'package:equatable/equatable.dart';

class Street extends Equatable {
  final int number;
  final String name;

  const Street({
    required this.number,
    required this.name,
  });

  @override
  List<Object?> get props => [number, name];
}
