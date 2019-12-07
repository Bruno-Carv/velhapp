import 'package:flutter/material.dart';
import 'package:Vivalazer/components/loginscreen.dart';

class SignIn extends StatefulWidget {
  @override
  _SignIn createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6bc5e9),
      body: LoginScreen()
    );
  }
}
