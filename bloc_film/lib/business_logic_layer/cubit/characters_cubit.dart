import 'package:bloc/bloc.dart';
import 'package:bloc_film/data_layer/repository/characters_repo.dart';
import 'package:flutter/cupertino.dart';

import '../../data_layer/models/character.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepository charactersRepository;
  late List<Characters> characters;
  CharactersCubit(this.charactersRepository)
      : super(CharactersInitial());

  List<Characters> getAllcharacters() {
    charactersRepository.getAllCharacters().then((character) {
      emit(CharactersLoaded(character));
      this.characters =character ;
    });
    return characters;
  }
}
