import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unsplash_gallery/presentation/gallery_cubit/gallery_cubit.dart';
import 'package:unsplash_gallery/presentation/pages/photo_page.dart';
import 'package:unsplash_gallery/presentation/widgets/photo_tile.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GalleryCubit(),
      child: BlocBuilder<GalleryCubit, GalleryState>(
        builder: (context, state) {
          if (state.status == AppStates.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == AppStates.loaded) {
            return GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: state.photoList.length,
                itemBuilder: (BuildContext ctx, index) {
                  return GestureDetector(
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PhotoPage(),
                              settings: RouteSettings(
                                arguments: state.photoList[index].largeImage,
                              ),
                            ),
                          ),
                      child: PhotoTile(photo: state.photoList[index]));
                });
          } else {
            return const Center(child: Text('404'));
          }
        },
      ),
    );
  }
}
