import 'package:equatable/equatable.dart';

class Info extends Equatable {
  final String seed;
  final int results;
  final int page;
  final String version;

  const Info({
    required this.seed,
    required this.results,
    required this.page,
    required this.version,
  });

  @override
  List<Object?> get props => [seed, results, page, version];
}
