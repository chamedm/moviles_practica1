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
    return Container(
      color: PRIMARY_COLOR[900],
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
                    height: 50,
                    elevation: 2,
                    onPressed: () {},
                    color: SECONDARY_COLOR[400],
                    child: Text(
                      "REGISTRATE",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ]),
            Row(children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: MaterialButton(
                    height: 50,
                    elevation: 2,
                    onPressed: () {},
                    color: SECONDARY_COLOR[400],
                    child: Text(
                      "INGRESA",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
