import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  final String projectName;
  final String startDate;
  final String endDate;
  const MyTile({
    Key? key,
    required this.projectName,
    required this.startDate,
    required this.endDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 120,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 95,
              child: Image.asset('lib/icons/exp.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    projectName,
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "START: " + startDate,
                    style: TextStyle(
                      color: Colors.grey[700],
                      //fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "END: " + endDate,
                    style: TextStyle(
                      color: Colors.grey[700],
                      //fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ]),
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
