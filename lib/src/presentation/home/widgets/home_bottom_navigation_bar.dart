import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/bottom_navigation_cubit.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state.index,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: 'Friend List',
            ),
          ],
          onTap: (index) {
            if (index == 0) {
              BlocProvider.of<BottomNavigationCubit>(context).getBottomNavigationItem(BottomNavigationItem.profile);
            } else {
              BlocProvider.of<BottomNavigationCubit>(context).getBottomNavigationItem(BottomNavigationItem.friendList);
            }
          },
        );
      },
    );
  }
}
