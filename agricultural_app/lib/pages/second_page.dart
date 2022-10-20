import 'package:flutter/material.dart';
import '../components/myHeading.dart';
import '../components/mybutton.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 35.0),
          child: Column(
            children: [
              SizedBox(height: 55.0),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(children: [
                  MyHeading(
                    headingTitle: "Experiment Data",
                  ),
                ]),
              ),
              SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    buttonImagePath: "lib/icons/temperature.png",
                    buttonText: "Temperature",
                    buttonValue: "20°F",
                  ),
                  MyButton(
                    buttonImagePath: "lib/icons/humidity.png",
                    buttonText: "Humidity",
                    buttonValue: "24%",
                  ),
                ],
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    buttonImagePath: "lib/icons/soil_moisture.png",
                    buttonText: "Soil Moisture",
                    buttonValue: "35 kPa",
                  ),
                  MyButton(
                    buttonImagePath: "lib/icons/light.png",
                    buttonText: "Light",
                    buttonValue: "400 L",
                  ),
                ],
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    buttonImagePath: "lib/icons/ph.png",
                    buttonText: "PH",
                    buttonValue: "9.4",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
