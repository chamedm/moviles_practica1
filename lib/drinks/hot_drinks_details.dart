import '../models/product_hot_drinks.dart';
import 'package:flutter/material.dart';

class HotDrinksDetails extends StatefulWidget {
  final ProductHotDrinks drink;
  HotDrinksDetails({Key key, @required this.drink}) : super(key: key);

  @override
  _HotDrinksDetailsState createState() => _HotDrinksDetailsState();
}

class _HotDrinksDetailsState extends State<HotDrinksDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: <Widget>[
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "${widget.drink.productImage}",
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),
        )
      ]),
    );
  }
}
