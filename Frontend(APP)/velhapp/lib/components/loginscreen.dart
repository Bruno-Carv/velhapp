import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:Vivalazer/pages/sistema.dart';

const users = const {
  'Vivalazer@gmail.com': '12345',
  'eduardo@gmail.com': 'hunter',
};

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Usuario não encontrado';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Usuario não encontrado';
      }
      return null;
    });
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
    return FlutterLogin(
      title: 'Viva lazer',
      onLogin: _authUser,
      onSignup: _authUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomeSistema(),
          ),
        );
      },
      onRecoverPassword: _recoverPassword,
      theme: LoginTheme(
        textFieldStyle: TextStyle(
          color: Colors.black,
          fontSize: 28.00,
        ),
      ),
    );
  }
}
