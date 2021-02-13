import 'package:estructura_practica_1/models/product_cup.dart';
import 'package:flutter/material.dart';

class CupDetails extends StatefulWidget {
  final ProductCup cup;
  CupDetails({Key key, @required this.cup}) : super(key: key);

  @override
  _CupDetailsState createState() => _CupDetailsState();
}

class _CupDetailsState extends State<CupDetails> {
  var _whiteSelected = true;
  var _blackSelected = false;
  var _blueSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${widget.cup.productTitle}"),
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
                      "${widget.cup.productImage}",
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
                "${widget.cup.productTitle}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                "${widget.cup.productDescription}",
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
                  "\$\ ${widget.cup.productPrice}",
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
                      child: Text("White"),
                      highlightElevation: 3,
                      color: _whiteSelected
                          ? Color.fromRGBO(151, 181, 230, .8)
                          : Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () => {
                            setState(() {
                              widget.cup.productColor = ProductColor.WHITE;
                              _whiteSelected = true;
                              _blackSelected = false;
                              _blueSelected = false;
                            })
                          }),
                  MaterialButton(
                      child: Text("Black"),
                      highlightElevation: 3,
                      color: _blackSelected
                          ? Color.fromRGBO(151, 181, 230, .8)
                          : Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () => {
                            setState(() {
                              widget.cup.productColor = ProductColor.WHITE;
                              _whiteSelected = false;
                              _blackSelected = true;
                              _blueSelected = false;
                            })
                          }),
                  MaterialButton(
                      child: Text("Blue"),
                      highlightElevation: 3,
                      color: _blueSelected
                          ? Color.fromRGBO(151, 181, 230, .8)
                          : Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () => {
                            setState(() {
                              widget.cup.productColor = ProductColor.WHITE;
                              _whiteSelected = false;
                              _blackSelected = false;
                              _blueSelected = true;
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
