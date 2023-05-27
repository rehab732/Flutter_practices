import 'package:flutter/material.dart';
import 'package:toku/screens/Number_page.dart';

import '../components/category_item.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TOKU",
          style: TextStyle(
            color: Color(0xFFFDF4F5),
          ),
        ),
        backgroundColor: const Color(0xFF060047),
      ),
      body: Column(
        children: [
          Category(
            text: "Numbers",
            color: const Color(0xFF850E35),
            ontap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return  Numberpage();
              }));
            },
          ),
          Category(
              text: "Family Member",
              color: const Color(0xFFEBD8C3),
              ontap: () {}),
          Category(
              text: "Colors", color: const Color(0xFF850E35), ontap: () {}),
          Category(
              text: "Phrases", color: const Color(0xFFEBD8C3), ontap: () {}),
        ],
      ),
    );
  }
}
