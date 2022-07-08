import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_users/src/presentation/home/cubit/bottom_navigation_cubit.dart';

import '../../../di/injector.dart';
import '../../friend_list/friend_list.dart';
import '../../profile/profile.dart';
import '../home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomNavigationCubit>(
      create: (context) => injector(),
      child: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
          builder: (context, state) {
            if (state.bottonNavigationItem == BottomNavigationItem.profile) {
              return const Center(child: Text("Profile"));
            } else {
              return const Center(child: Text("Friend List"));
            }
          },
        ),
      ),
      bottomNavigationBar: const HomeBottomNavigationBar(),
      body: BlocBuilder<BottomNavigationCubit, BottomNavigationState>(builder: (context, state) {
        if (state.bottonNavigationItem == BottomNavigationItem.profile) {
          return const ProfilePage();
        } else {
          return const FriendListPage();
        }
      }),
    );
  }
}
