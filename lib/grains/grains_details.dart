import '../models/product_grains.dart';
import 'package:flutter/material.dart';

class GrainsDetails extends StatefulWidget {
  final ProductGrains grain;
  GrainsDetails({Key key, @required this.grain}) : super(key: key);

  @override
  _GrainsDetailsState createState() => _GrainsDetailsState();
}

class _GrainsDetailsState extends State<GrainsDetails> {
  var _cuartoSelected = true;
  var _kiloSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${widget.grain.productTitle}"),
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
                      "${widget.grain.productImage}",
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
                "${widget.grain.productTitle}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                "${widget.grain.productDescription}",
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
                  "\$\ ${widget.grain.productPrice}",
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                      child: Text("Cuarto"),
                      highlightElevation: 3,
                      color: _cuartoSelected
                          ? Color.fromRGBO(151, 181, 230, .8)
                          : Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () => {
                            setState(() {
                              widget.grain.productWeight = ProductWeight.CUARTO;
                              widget.grain.productPrice =
                                  widget.grain.productPriceCalculator();
                              _cuartoSelected = true;
                              _kiloSelected = false;
                            })
                          }),
                  MaterialButton(
                      child: Text("Kilo"),
                      highlightElevation: 3,
                      color: _kiloSelected
                          ? Color.fromRGBO(151, 181, 230, .8)
                          : Colors.grey[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () => {
                            setState(() {
                              widget.grain.productWeight = ProductWeight.KILO;
                              widget.grain.productPrice =
                                  widget.grain.productPriceCalculator();
                              _cuartoSelected = false;
                              _kiloSelected = true;
                            })
                          }),
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
