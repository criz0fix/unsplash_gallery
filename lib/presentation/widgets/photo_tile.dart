import 'package:flutter/material.dart';
import 'package:unsplash_gallery/domain/entities/photo.dart';

class PhotoTile extends StatelessWidget {
  final Photo photo;

  const PhotoTile({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      Image.network(photo.smallImage, fit: BoxFit.cover),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            color: Colors.black.withAlpha(100),
            child: Column(
              children: [
                Text(
                  photo.name,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  photo.description ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}
