import 'package:equatable/equatable.dart';

class Timezone extends Equatable {
  final String offset;
  final String description;

  const Timezone({
    required this.offset,
    required this.description,
  });

  @override
  List<Object?> get props => [offset, description];
}
