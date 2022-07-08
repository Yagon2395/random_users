import 'package:equatable/equatable.dart';

class Registered extends Equatable {
  final DateTime date;
  final int age;

  const Registered({
    required this.date,
    required this.age,
  });

  @override
  List<Object?> get props => [date, age];
}
