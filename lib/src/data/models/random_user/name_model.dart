import '../../../domain/domain.dart';

class NameModel extends Name {
  const NameModel({
    required super.title,
    required super.first,
    required super.last,
  });

  factory NameModel.fromJson(Map<String, dynamic> json) => NameModel(
        title: json['title'],
        first: json['first'],
        last: json['last'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'first': first,
        'last': last,
      };
}
