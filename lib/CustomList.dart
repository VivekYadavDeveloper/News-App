// ** MY CUSTOM LIST **
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:headline/articles_page.dart';

class CustomList extends StatelessWidget {
  final urlToImage, title, description;
  CustomList({this.urlToImage, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Articlepage(
              description: description,
              title: title,
              urlToImage: urlToImage,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 7.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 250.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(urlToImage),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
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
                title,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
