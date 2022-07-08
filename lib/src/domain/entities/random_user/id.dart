import 'package:equatable/equatable.dart';

class Id extends Equatable {
  final String name;
  final String? value;

  const Id({
    required this.name,
    required this.value,
  });
  @override
  List<Object?> get props => [name, value];
}
