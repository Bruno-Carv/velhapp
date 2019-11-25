import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:velhapp/pages/centro.dart';
import 'package:velhapp/pages/login.dart';
import 'package:velhapp/pages/perfil.dart';
import 'package:velhapp/pages/pesquisa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Velhapp',
        theme: ThemeData(
          primaryColor: Color(0xff6bc5e9),
          accentColor: Color(0xff6bc5e9),
        ),
        home: sistema());
  }

  sistema() {
    return ChangeNotifierProvider<BottomNavigationBarProvider>(
      child: Navegacao(),
      builder: (BuildContext context) => BottomNavigationBarProvider(),
    );
  }

  login() {
    return Login();
  }
}

class Navegacao extends StatefulWidget {
  @override
  _Navegacao createState() => _Navegacao();
}

class _Navegacao extends State<Navegacao> {
  var rotas = [
    Centro(),
    Pesquisa(),
    Perfil(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
      body: rotas[provider.paginaDaRota],
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xff6bc5e9),
        backgroundColor: Color(0xfff),
        buttonBackgroundColor: Color(0xff6bc5e9),
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.people,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          provider.paginaDaRota = index;
        },
      ),
    );
  }
}

class BottomNavigationBarProvider with ChangeNotifier {
  int _paginaDaRota = 0;

  get paginaDaRota => _paginaDaRota;

  set paginaDaRota(int index) {
    _paginaDaRota = index;
    notifyListeners();
  }
}
