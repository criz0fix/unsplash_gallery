import 'package:flutter/material.dart';
import 'package:unsplash_gallery/presentation/pages/gallery_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            centerTitle: true,
            title: const Text('GalleryApp'),
          ),
          body: const GalleryPage(),
        ));
  }
}
