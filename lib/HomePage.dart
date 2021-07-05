// ** MY HOME PAGE **
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:headline/CustomList.dart';
import 'package:headline/api_services.dart';
import 'package:headline/artical_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Article> articles = <Article>[];
  bool _isLoading = true;

  @override
  void initState() {
    getNews();
    super.initState();
  }

  void getNews() async {
    ApiService client = ApiService();
    await client.getArtical();
    articles = client.news;
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODAY HEADLINES"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.lightbulb),
            onPressed: () {
              Get.isDarkMode
                  ? Get.changeTheme(ThemeData.light())
                  : Get.changeTheme(ThemeData.dark());
            },
          ),
        ],
      ),
      // Call The API Services With FutureBuild Widget.
      body: _isLoading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Container(
              child: ListView.builder(
                itemCount: articles.length,
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  return CustomList(
                    description: articles[i].description,
                    title: articles[i].title,
                    urlToImage: articles[i].urlToImage,
                  );
                },
              ),
            ),
    );
  }
}
