import 'package:flutter/material.dart';

import '../../../domain/domain.dart';
import '../../shared/photo_profile.dart';

class FriendItem extends StatelessWidget {
  final Result resultUser;
  const FriendItem({required this.resultUser, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PhotoProfile(source: resultUser.picture.large, width: 80, height: 80),
              const SizedBox(width: 20),
              Expanded(child: _FriendInfo(resultUser: resultUser)),
            ],
          ),
        ),
        const Divider(
          color: Color(0xffededed),
          thickness: 1,
        ),
      ],
    );
  }
}

class _FriendInfo extends StatelessWidget {
  final Result resultUser;
  const _FriendInfo({Key? key, required this.resultUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Id: ${resultUser.id.value}'),
        const SizedBox(height: 6),
        Text('${resultUser.name.first} - ${resultUser.name.last}'),
        const SizedBox(height: 6),
        Text(resultUser.email),
        const SizedBox(height: 6),
        Text(resultUser.gender),
      ],
    );
  }
}
