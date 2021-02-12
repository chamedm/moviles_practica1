import 'package:flutter/material.dart';
import 'package:estructura_practica_1/drinks/item_hot_drinks.dart';
import 'package:estructura_practica_1/models/product_hot_drinks.dart';

class HotDrinksPage extends StatelessWidget {
  final List<ProductHotDrinks> drinksList;
  HotDrinksPage({
    Key key,
    @required this.drinksList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bebidas calientes"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: drinksList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(top: 20),
            child: ListTile(
              dense: true,
              trailing: Image.network(
                "${drinksList[index].productImage}",
                fit: BoxFit.fill,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "${drinksList[index].productTitle}",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              subtitle: Text(
                "\$\ ${drinksList[index].productPrice}",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              onTap: () => {},
            ),
          );
        },
      ),
    );
  }
}
