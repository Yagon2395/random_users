import '../../../domain/domain.dart';

class LoginModel extends Login {
  const LoginModel({
    required super.uuid,
    required super.username,
    required super.password,
    required super.salt,
    required super.md5,
    required super.sha1,
    required super.sha256,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        uuid: json['uuid'],
        username: json['username'],
        password: json['password'],
        salt: json['salt'],
        md5: json['md5'],
        sha1: json['sha1'],
        sha256: json['sha256'],
      );

  Map<String, dynamic> toJson() => {
        'uuid': uuid,
        'username': username,
        'password': password,
        'salt': salt,
        'md5': md5,
        'sha1': sha1,
        'sha256': sha256,
      };
}
