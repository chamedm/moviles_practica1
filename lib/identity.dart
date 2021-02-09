import 'package:flutter/material.dart';
import 'package:estructura_practica_1/utils/constants.dart';

import 'utils/constants.dart';

class Identity extends StatefulWidget {
  Identity({Key key}) : super(key: key);

  @override
  _IdentityState createState() => _IdentityState();
}

class _IdentityState extends State<Identity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 0.9],
                colors: [Color.fromRGBO(33, 66, 85, 1.0), Colors.black])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 50),
                  child:
                      Image(image: AssetImage('assets/images/logo_claro.png'))),
              Row(children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      elevation: 2,
                      color: SECONDARY_COLOR[400],
                      child: Text(
                        "REGISTRATE",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/register");
                      },
                    ),
                  ),
                ),
              ]),
              Row(children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      elevation: 2,
                      color: SECONDARY_COLOR[400],
                      child: Text(
                        "INGRESA",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/logIn");
                      },
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
