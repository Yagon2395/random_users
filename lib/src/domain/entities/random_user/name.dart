import 'package:equatable/equatable.dart';

class Name extends Equatable {
  final String title;
  final String first;
  final String last;

  const Name({
    required this.title,
    required this.first,
    required this.last,
  });

  @override
  List<Object?> get props => [title, first, last];
}
