
import 'package:flutter/material.dart';
class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image(
            image: NetworkImage(
              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
            ),
          ),
        ),
      ),
    );
  }
}

