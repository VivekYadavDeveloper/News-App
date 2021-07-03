import 'dart:convert';

import 'package:headline/artical_model.dart';
import 'package:http/http.dart';
//15.06
// Now Let's Make The HTTP Request Services.
// This Class Will Alow us To Make A Simple Get HTTP Request.
// From The API And Get The Articles And Then Return A List Of Articles.

class ApiService {
  final Uri endPointUrl = Uri.parse(
      "https://newsapi.org/v2/top-headlines?country=in&apiKey=d96a8044e1564bf39aa85ff2f9c2009b");
// Now Create The HTTP Request Function.
//Import The HTTP Package First.
  Future<List<Article>> getArtical() async {
    Response response = await get(endPointUrl);
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json["articles"];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't Get The Article");
    }
  }
}
