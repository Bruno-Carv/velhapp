import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  Perfil({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Main createState() => Main();
}

class Main extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}
