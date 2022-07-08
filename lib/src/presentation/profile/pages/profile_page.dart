import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/injector.dart';
import '../../shared/presentation_shared.dart';
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
    return BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.status == NetworkStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.status == NetworkStatus.loaded) {
            return ProfileContainer(resultUser: state.resultUser!);
          } else {
            return NetWorkError(
              btnMessage: 'Fetch random user',
              action: () {
                context.read<ProfileBloc>().add(FetchSingleUser());
              },
            );
          }
        });
  }
}
