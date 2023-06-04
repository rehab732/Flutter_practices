import 'package:bloc_film/business_logic_layer/cubit/characters_cubit.dart';
import 'package:bloc_film/constants/mycolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/characteritem.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late List<dynamic> allcharacters;
  @override
  void initState() {
    super.initState();
    allcharacters =
        BlocProvider.of<CharactersCubit>(context).getAllcharacters();
  }

  Widget buildBlocWidget() {
    return BlocBuilder<CharactersCubit, CharactersState>(
      builder: (context, state) {
        if (state is CharactersLoaded) {
          allcharacters = (state).characters;
          return buildLoadedWidget();
        } else {
          return showLoadingIndecator();
        }
      },
    );
  }

  Widget showLoadingIndecator() {
    return const Center(
      child: CircularProgressIndicator(color: MyColors.myyellow),
    );
  }

  Widget buildLoadedWidget() {
    return SingleChildScrollView(
      child: Container(
          color: MyColors.myyellow,
          child: Column(
            children: [
              buildCharacterList(),
            ],
          )),
    );
  }

  Widget buildCharacterList() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 1,
        mainAxisExtent: 1,
      ),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics:const ClampingScrollPhysics(),
      itemCount: allcharacters.length,
      itemBuilder: (ctx, indx) {
        return   CharacterItem();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myblue,
        title: const Text("rehab"),
      ),
    );
  }
}
