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
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Comunitario'),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Viagens'),
            color: Colors.blue[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Shows'),
            color: Colors.red[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Teatros'),
            color: Colors.yellow[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Esportes'),
            color: Colors.green[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Religiosos'),
            color: Colors.cyan[100],
          ),
        ],
      ),
    );
  }
}
