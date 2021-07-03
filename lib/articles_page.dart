import 'package:flutter/material.dart';

import 'package:headline/artical_model.dart';

class Articlepage extends StatelessWidget {
  final Article article;
  const Articlepage({
    Key? key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(article.urlToImage), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Text(
              article.source.name,
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            article.description,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
