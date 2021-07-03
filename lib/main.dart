import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Mode.dart';

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
    return GetMaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      // Theme mode depends on device settings at the beginning.
      home: HomeScreen(),
    );
  }
}
