part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  final NetworkStatus status;
  final String? errorMessage;
  final Result? resultUser;

  const ProfileState({
    this.status = NetworkStatus.loading,
    this.errorMessage,
    this.resultUser,
  });

  @override
  List<Object?> get props => [status, errorMessage, resultUser];

  ProfileState copyWith({
    status,
    errorMessage,
    resultUser,
  }) {
    return ProfileState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      resultUser: resultUser ?? this.resultUser,
    );
  }
}
