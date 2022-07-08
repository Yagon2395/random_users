import '../../../domain/domain.dart';

class PictureModel extends Picture {
  const PictureModel({
    required super.large,
    required super.medium,
    required super.thumbnail,
  });

  factory PictureModel.fromJson(Map<String, dynamic> json) => PictureModel(
        large: json['large'],
        medium: json['medium'],
        thumbnail: json['thumbnail'],
      );

  Map<String, dynamic> toJson() => {
        'large': large,
        'medium': medium,
        'thumbnail': thumbnail,
      };
}
