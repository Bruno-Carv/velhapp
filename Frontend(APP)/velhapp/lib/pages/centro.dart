import 'package:flutter/material.dart';

class Centro extends StatefulWidget {
  Centro({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Main createState() => Main();
}

class Main extends State<Centro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              child: Row(
                children: <Widget>[Text('CENTRO')],
              ),
            )
          ],
        ),
      ),
    );
  }
}
