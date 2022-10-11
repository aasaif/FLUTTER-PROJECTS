import 'package:get/get.dart';
import 'package:walletappui/pages/home_page.dart';

import '../pages/second_page.dart';

const String homePage = "/home-page";
const String secondPage = "/second-page";

List<GetPage> getPages = [
  GetPage(
      name: homePage,
      page: () => HomePage(),
      transition: Transition.leftToRight),
  GetPage(
      name: secondPage,
      page: () => SecondPage(),
      transition: Transition.leftToRight),
];
