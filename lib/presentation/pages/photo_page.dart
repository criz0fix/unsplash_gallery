import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoUrl = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: InteractiveViewer(
        child: Image.network(
          photoUrl,
          fit: BoxFit.contain,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
