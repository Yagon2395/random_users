import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_users/src/presentation/friend_list/bloc/friend_list_bloc.dart';
import 'package:random_users/src/presentation/friend_list/widgets/friend_item.dart';
import 'package:random_users/src/presentation/shared/network_status.dart';

import '../../../domain/domain.dart';

class FriendList extends StatelessWidget {
  const FriendList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FriendListBloc, FriendListState>(
      builder: (context, state) {
        // Helper for handling null list
        List<Result> users = [];
        if (state.users != null) {
          users = state.users!;
        }

        // When status is loading and the list is empty
        if (users.isEmpty && state.status == NetworkStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        // When tried to fetch data but did not return any user
        else if (state.status == NetworkStatus.loaded && users.isEmpty) {
          return const Center(child: Text('Empty list'));
        }
        // When fetched data successfully
        else {
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: ((context, index) {
              // Render user layout
              if (users.isNotEmpty) {
                return FriendItem(resultUser: users[index]);
              }
              // Handling unwanted scenarios with empty view
              else {
                return const SizedBox.shrink();
              }
            }),
          );
        }
      },
    );
  }
}
