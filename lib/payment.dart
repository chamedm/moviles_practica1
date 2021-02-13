import 'package:estructura_practica_1/utils/constants.dart';
import 'package:flutter/material.dart';

import 'profile.dart';

class Payment extends StatefulWidget {
  Payment({Key key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  void _showEventDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: ListTile(
            title: Text('Orden Exitosa!',
              style: TextStyle(fontSize: 24),
            ),
            leading : Icon(Icons.emoji_food_beverage,
              size: 35,
            ),
            subtitle: Text("Tazas Cupping"),
          ),
          content: Text('Tu orden ha sido registrada, para mas informacion busca en la opcion historial de compras en tu perfil'),
          actions: [
            FlatButton(
              textColor: Color(0xFF6200EE),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      }
    );
  }

  var paymentMethods = [
    
      {'str' : "Tarjeta de credito" ,
        'icon' : Icons.credit_card
      },
      {'str' : "PayPal",
        'icon' : Icons.account_balance_wallet_rounded },
      {'str' : "Tarjeta de regalo" ,
        'icon' : Icons.card_giftcard},
  ];
  

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
              child: Text("Elige tu metodo de pago: ",
                style : TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return buildCardPayment(paymentMethods[index]['icon'], paymentMethods[index]['str']);
                },
              ),
            ),
          ]
        ),
      ),
    );
  }

  GestureDetector buildCardPayment(i,s) {
    return GestureDetector(
          child: Card(
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
                  i,
                  size: 75.0,
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.only(top : 8, bottom : 8, left : 30),
              child: Container(
                width: 100,
                child: Text(s,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top : 75, left: 30),
              child: Icon(Icons.edit),
            ),
          ],
        ),
      ),
      onTap: () {
        _showEventDialog(context);
      },
    );
  }
}