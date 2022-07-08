import 'package:equatable/equatable.dart';

class Dob extends Equatable {
  final DateTime date;
  final int age;

  const Dob({
    required this.date,
    required this.age,
  });

  @override
  List<Object?> get props => [date, age];
}
