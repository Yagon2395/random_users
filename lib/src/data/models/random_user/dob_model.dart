import '../../../domain/domain.dart';

class DobModel extends Dob {
  const DobModel({
    required super.date,
    required super.age,
  });

  factory DobModel.fromJson(Map<String, dynamic> json) => DobModel(
        date: DateTime.parse(json['date']),
        age: json['age'],
      );

  Map<String, dynamic> toJson() => {
        'date': date.toIso8601String(),
        'age': age,
      };
}
