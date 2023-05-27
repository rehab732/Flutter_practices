import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/Number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final Number number;
  
  // Number one = Number(
  //     image: "assets/images/numbers/number_one.png",
  //     jAname: "Ichi",
  //     Enname: "One");
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.orange,
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            color: Colors.brown[100],
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jAname,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  number.Enname,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                AudioCache player = AudioCache(prefix: 'assets/sounds/colors/');
                // player.play('gray.wav');
                // print("play");
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 25,
                color: Colors.white,
              ),
            ),
            // child: Icon(
            //   Icons.play_arrow,
            //   size: 25,
            //   color: Colors.white,
            // ),
          ),
        ],
      ),
    );
  }
}
