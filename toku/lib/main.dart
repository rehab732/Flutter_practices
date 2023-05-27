import 'package:flutter/material.dart';
import 'package:toku/screens/home_page.dart';

void main() {
  runApp(const toku());
}

class toku extends StatelessWidget {
  const toku({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage()
    );
  }
}

