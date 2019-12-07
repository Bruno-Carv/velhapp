import 'package:Vivalazer/pages/trocarSenha.dart';
import 'package:flutter/material.dart';
import 'package:progress_button/progress_button.dart';
import 'package:Vivalazer/pages/preferencias.dart';
import 'package:Vivalazer/pages/signin.dart';

class User extends StatefulWidget {
  @override
  _User createState() => _User();
}

class _User extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
          child: Container(
            child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage:
                          NetworkImage('https://placeimg.com/640/480/any'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Text(
                            'Nome',
                            style: TextStyle(fontSize: 30.00),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Text(
                            'E-mail',
                            style: TextStyle(fontSize: 30.00),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(1, 5, 1, 1),
                  child: ProgressButton(
                    child: Text(
                      "Preferencias de eventos",
                      style: TextStyle(color: Colors.white),
                    ),
                    buttonState: ButtonState.normal,
                    backgroundColor: Colors.green,
                    progressColor: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Preferencias(),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(1, 20, 1, 1),
                  child: ProgressButton(
                    child: Text(
                      "Trocar Senha",
                      style: TextStyle(color: Colors.white),
                    ),
                    buttonState: ButtonState.normal,
                    backgroundColor: Colors.blue,
                    progressColor: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrocaSenha(),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(1, 50, 1, 1),
                  child: ProgressButton(
                    child: Text(
                      "Sair",
                      style: TextStyle(color: Colors.white),
                    ),
                    buttonState: ButtonState.normal,
                    backgroundColor: Colors.red,
                    progressColor: Theme.of(context).primaryColor,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => SignIn(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
