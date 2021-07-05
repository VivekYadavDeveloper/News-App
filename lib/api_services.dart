// ** MY CODE FOR GETTING DATA FROM API **
import 'dart:convert';

import 'package:headline/artical_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  List<Article> news = [];
  Future<void> getArtical() async {
    final Uri endPointUrl = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=d96a8044e1564bf39aa85ff2f9c2009b");
    var response = await http.get(endPointUrl);
    var jsonData = jsonDecode(response.body);
    print(jsonData);
    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element['urlToImage'] != null &&
            element['description'] != null &&
            element['content'] != null &&
            element['author'] != null) {
          Article article = Article(
              author: element['author'],
              title: element['title'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              publishedAt: element['publishedAt'],
              content: element['content']);
          news.add(article);
        }
      });
    }
  }
}
