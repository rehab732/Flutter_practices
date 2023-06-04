import 'package:flutter/material.dart';
import 'package:news/services/news_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("abb Bar"),
        ),
        body: ListView.builder(
          itemCount: NewsService.newsInApp.length,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 60,
                    color: Colors.grey,
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, 'Details',
                            arguments: NewsService.newsInApp[index]);
                      },
                      title: Text(
                        NewsService.newsInApp[index].title as String,
                        maxLines: 1,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    )),
              )),
    );
  }
}
