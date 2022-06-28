import 'package:unsplash_gallery/domain/entities/photo.dart';

class PhotoModel extends Photo {
  const PhotoModel(
      {required super.name,
      required super.description,
      required super.smallImage,
      required super.largeImage});

  factory PhotoModel.fromJson(Map<String, dynamic> json) => PhotoModel(
      name: json['user']['name'] as String,
      description: json['description'] as String?,
      smallImage: json['urls']['small_s3'] as String,
      largeImage: json['urls']['full'] as String);
}
