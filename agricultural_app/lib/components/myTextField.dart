import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  //final TextFieldicon;
  final TextFieldHintText;
  const MyTextField({
    Key? key,
    //this.TextFieldicon,
    this.TextFieldHintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFe6dfd8), Color(0xFFf7f5ec)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.4],
          tileMode: TileMode.clamp,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
      child: TextField(
        expands: false,
        style: TextStyle(fontSize: 20.0, color: Colors.black54),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12.0),
          /*prefixIcon: Icon(
            TextFieldicon,
            color: Colors.black54,
          ),*/
          hintText: TextFieldHintText,
          hintStyle: TextStyle(color: Colors.black54),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(32.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ),
    );
  }
}
