import '../../../domain/domain.dart';
import '../../data.dart';

class ResultModel extends Result {
  const ResultModel({
    required super.gender,
    required super.name,
    required super.location,
    required super.email,
    required super.login,
    required super.dob,
    required super.registered,
    required super.phone,
    required super.cell,
    required super.id,
    required super.picture,
    required super.nat,
  });

  factory ResultModel.fromJson(Map<String, dynamic> json) => ResultModel(
        gender: json['gender'],
        name: NameModel.fromJson(json['name']),
        location: LocationModel.fromJson(json['location']),
        email: json['email'],
        login: LoginModel.fromJson(json['login']),
        dob: DobModel.fromJson(json['dob']),
        registered: RegisteredModel.fromJson(json['registered']),
        phone: json['phone'],
        cell: json['cell'],
        id: IdModel.fromJson(json['id']),
        picture: PictureModel.fromJson(json['picture']),
        nat: json['nat'],
      );

  Map<String, dynamic> toJson() => {
        'gender': gender,
        'name': name,
        'location': location,
        'email': email,
        'login': login,
        'dob': dob,
        'registered': registered,
        'phone': phone,
        'cell': cell,
        'id': id,
        'picture': picture,
        'nat': nat,
      };
}
