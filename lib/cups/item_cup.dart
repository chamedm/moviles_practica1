import 'package:estructura_practica_1/models/product_cup.dart';
import 'package:flutter/material.dart';

class ItemCup extends StatefulWidget {
  final ProductCup cup;
  ItemCup({
    Key key,
    @required this.cup,
  }) : super(key: key);

  @override
  _ItemCupState createState() => _ItemCupState();
}

class _ItemCupState extends State<ItemCup> {
  @override
  Widget build(BuildContext context) {
    // return Container(child: Text("${widget.drink.productTitle}"));
    return Container(
      height: 220,
      child: Stack(
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.only(top: 28, bottom: 24, left: 24, right: 24),
            decoration: BoxDecoration(
              color: Color.fromRGBO(157, 147, 123, .8),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: ListView(physics: NeverScrollableScrollPhysics(), children: [
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
                        "${widget.cup.productTitle}",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontWeight: FontWeight.bold),
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
                        " \$\ ${widget.cup.productPrice}",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(fontWeight: FontWeight.bold),
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
                  "${widget.cup.productImage}",
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
