//Creating The Article Model.
import 'source.dart';

class Article {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  // Create The Structure.
  Article(
      {required this.source,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  //Create The Function To Map The JSON

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json["source"]),
      author: json["author"] as String,
      title: json["title"] as String,
      description: json["description"] as String,
      url: json["url"] as String,
      urlToImage: json["urlToImage"] as String,
      publishedAt: json["publishedAt"] as String,
      content: json["content"] as String,
    );
  }
}