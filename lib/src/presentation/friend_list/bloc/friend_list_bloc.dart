import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_users/src/presentation/shared/network_status.dart';

import '../../../domain/domain.dart';

part 'friend_list_event.dart';
part 'friend_list_state.dart';

class FriendListBloc extends Bloc<FriendListEvent, FriendListState> {
  final GetUsersCollectionUsecase getUsersCollectionUsecase;
  FriendListBloc(this.getUsersCollectionUsecase) : super(const FriendListState()) {
    on<FetchRandomUsersRequested>((event, emit) => _fetchRandomUsersRequested(event, emit));
  }

  Future _fetchRandomUsersRequested(FetchRandomUsersRequested event, Emitter<FriendListState> emit) async {
    emit(state.copyWith(status: NetworkStatus.loading));

    // Simulate slow connection
    await Future.delayed(const Duration(seconds: 1));

    // Call usecase
    final result = await getUsersCollectionUsecase(15);

    // Handle result
    result.fold((l) {
      emit(state.copyWith(errorMessage: l.message, status: NetworkStatus.error));
    }, (r) {
      emit(state.copyWith(errorMessage: null, status: NetworkStatus.loaded, users: r));
    });
  }
}
