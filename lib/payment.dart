import 'package:estructura_practica_1/utils/constants.dart';
import 'package:flutter/material.dart';

import 'profile.dart';

class Payment extends StatefulWidget {
  Payment({Key key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(CUPPIN_BLUE),
        title: Text("Pagos", 
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
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white,),
            onPressed: () {
              Navigator.of(context).push(
                
                MaterialPageRoute(builder: (_) => Profile()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top : 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom : 8),
              child: Text("Elige tu metodo de pago"),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return buildCardPayment();
                },
              ),
            ),
          ]
        ),
      ),
    );
  }

  Card buildCardPayment() {
    return Card(
      color: Color(CUPPIN_GREY),
      margin: EdgeInsets.only(top: 8, bottom: 8, left : 35, right : 35),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Icon(
                Icons.credit_card,
                size: 75.0,
              ),
            )
          )
        ],
      ),
    );
  }
}