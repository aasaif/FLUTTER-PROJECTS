import 'package:get/get.dart';
import 'package:agricultural_app/pages/login_page.dart';
import 'package:agricultural_app/pages/second_page.dart';
import 'package:agricultural_app/pages/first_page.dart';

const String loginPage = "/login-page";
const String firstPage = "/first-page";
const String secondPage = "/second-page";

List<GetPage> getpages = [
  GetPage(
      name: loginPage,
      page: () => LoginPage(),
      transition: Transition.leftToRight),
  GetPage(
      name: firstPage,
      page: () => FirstPage(),
      transition: Transition.leftToRight),
  GetPage(
      name: secondPage,
      page: () => SecondPage(),
      transition: Transition.leftToRight),
];
