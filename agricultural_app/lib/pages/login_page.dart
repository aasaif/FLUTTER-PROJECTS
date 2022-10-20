import 'package:agricultural_app/components/myHeading.dart';
import 'package:agricultural_app/components/myTextField.dart';
import 'package:flutter/material.dart';
import 'package:agricultural_app/components/myTile.dart';
import 'package:get/get.dart';

import 'first_page.dart';
import 'second_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            //image
            Row(
              children: [
                Image.asset(
                  "lib/icons/login.png",
                  height: 300,
                  width: 392.7,
                ),
              ],
            ),
            SizedBox(height: 60),
            //Email address
            MyTextField(
              //TextFieldicon: ,
              TextFieldHintText: "email",
            ),
            SizedBox(height: 10),
            //Password
            MyTextField(
              //TextFieldicon: 'lib/icons/password.png',
              TextFieldHintText: "password",
            ),
            SizedBox(height: 35),
            //Login
            InkWell(
              onTap: () => Get.to(() => FirstPage()),
              child: MyHeading(headingTitle: "Login"),
            ),
          ],
        ),
      ),
    );
  }
}
