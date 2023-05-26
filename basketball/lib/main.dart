import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamonePoints = 0;

  int teamtwoPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF5F264A),
          title: const Text("Pointer Counter"),
        ),
        body: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    "Team One",
                    style: TextStyle(
                      color: Color(0xFF5F264A),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '$teamonePoints',
                    style: const TextStyle(
                      color: Color(0xFF5F264A),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamonePoints++;
                      });
                      // print(teamonePoints);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF5F264A),
                    ),
                    child: const Text("Add 1 Point"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamonePoints += 2;
                      });
                      // teamonePoints += 2;
                      // print(teamonePoints);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF5F264A),
                    ),
                    child: const Text("Add 2 Points"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamonePoints += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF5F264A),
                    ),
                    child: const Text("Add 3 Points"),
                  ),
                ],
              ),
              Container(
                height: 500,
                child: const VerticalDivider(
                  color: Color(0xFF5F264A),
                  thickness: 2,
                ),
              ),
              Column(
                children: [
                  const Text(
                    "Team Two",
                    style: TextStyle(
                      color: Color(0xFF5F264A),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '$teamtwoPoints',
                    style: const TextStyle(
                      color: Color(0xFF5F264A),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamtwoPoints++;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF5F264A),
                    ),
                    child: const Text("Add 1 Point"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamtwoPoints += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF5F264A),
                    ),
                    child: const Text("Add 2 Points"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        teamtwoPoints += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF5F264A),
                    ),
                    child: const Text("Add 3 Points"),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                teamonePoints = 0;
                teamtwoPoints = 0;
              });
            },
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFEDE9D5),
            ),
            child: const Text(
              "Reset",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
