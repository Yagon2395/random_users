part of 'friend_list_bloc.dart';

abstract class FriendListEvent extends Equatable {
  const FriendListEvent();

  @override
  List<Object> get props => [];
}

class FetchRandomUsersRequested extends FriendListEvent {}
