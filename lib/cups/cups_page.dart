import 'package:estructura_practica_1/cups/item_cup.dart';
import 'package:flutter/material.dart';
import 'package:estructura_practica_1/models/product_cup.dart';

class CupsPage extends StatelessWidget {
  final List<ProductCup> cupsList;
  CupsPage({
    Key key,
    @required this.cupsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tazas"),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(5),
          itemCount: cupsList.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemCup(cup: cupsList[index]);
          }),
    );
  }
}
