import 'package:agricultural_app/pages/login_page.dart';
import 'package:agricultural_app/pages/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/first_page.dart';
import 'route/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      //initialRoute: loginPage,
      //getPages: getPages,
    );
  }
}
