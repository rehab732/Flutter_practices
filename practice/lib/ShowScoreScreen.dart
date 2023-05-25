import 'package:flutter/material.dart';

class ShowScore extends StatelessWidget {
  // const ShowScore({super.key});

  @override
  Widget build(BuildContext context) {
    var myScore =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    // print(myScore);
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const  Text(
            "Your Score :",
            style: TextStyle(
              color: Colors.pink,
              fontSize: 50,
              fontFamily: "Pacifico",
            ),
          ),
          Text(
            myScore['score'].toString(),
            style:const TextStyle(
              color: Colors.pink,
              fontSize: 50,
              fontFamily: "Pacifico",
            ),
          ),
        ],
      )),
    );
  }
}
