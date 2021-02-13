import 'package:estructura_practica_1/drinks/hot_drinks_details.dart';
import 'package:estructura_practica_1/models/product_item_cart.dart';
import 'package:flutter/material.dart';
import '../models/product_hot_drinks.dart';

class ItemHotDrinks extends StatefulWidget {
  final ProductHotDrinks drink;
  final List<ProductItemCart> cart;

  ItemHotDrinks({Key key, this.drink, this.cart}) : super(key: key);

  @override
  _ItemHotDrinksState createState() => _ItemHotDrinksState();
}

class _ItemHotDrinksState extends State<ItemHotDrinks> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          height: 220,
          child: Stack(
            children: [
              Container(
                height: 200,
                margin:
                    EdgeInsets.only(top: 28, bottom: 24, left: 24, right: 24),
                decoration: BoxDecoration(
                  color: Theme.of(context).selectedRowColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16, top: 16),
                            width: 180,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(230, 226, 218, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Text(
                                "${widget.drink.productTitle}",
                                style: Theme.of(context).textTheme.headline6,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 16, top: 16),
                            width: 180,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(230, 226, 218, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                " \$\ ${widget.drink.productPrice}",
                                style: Theme.of(context).textTheme.subtitle1,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
              Align(
                alignment: Alignment.topRight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: EdgeInsets.only(top: 60, right: 40),
                    child: Image.network(
                      "${widget.drink.productImage}",
                      fit: BoxFit.cover,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      HotDrinksDetails(drink: widget.drink, cart: widget.cart)))
            });
  }
}
