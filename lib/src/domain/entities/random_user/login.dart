import 'package:equatable/equatable.dart';

class Login extends Equatable {
  final String uuid;
  final String username;
  final String password;
  final String salt;
  final String md5;
  final String sha1;
  final String sha256;

  const Login({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });
  @override
  List<Object?> get props => [uuid, username, password, salt, md5, sha1, sha256];
}
