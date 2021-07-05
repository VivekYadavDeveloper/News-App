// ** MY ARTICLE PAGE **
import 'package:flutter/material.dart';

class Articlepage extends StatelessWidget {
  final title, urlToImage, description;
  const Articlepage({this.title, this.urlToImage, this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(urlToImage), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          // Container(
          //   padding: EdgeInsets.all(6.0),
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //     borderRadius: BorderRadius.circular(25.0),
          //   ),
          //   child: Text(
          //     "Not Implemented Source.Name",
          //     style: TextStyle(
          //       color: Colors.blueAccent,
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              description,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
