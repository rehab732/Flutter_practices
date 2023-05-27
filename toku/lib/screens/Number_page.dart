import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/Number.dart';

class Numberpage extends StatelessWidget {
  Numberpage({super.key});
  List<Number> numbers = [
    Number(
        image: "assets/images/numbers/number_one.png",
        jAname: "ichi",
        Enname: "One"),
    Number(
        image: "assets/images/numbers/number_two.png",
        jAname: "ichi",
        Enname: "Two"),
    Number(
        image: "assets/images/numbers/number_three.png",
        jAname: "ichi",
        Enname: "Three"),
    Number(
        image: "assets/images/numbers/number_four.png",
        jAname: "ichi",
        Enname: "Four"),
    Number(
        image: "assets/images/numbers/number_five.png",
        jAname: "ichi",
        Enname: "Five"),
    Number(
        image: "assets/images/numbers/number_six.png",
        jAname: "ichi",
        Enname: "Six"),
    Number(
        image: "assets/images/numbers/number_seven.png",
        jAname: "ichi",
        Enname: "Seven"),
    Number(
        image: "assets/images/numbers/number_eight.png",
        jAname: "ichi",
        Enname: "Eight"),
    Number(
        image: "assets/images/numbers/number_nine.png",
        jAname: "ichi",
        Enname: "Nine"),
    Number(
        image: "assets/images/numbers/number_ten.png",
        jAname: "ichi",
        Enname: "Ten"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFF850E35),
              title: const Text(
                "Number Page",
              ),
            ),
            body: ListView.builder(
              itemCount: numbers.length,
              itemBuilder: (context, num) {
                return Item(number: numbers[num]);
              },
              // children:
              // getList(numbers),
            )));
  }
}

List<Widget> getList(List<Number> number) {
  List<Widget> mylist = [];
  for (int i = 0; i < number.length; i++) {
    mylist.add(Item(number: number[i]));
  }

  return mylist;
}
