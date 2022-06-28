import 'package:equatable/equatable.dart';

class Photo extends Equatable {
  final String name;
  final String? description;
  final String smallImage;
  final String largeImage;

  const Photo(
      {required this.name,
      required this.description,
      required this.smallImage,
      required this.largeImage});

  @override
  List<Object?> get props => [name, description, smallImage, largeImage];
}
