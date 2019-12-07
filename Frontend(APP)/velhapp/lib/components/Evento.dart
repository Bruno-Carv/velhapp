import 'package:flutter/material.dart';

class Evento extends StatelessWidget {
  final String name;
  Evento(this.name);
  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(this.name));
  }
}