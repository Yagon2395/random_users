import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:random_users/src/domain/domain.dart';
import 'package:random_users/src/presentation/shared/photo_profile.dart';

import '../../shared/photo_profile.dart';

class ProfileContainer extends StatelessWidget {
  final Result resultUser;
  const ProfileContainer({Key? key, required this.resultUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: PhotoProfile(
              source: resultUser.picture.large,
              width: 120,
              height: 120,
            )),
            const SizedBox(height: 12),
            Center(
              child: Text(
                '${resultUser.name.first} ${resultUser.name.last}',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 22),
            const Divider(
              color: Color(0xffededed),
              thickness: 1,
            ),
            const SizedBox(height: 22),
            Row(
              children: [
                const Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                const SizedBox(width: 10),
                const _InfoTitle(text: 'Username: '),
                _InfoValue(text: resultUser.login.username),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(
                  Icons.mail,
                  color: Colors.blue,
                ),
                const SizedBox(width: 10),
                const _InfoTitle(text: 'E-mail: '),
                _InfoValue(text: resultUser.email),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(
                  Icons.location_city,
                  color: Colors.blue,
                ),
                const SizedBox(width: 10),
                const _InfoTitle(text: 'Location: '),
                _InfoValue(text: '${resultUser.location.city} - ${resultUser.location.country}'),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                const SizedBox(width: 10),
                const _InfoTitle(text: 'Cell: '),
                _InfoValue(text: resultUser.cell),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(
                  Icons.face,
                  color: Colors.blue,
                ),
                const SizedBox(width: 10),
                const _InfoTitle(text: 'Age: '),
                _InfoValue(text: '${resultUser.dob.age}'),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(
                  Icons.calendar_month,
                  color: Colors.blue,
                ),
                const SizedBox(width: 10),
                const _InfoTitle(text: 'Registered date: '),
                _InfoValue(text: DateFormat('dd/MM/yyyy HH:mm').format(resultUser.registered.date)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoTitle extends StatelessWidget {
  final String text;
  const _InfoTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Colors.blue,
      ),
    );
  }
}

class _InfoValue extends StatelessWidget {
  final String text;
  const _InfoValue({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RichText(
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        strutStyle: StrutStyle(fontSize: 12.0),
        text: TextSpan(style: const TextStyle(color: Colors.black), text: text),
      ),
    );
  }
}
