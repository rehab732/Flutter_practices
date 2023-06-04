import 'package:http/http.dart' as http;
import 'package:news/models/new_model.dart';
import 'dart:convert';

class NewsService {
  static List<NewsModel> news = [];
  static List<NewsModel> newsInApp = [];

 static  Future<List<NewsModel>> getAllNews() async {
    var url = "http://www.mocky.io/v2/5ecfddf13200006600e3d6d0";
    var response = await http.get(Uri.parse(url));
    List<NewsModel> news = [];
    if (response.statusCode == 200) {
      var newsjson = json.decode(response.body);
      for (var neww in newsjson) {
        news.add(NewsModel.fromjson(neww));
      }
    }
    return news;
  }
}
