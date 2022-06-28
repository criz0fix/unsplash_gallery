import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:unsplash_gallery/data/datasources/remote/unsplash_api.dart';
import 'package:unsplash_gallery/domain/entities/photo.dart';

part 'gallery_state.dart';

class GalleryCubit extends Cubit<GalleryState> {
  GalleryCubit()
      : super(const GalleryState(photoList: [], status: AppStates.loading)) {
    fetchData();
  }

  final UnsplashApi _unsplashApi = UnsplashApi();

  Future<void> fetchData() async {
    await _unsplashApi.getPhotoList().then((modelList) =>
        emit(state.copywith(photoList: modelList, status: AppStates.loaded)));
  }
}
