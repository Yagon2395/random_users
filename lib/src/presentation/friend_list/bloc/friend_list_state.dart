part of 'friend_list_bloc.dart';

class FriendListState extends Equatable {
  final NetworkStatus status;
  final List<Result>? users;
  final String? errorMessage;

  const FriendListState({
    this.users,
    this.status = NetworkStatus.loading,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [status, users, errorMessage];

  FriendListState copyWith({
    status,
    users,
    errorMessage,
  }) {
    return FriendListState(
      status: status ?? this.status,
      users: users ?? this.users,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
