import 'package:flutter/material.dart';

class CardLocal extends StatefulWidget {
  @override
  _CardLocal createState() => _CardLocal();
}

class _CardLocal extends State<CardLocal> {

  final int id;

  _CardLocal({Key key, this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      backgroundColor: Colors.white,
      body: GestureDetector(
        child: Card(),
      ),
    );
  }
}
