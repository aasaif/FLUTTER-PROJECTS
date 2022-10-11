import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final dynamic imagepath;
  final String titleText;
  final String subtitleText;

  const MyListTile({
    Key? key,
    required this.imagepath,
    required this.titleText,
    required this.subtitleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 80.0,
                padding: const EdgeInsets.all(10),
                child: Image.asset(imagepath),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleText,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    subtitleText,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Icon(Icons.arrow_forward_ios),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
