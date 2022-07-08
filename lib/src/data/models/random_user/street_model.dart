import '../../../domain/domain.dart';

class StreetModel extends Street {
  const StreetModel({
    required super.number,
    required super.name,
  });

  factory StreetModel.fromJson(Map<String, dynamic> json) => StreetModel(
        number: json['number'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'number': number,
        'name': name,
      };
}
