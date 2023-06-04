import 'package:bloc_film/constants/strings.dart';
import 'package:dio/dio.dart';

import '../models/character.dart';

class CharacterWebServices {
  late Dio dio;
  CharacterWebServices() {
    BaseOptions options = BaseOptions(
        baseUrl: base,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 60),
        receiveTimeout: const Duration(seconds: 60));
    dio = Dio(options);
  }
  Future<List<Characters>> getAllCharacters() async {
    try {
      Response response = await dio.get('character');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
