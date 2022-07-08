import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/injector.dart';
import '../bloc/friend_list_bloc.dart';
import '../widgets/friend_list_widgets.dart';

class FriendListPage extends StatelessWidget {
  const FriendListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider<FriendListBloc>(
          create: (context) => injector()..add(FetchRandomUsersRequested()),
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: FriendList(),
          ),
        ),
      ),
    );
  }
}
