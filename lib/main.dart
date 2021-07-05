import 'package:flutter/material.dart';
import 'package:headline/HomePage.dart';
import 'package:headline/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //GetX is an extra-light and powerful solution for Flutter.
    //It combines high-performance state management, intelligent dependency injection,
    //and route management quickly and practically.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Theme mode depends on device settings at the beginning.
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,

      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        "Splash Screen": (BuildContext context) => SplashScreen(),
        "Home Page": (BuildContext context) => HomePage()
      },
    );
  }
}
