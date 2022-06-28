part of 'gallery_cubit.dart';

enum AppStates { loading, loaded }

class GalleryState extends Equatable {
  final List<Photo> photoList;
  final AppStates status;

  const GalleryState({required this.photoList, required this.status});

  @override
  List<Object?> get props => [photoList, status];

  GalleryState copywith({List<Photo>? photoList, AppStates? status}) =>
      GalleryState(
          photoList: photoList ?? this.photoList,
          status: status ?? this.status);
}
