import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message);

  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  final int? statusCode;

  const ServerFailure(String message, this.statusCode) : super(message);
}

class UnknownFailure extends Failure {
  const UnknownFailure({required String message}) : super(message);
}
