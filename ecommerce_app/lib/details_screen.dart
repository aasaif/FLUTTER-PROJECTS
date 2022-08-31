import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: (() {
                      Navigator.pop(context);
                    }),
                    child: Text("Back to First Screen"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
