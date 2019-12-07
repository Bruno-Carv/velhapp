import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:Vivalazer/pages/signin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Viva lazer',
        theme: ThemeData(
          primaryColor: Color(0xff6bc5e9),
          accentColor: Color(0xff6bc5e9),
        ),
        home: login()
    );
  }
  login() {
    return SignIn();
  }
  
}