import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, "Home Page");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return Scaffold(
          body: Container(
            color: Color.fromARGB(255, 255, 195, 65),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    child: Image.asset('assets/gifs/splashScreen1.gif'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 2.h),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Made In India",
                      style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      //"Made In Collaboration With Darshit jain",
                      //style: TextStyle(
                      //  fontFamily: "Dancing Script",
                      //  fontSize: 18.sp,
                      //)
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
