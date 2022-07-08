import '../../../domain/domain.dart';

class RegisteredModel extends Registered {
  const RegisteredModel({
    required super.date,
    required super.age,
  });

  factory RegisteredModel.fromJson(Map<String, dynamic> json) => RegisteredModel(
        date: DateTime.parse(json['date']),
        age: json['age'],
      );

  Map<String, dynamic> toJson() => {
        'date': date.toIso8601String(),
        'age': age,
      };
}
