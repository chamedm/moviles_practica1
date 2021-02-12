import 'package:flutter/material.dart';

class ItemCart extends StatefulWidget {
  final dynamic product;
  final ValueChanged<double> onAmountUpdated;
  ItemCart({
    Key key,
    @required this.onAmountUpdated,
    @required this.product,
  }) : super(key: key);

  @override
  _ItemCartState createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {
  @override
  Widget build(BuildContext context) {
    return Card(
      
      margin: EdgeInsets.all(24),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.network(
                  "https://www.lavazza.it/content/dam/lavazza/products/caffe/macinato/moka/qualitaoro/new_render/tin_250_en/Tin-oro-en-250-thumb.png",
                  fit: BoxFit.contain,
                  width: 75,
                  height: 75,
                  ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text("${widget.product.productTitle}",
                          style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
                        ),
                        Text("Tamanio grande"),
                        Text("Leche light")
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    IconButton(icon: Icon(Icons.add_circle_outline), onPressed: _addProd),
                    Text("${widget.product.productAmount}"),
                    IconButton(icon: Icon(Icons.remove_circle_outline), onPressed: _remProd),
                    Text("\$${widget.product.productPrice}",
                      style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Icon(Icons.favorite),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Icon(Icons.delete),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _addProd() {
    setState(() {
      ++widget.product.productAmount;
    });
    widget.onAmountUpdated(widget.product.productPrice);
  }

  void _remProd() {
    setState(() {
      --widget.product.productAmount;
    });
    widget.onAmountUpdated(-1 * widget.product.productPrice);
  }
}
