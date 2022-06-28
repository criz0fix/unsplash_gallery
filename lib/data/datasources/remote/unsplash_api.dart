import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:unsplash_gallery/core/utils/consts.dart';
import 'package:unsplash_gallery/data/models/photo_model.dart';

class UnsplashApi {
  final _client = http.Client();

  Future<List<PhotoModel>> getPhotoList() async {
    final response = await _client.get(Uri.parse(apiLink));
    return (jsonDecode(utf8.decode(response.bodyBytes)) as List)
        .map((galleryObject) => PhotoModel.fromJson(galleryObject))
        .toList();
  }
}
