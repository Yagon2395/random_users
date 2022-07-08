import 'package:equatable/equatable.dart';

import '../../domain.dart';

class Result extends Equatable {
  final String gender;
  final Name name;
  final Location location;
  final String email;
  final Login login;
  final Dob dob;
  final Registered registered;
  final String phone;
  final String cell;
  final Id id;
  final Picture picture;
  final String nat;

  const Result({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });

  @override
  List<Object?> get props => [
        gender,
        name,
        location,
        email,
        login,
        dob,
        registered,
        phone,
        cell,
        id,
        picture,
        nat,
      ];
}
