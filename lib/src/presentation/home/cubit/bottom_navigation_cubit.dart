import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(const BottomNavigationState(BottomNavigationItem.profile, 0));

  void getBottomNavigationItem(BottomNavigationItem item) {
    if (item == BottomNavigationItem.profile) {
      emit(state.copyWith(bottonNavigationItem: BottomNavigationItem.profile, index: 0));
    } else {
      emit(state.copyWith(bottonNavigationItem: BottomNavigationItem.friendList, index: 1));
    }
  }
}
