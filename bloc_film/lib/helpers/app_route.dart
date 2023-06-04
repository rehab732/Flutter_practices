import 'package:bloc_film/business_logic_layer/cubit/characters_cubit.dart';
import 'package:bloc_film/constants/strings.dart';
import 'package:bloc_film/data_layer/repository/characters_repo.dart';
import 'package:bloc_film/data_layer/web_services/characters_we_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation_layer/screens/characters.dart';
import '../presentation_layer/screens/charactersdetails.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;
  AppRouter() {
    charactersRepository = CharactersRepository(CharacterWebServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case characterScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
          create:(BuildContext context)=>charactersCubit,
            child:const  CharactersScreen(),
        ),
        );
      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => const CharacterDetails());
    }
    return null;
  }
}
