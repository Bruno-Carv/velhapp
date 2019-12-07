import 'package:flutter/material.dart';
import 'package:Vivalazer/components/Evento.dart';
import 'package:Vivalazer/components/searchBar.dart';
import 'package:Vivalazer/pages/CardLocal.dart';
import 'package:Vivalazer/pages/detalhes.dart';

class SearchList extends StatefulWidget {
  SearchList({Key key}) : super(key: key);
  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  Future<dynamic> json;

  List _list;

  String _searchText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchBar(
        onChanged: (String pesquisa) {},
        qrItems: 400,
        items: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detalhes(),
                ),
              );
            },
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://placeimg.com/640/480/any',
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Titulo",
                        style: TextStyle(fontSize: 30.00),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(5),
        ),
      ),
    );
  }

  List<Widget> _buildList() {
    return _list.map((contact) => Text(contact)).toList();
  }

  List<Widget> _buildSearchList() {
    if (_searchText.isEmpty) {
      return _list.map((contact) => Evento(contact)).toList();
    } else {
      List<String> _searchList = List();
      for (int i = 0; i < _list.length; i++) {
        String name = _list.elementAt(i);
        if (name.toLowerCase().contains(_searchText.toLowerCase())) {
          _searchList.add(name);
        }
      }
      return _searchList.map((contact) => Evento(contact)).toList();
    }
  }

  rotaCard() {
    return CardLocal();
  }
}
