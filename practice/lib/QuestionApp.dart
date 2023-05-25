import 'package:flutter/material.dart';

import 'QBank.dart';


class QW extends StatefulWidget {
  // const QW({super.key});

  @override
  State<QW> createState() => _QWState();
}

class _QWState extends State<QW> {
  var questionss = QuestionBank();
  var score = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          title: Text(
            questionss.getMyQuestion().text,
            style:const TextStyle(
              color: Colors.pink,
              fontSize: 20,
              fontFamily: "Pacifico"
            ),
          ),
          trailing: IconButton(
            icon:const Icon(
              Icons.arrow_forward,
              color: Colors.pink,
            ),
            onPressed: () {
              setState(() {
                questionss.move();
              });
            },
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
                    onPressed: () {
                      if (questionss.getMyQuestion().ans == true) {
                        score++;
                      }
                      print(score);
                      setState(() {
                        questionss.move();
                      });
                    },
                    child: Text("true")),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
                    onPressed: () {
                      if (questionss.getMyQuestion().ans == false) {
                        score++;
                      }
                      // print(score);
                      setState(() {
                        questionss.move();
                      });
                    },
                    child:const Text("false"))
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
              child:const Text("SUBMIT"),
              onPressed: () {
                Navigator.of(context).pushNamed('myScoreScreen',
                    arguments: {'score': score.toString()});
              },
            )
          ],
        )
      ],
    );
  }
}
