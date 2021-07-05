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
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(urlToImage), fit: BoxFit.cover),
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
                "Not Implemented Source.Name",
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
