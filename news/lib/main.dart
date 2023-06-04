import 'package:flutter/material.dart';
import 'package:news/pages/details.dart';
import 'package:news/pages/home.dart';
import 'package:news/services/news_service.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    NewsService.getAllNews().then((value) => {
      setState(() {
        NewsService.news.addAll(value);
        NewsService.newsInApp = NewsService.news;
      })
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>Home(),
        'Details':(context)=>Details(),
      },
    );
  }
}
