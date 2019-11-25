import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Main createState() => Main();
}

class Main extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6bc5e9),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          child: Card(
            child: Center(
              child: TextField(),
            ),
            
          ),
        ),
      ),
    );
  }
}
