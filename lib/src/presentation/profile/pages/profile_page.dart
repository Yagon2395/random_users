import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_users/src/presentation/shared/network_status.dart';

import '../../../di/injector.dart';
import '../bloc/profile_bloc.dart';
import '../widgets/profile_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => injector()..add(FetchSingleUser()),
      child: const _ProfilePage(),
    );
  }
}

class _ProfilePage extends StatelessWidget {
  const _ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(listener: (context, state) {
      // do stuff here based on BlocA's state
    }, builder: (context, state) {
      if (state.status == NetworkStatus.loading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state.status == NetworkStatus.loaded) {
        return ProfileContainer(resultUser: state.resultUser!);
      } else {
        return const _ErrorView();
      }
    });
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        children: [
          const Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Center(
              child: Text('Ops, something went wrong. Please try again later.'),
            ),
          ),
          Flexible(
            flex: 0,
            fit: FlexFit.loose,
            child: SizedBox(
              height: 80,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  context.read<ProfileBloc>().add(FetchSingleUser());
                },
                child: const Text(
                  'Fetch random user',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
