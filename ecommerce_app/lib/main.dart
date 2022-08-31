import 'package:ecommerce_app/bottom_nav_controller.dart';
import 'package:ecommerce_app/details_screen.dart';
import 'package:ecommerce_app/pages/add.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(const MyApp());

  Box box = await Hive.openBox("todo-list");
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // GOOGLE FONTS
        //textTheme:
        //GoogleFonts.hurricaneTextTheme(Theme.of(context).textTheme.apply()),

        //CUSTOM FONTS
        //fontFamily: 'Seasrn',
      ),
      home: BottomNavController(),
      initialRoute: '/',
      routes: {
        '/first-screen': (context) => AddScreen(),
        '/second-screen': (context) => DetailsScreen(),
      },
    );
  }
}
