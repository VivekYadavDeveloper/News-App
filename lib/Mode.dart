import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:headline/CustomList.dart';
import 'package:headline/api_services.dart';
import 'package:headline/artical_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ApiService client = ApiService();
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
      body: FutureBuilder(
        future: client.getArtical(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          //Checking If We Got A Response Or Not.
          if (snapshot.hasData) {
            //Let's Make a List Of Artical.
            List<Article> articles = snapshot.data as List<Article>;
            return ListView.builder(
              // Now Create Our Custom List Tile.
              itemCount: articles.length,
              itemBuilder: (context, index) =>
                  customList(articles[index], context),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
