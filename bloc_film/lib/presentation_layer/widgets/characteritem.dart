import 'package:bloc_film/constants/mycolors.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  final Characters char;
  const CharacterItem({super.key, required this.char});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: MyColors.mywhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(
        child: Container(
          color: MyColors.myyellow,
          // child: char.img.not,
        ),
      ),
    );
  }
}
