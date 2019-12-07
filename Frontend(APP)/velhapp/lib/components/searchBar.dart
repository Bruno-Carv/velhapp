import 'package:flutter/material.dart';
import 'package:floating_search_bar/floating_search_bar.dart';

class SearchBar extends StatelessWidget {
  
  final onChanged;
  final onTap;
  final items;
  final qrItems;

  SearchBar({
    this.onChanged,
    this.onTap,
    @required this.items,
    @required this.qrItems
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: FloatingSearchBar.builder(
        itemCount: qrItems,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: items,
          );
        },
        onChanged: onChanged,
        onTap: onTap,
        decoration: InputDecoration.collapsed(
            hintText: "Pesquisar eventos...",
            hintStyle: TextStyle(
              fontSize: 24.00,
            )),
      ),
    );
  }
}
