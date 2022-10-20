import 'package:agricultural_app/components/myTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () => Get.to(() => SecondPage()),
                      child: MyTile(
                        projectName: "PROJECT ONE",
                        startDate: "11.11.20",
                        endDate: "12.12.22",
                      ),
                    ),
                    SizedBox(height: 35),
                    InkWell(
                      onTap: () => Get.to(() => SecondPage()),
                      child: MyTile(
                        projectName: "PROJECT ONE",
                        startDate: "11.11.20",
                        endDate: "12.12.22",
                      ),
                    ),
                    SizedBox(height: 35),
                    InkWell(
                      onTap: () => Get.to(() => SecondPage()),
                      child: MyTile(
                        projectName: "PROJECT ONE",
                        startDate: "11.11.20",
                        endDate: "12.12.22",
                      ),
                    ),
                    SizedBox(height: 35),
                    InkWell(
                      onTap: () => Get.to(() => SecondPage()),
                      child: MyTile(
                        projectName: "PROJECT ONE",
                        startDate: "11.11.20",
                        endDate: "12.12.22",
                      ),
                    ),
                    SizedBox(height: 35),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
