import '../models/product_hot_drinks.dart';
import 'package:flutter/material.dart';

class HotDrinksDetails extends StatefulWidget {
  final ProductHotDrinks drink;
  HotDrinksDetails({Key key, @required this.drink}) : super(key: key);

  @override
  _HotDrinksDetailsState createState() => _HotDrinksDetailsState();
}

class _HotDrinksDetailsState extends State<HotDrinksDetails> {
  var _smallSelected = true;
  var _mediumSelected = false;
  var _largeSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${widget.drink.productTitle}"),
        ),
        body: Container(
          child: ListView(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  right: 45, left: 45, top: 20, bottom: 20),
              child: Container(
                color: Color.fromRGBO(235, 170, 59, .8),
                height: 320,
                width: 230,
                child: Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      "${widget.drink.productImage}",
                      fit: BoxFit.cover,
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                "${widget.drink.productTitle}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                "${widget.drink.productDescription}",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontSize: 18),
              ),
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Tamaños disponibles",
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 80, top: 20, right: 20),
                child: Text(
                  "\$\ ${widget.drink.productPrice}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(fontSize: 30),
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                      child: Text("Chico"),
                      highlightElevation: 3,
                      color: _smallSelected
                          ? Color.fromRGBO(151, 181, 230, .8)
                          : Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () => {
                            setState(() {
                              widget.drink.productSize = ProductSize.CH;
                              widget.drink.productPrice =
                                  widget.drink.productPriceCalculator();
                              _smallSelected = true;
                              _mediumSelected = false;
                              _largeSelected = false;
                            })
                          }),
                  MaterialButton(
                      child: Text("Mediano"),
                      highlightElevation: 3,
                      color: _mediumSelected
                          ? Color.fromRGBO(151, 181, 230, .8)
                          : Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () => {
                            setState(() {
                              widget.drink.productSize = ProductSize.M;
                              widget.drink.productPrice =
                                  widget.drink.productPriceCalculator();
                              _smallSelected = false;
                              _mediumSelected = true;
                              _largeSelected = false;
                            })
                          }),
                  MaterialButton(
                      child: Text("Grande"),
                      highlightElevation: 3,
                      color: _largeSelected
                          ? Color.fromRGBO(151, 181, 230, .8)
                          : Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () => {
                            setState(() {
                              widget.drink.productSize = ProductSize.G;
                              widget.drink.productPrice =
                                  widget.drink.productPriceCalculator();
                              _smallSelected = false;
                              _mediumSelected = false;
                              _largeSelected = true;
                            })
                          })
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                      minWidth: 150,
                      height: 50,
                      color: Color.fromRGBO(188, 176, 161, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Agregar al carrito",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white),
                      ),
                      onPressed: () => {}),
                  MaterialButton(
                      minWidth: 150,
                      height: 50,
                      color: Color.fromRGBO(188, 176, 161, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Comprar ahora",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white),
                      ),
                      onPressed: () => {})
                ],
              ),
            )
          ]),
        ));
  }
}
