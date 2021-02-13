import 'package:estructura_practica_1/grains/item_grains.dart';
import 'package:estructura_practica_1/models/product_grains.dart';
import 'package:estructura_practica_1/models/product_item_cart.dart';
import 'package:flutter/material.dart';

class GrainsPage extends StatelessWidget {
  final List<ProductGrains> grainsList;
  final List<ProductItemCart> cart;

  GrainsPage({Key key, @required this.grainsList, this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Granos"),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(5),
          itemCount: grainsList.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemGrains(grain: grainsList[index], cart: cart);
          }),
    );
  }
}
