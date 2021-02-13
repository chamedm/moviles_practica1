import 'package:estructura_practica_1/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:estructura_practica_1/cart/item_cart.dart';
import 'package:estructura_practica_1/models/product_item_cart.dart';
import 'package:intl/intl.dart';

import '../payment.dart';
import '../profile.dart';

class Cart extends StatefulWidget {
  final List<ProductItemCart> productsList;
  Cart({
    Key key,
    @required this.productsList,
  }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final oCcy = new NumberFormat("#,###", "en_US");
  double _total = 0;
  @override
  void initState() {
    super.initState();
    for (var item in widget.productsList) {
      _total += (item.productPrice * item.productAmount);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de compras", 
          style: TextStyle(color: Colors.white),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person, color: Colors.white,),
            onPressed: () {
              Navigator.of(context).push(
                
                MaterialPageRoute(builder: (_) => Profile()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            child: ListView.builder(
              itemCount: widget.productsList.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemCart(
                  onAmountUpdated: _priceUpdate,
                  product: widget.productsList[index],
                );
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 200, bottom: 8, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
                children : [ 
                  Text("Total",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0),
                  ),
                  Text("\$${oCcy.format(_total)}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50.0),
                  ),
                ]
              ),
            ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push( 
                MaterialPageRoute(builder: (_) => Payment()),
              );
            },
            child: Text("PAGAR",
              style: TextStyle(color: Colors.white)),
            style: ButtonStyle(
              backgroundColor : MaterialStateProperty.all<Color>(Colors.grey),
              minimumSize: MaterialStateProperty.all<Size>(Size(300, 35)),
            ),
          )
        ],
      ),
    );
  }

  void _priceUpdate(double newItemPrice) {
    setState(() {
      _total += newItemPrice;
    });
  }
}
