import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:Vivalazer/pages/home.dart';
import 'package:Vivalazer/pages/search.dart';
import 'package:Vivalazer/pages/user.dart';

class HomeSistema extends StatelessWidget {
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
        home: sistema());
  }

  sistema() {
    return ChangeNotifierProvider<BottomNavigationBarProvider>(
      child: Navegacao(),
      builder: (BuildContext context) => BottomNavigationBarProvider(),
    );
  }
}

class Navegacao extends StatefulWidget {
  @override
  _Navegacao createState() => _Navegacao();
}

class _Navegacao extends State<Navegacao> {
  var rotas = [Home(title: 'Viva lazer'), SearchList(), User()];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Color(0xfFF),
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Color(0xff6bc5e9),
          systemNavigationBarIconBrightness: Brightness.light),
    );
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
      body: rotas[provider.paginaDaRota],
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xff6bc5e9),
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
        buttonBackgroundColor: Color(0xff6bc5e9),
        items: <Widget>[
          Container(
            child: IconButton(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(
                Icons.people,
                size: 30,
                color: Colors.white,
              ),
            ),
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
