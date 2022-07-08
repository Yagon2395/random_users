part of 'bottom_navigation_cubit.dart';

enum BottomNavigationItem { profile, friendList }

class BottomNavigationState extends Equatable {
  final BottomNavigationItem bottonNavigationItem;
  final int index;

  const BottomNavigationState(
    this.bottonNavigationItem,
    this.index,
  );

  BottomNavigationState copyWith({
    bottonNavigationItem,
    index,
  }) {
    return BottomNavigationState(
      bottonNavigationItem ?? this.bottonNavigationItem,
      index ?? this.index,
    );
  }

  @override
  List<Object?> get props => [bottonNavigationItem, index];
}
