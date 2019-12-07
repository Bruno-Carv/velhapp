import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Preferencias extends StatefulWidget {
  @override
  _Preferencias createState() => _Preferencias();
}

class _Preferencias extends State<Preferencias> {
  final int id;

  _Preferencias({Key key, this.id});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Color(0xfFF),
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Color(0xff6bc5e9),
          systemNavigationBarIconBrightness: Brightness.light),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6bc5e9),
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Column(
                children: <Widget>[
                  Text(
                    'Nome',
                    style: TextStyle(fontSize: 30.00),
                  ),
                  TextField(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Column(
                children: <Widget>[
                  Text(
                    'E-mail',
                    style: TextStyle(fontSize: 30.00),
                  ),
                  TextField(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Column(
                children: <Widget>[
                  Text(
                    'Idade',
                    style: TextStyle(fontSize: 30.00),
                  ),
                  TextField(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
