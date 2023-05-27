import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color,this.ontap});

  String? text;
  Color? color;
  VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 24),
        color: color,
        height: 80,
        width: double.infinity,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
