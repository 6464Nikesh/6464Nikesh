import 'package:flutter/material.dart';
import 'package:testing_app/Pages/homePage.dart';
import 'package:testing_app/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/homePage",
      routes: {
        "/": (context) => LoginPage(),
        "/homePage": (context) => Homepage()
      },
    );
  }
}
