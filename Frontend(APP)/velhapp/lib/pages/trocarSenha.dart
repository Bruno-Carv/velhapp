import 'package:Vivalazer/pages/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:progress_button/progress_button.dart';

class TrocaSenha extends StatefulWidget {
  @override
  _TrocaSenha createState() => _TrocaSenha();
}

class _TrocaSenha extends State<TrocaSenha> {
  final int id;

  _TrocaSenha({Key key, this.id});

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text("Confirmação"),
          content: Text("Senha atualizado com suceeso"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

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
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Senha antiga",
                          style: TextStyle(fontSize: 28.00),
                        ),
                        TextField(
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Nova senha",
                          style: TextStyle(fontSize: 28.00),
                        ),
                        TextField(
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Confirma nova senha",
                          style: TextStyle(fontSize: 28.00),
                        ),
                        TextField(
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 10, 1),
                child: ProgressButton(
                  child: Text(
                    "Confirma",
                    style: TextStyle(color: Colors.white),
                  ),
                  buttonState: ButtonState.normal,
                  backgroundColor: Colors.green,
                  progressColor: Theme.of(context).primaryColor,
                  onPressed: () {
                    _showDialog();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 10, 1),
                child: ProgressButton(
                  child: Text(
                    "Cancelar",
                    style: TextStyle(color: Colors.white),
                  ),
                  buttonState: ButtonState.normal,
                  backgroundColor: Colors.red,
                  progressColor: Theme.of(context).primaryColor,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => User(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
