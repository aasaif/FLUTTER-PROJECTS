//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walletappui/util/my_button.dart';
import 'package:walletappui/util/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/my_listtile.dart';

import 'second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //pagecontroller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal[700],
        child: Icon(
          Icons.wallet_outlined,
          size: 32,
        ),
        elevation: 10,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal[800],
        child: Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                iconSize: 38,
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
                iconSize: 38,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " Cards",
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                  //Add button
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            //card
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                children: [
                  Mycard(
                    balance: 5250,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.teal[800],
                  ),
                  Mycard(
                    balance: 5450,
                    cardNumber: 26637273,
                    expiryMonth: 9,
                    expiryYear: 25,
                    color: Colors.cyan[800],
                  ),
                  Mycard(
                    balance: 6362,
                    cardNumber: 21345674,
                    expiryMonth: 5,
                    expiryYear: 29,
                    color: Colors.lime[800],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // dot indicator
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade700,
              ),
            ),

            //3 buttons -> send + pay + bills
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  InkWell(
                    onTap: () => Get.to(() => SecondPage()),
                    child: MyButton(
                      iconImagePath: 'lib/icons/send-money.png',
                      buttonText: 'Send',
                    ),
                  ),
                  //pay button
                  InkWell(
                    child: MyButton(
                      iconImagePath: 'lib/icons/credit-card.png',
                      buttonText: 'Pay',
                    ),
                  ),

                  //bill button
                  InkWell(
                    child: MyButton(
                      iconImagePath: 'lib/icons/bill.png',
                      buttonText: 'Bills',
                    ),
                  ),
                ],
              ),
            ),

            // columns -> stats + transactions
            Column(
              children: [
                MyListTile(
                  imagepath: 'lib/icons/statistics.png',
                  titleText: 'Statistics',
                  subtitleText: 'Payments and Income',
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () => Get.to(() => SecondPage()),
                  child: MyListTile(
                    imagepath: 'lib/icons/transaction.png',
                    titleText: 'Transactions',
                    subtitleText: 'Transactions history',
                  ),
                ),
              ],
            ),

            // bollom navbar
          ],
        ),
      ),
    );
  }
}
