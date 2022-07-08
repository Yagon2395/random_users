import '../../../domain/domain.dart';

class IdModel extends Id {
  const IdModel({
    required super.name,
    required super.value,
  });

  factory IdModel.fromJson(Map<String, dynamic> json) => IdModel(
        name: json['name'],
        value: json['value'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'value': value,
      };
}
