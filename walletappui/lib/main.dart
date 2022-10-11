import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walletappui/pages/home_page.dart';

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
      home: HomePage(),
      initialRoute: homePage,
      getPages: getPages,
    );
  }
}
