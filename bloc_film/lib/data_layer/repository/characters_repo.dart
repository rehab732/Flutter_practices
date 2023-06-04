import 'package:bloc_film/data_layer/web_services/characters_we_services.dart';
import '../models/character.dart';

class CharactersRepository {
  final CharacterWebServices characterWebServices;

  CharactersRepository(this.characterWebServices);

  Future<List<dynamic>> getAllCharacters() async {
    final characters = await characterWebServices.getAllCharacters();
    return characters.map((char)=>Characters.fromJson(char)).toList();
  }
}
