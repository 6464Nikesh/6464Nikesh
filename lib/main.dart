import 'package:flutter/material.dart';
import 'package:testing_app/Pages/homePage.dart';
import 'package:testing_app/pages/login.dart';
import 'package:testing_app/value/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage()
      },
    );
  }
}
