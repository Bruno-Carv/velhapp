import 'package:flutter/material.dart';
import 'package:floating_search_bar/floating_search_bar.dart';

class Pesquisa extends StatefulWidget {
  Pesquisa({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Main createState() => Main();
}

class Main extends State<Pesquisa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 16.0),
          child: FloatingSearchBar.builder(
            itemCount: 500,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Container(
                  width: 350,
                  height: 100,
                  child: Card(
                    child: Text('oi'),
                  ),
                ),
              );
            },
            onChanged: (String value) {},
            onTap: () {},
            decoration: InputDecoration.collapsed(
              hintText: "Search...",
            ),
          ),
        ),
      ),
    );
  }
}
