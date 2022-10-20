import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final buttonImagePath;
  final String buttonText;
  final String buttonValue;
  const MyButton({
    Key? key,
    required this.buttonImagePath,
    required this.buttonText,
    required this.buttonValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 150,
      child: Column(
        children: [
          SizedBox(height: 20),
          //Icon
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                buttonImagePath,
                height: 50,
                width: 60,
              ),
            ],
          ),
          //Text
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          //Number
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                buttonValue,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(40)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(4.0, 4.0),
            blurRadius: 15.0,
            spreadRadius: 5,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4.0, -4.0),
            blurRadius: 15.0,
            spreadRadius: 5,
          ),
        ],
      ),
    );
  }
}
