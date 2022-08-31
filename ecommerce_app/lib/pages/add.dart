import 'package:ecommerce_app/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  //TexField controller step -1
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TexField controller step -3
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(_controller.text);
        },
        child: Icon(Icons.add_box_outlined),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextField(
                  //TexField controller step -2
                  controller: _controller,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(hintText: "Enter your Email"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "This field can't be empty";
                    } else if (val.length < 4) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(hintText: "Enter your Name"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "This field can't be empty";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(hintText: "Enter your Password"),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "This field can't be empty";
                    } else if (val.length < 4) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (_) => DetailsScreen()));
                      }
                    },
                    child: Text("Validate Now"),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                    onPressed: (() {
                      Navigator.pushNamed(context, '/second-screen');
                    }),
                    child: Text("First Screen"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
