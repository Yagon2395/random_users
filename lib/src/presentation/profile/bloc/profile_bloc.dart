import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_users/src/domain/domain.dart';
import 'package:random_users/src/presentation/shared/network_status.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetSingleUserUsecase getSingleUserUsecase;
  ProfileBloc(this.getSingleUserUsecase) : super(const ProfileState()) {
    on<FetchSingleUser>((event, emit) => _fetchSingleUser(event, emit));
  }

  Future _fetchSingleUser(FetchSingleUser event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: NetworkStatus.loading));

    // Simulate slow connection
    await Future.delayed(const Duration(seconds: 1));

    // Call usecase
    final result = await getSingleUserUsecase(NoParams());

    // Handle result
    result.fold((l) {
      emit(state.copyWith(errorMessage: l.message, status: NetworkStatus.error));
    }, (r) {
      emit(state.copyWith(errorMessage: null, status: NetworkStatus.loaded, resultUser: r));
    });
  }
}
