import 'package:flutter/material.dart';
import 'home/home.dart';
import 'utils/constants.dart';

class LogIn extends StatefulWidget {
  LogIn({Key key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  var _nameInputController = TextEditingController();
  var _pswInputController = TextEditingController();
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
          child: ListView(children: [
            Padding(
                padding: EdgeInsets.only(top: 50),
                child:
                    Image(image: AssetImage('assets/images/logo_claro.png'))),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  controller: _nameInputController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hoverColor: Colors.white,
                    focusColor: Colors.white,
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: "Nombre completo",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                  obscureText: true,
                  controller: _pswInputController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hoverColor: Colors.white,
                    focusColor: Colors.white,
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black, fontSize: 15),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                height: 50,
                elevation: 2,
                color: SECONDARY_COLOR[400],
                child: Text(
                  "ENTRAR",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home(title: APP_TITLE)));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "¿Olvidaste tu contraseña?",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 10),
              child: Text(
                "¿Aún no tienes cuenta?",
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "REGISTRATE",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ]),
        ),
      ),
    );
  }
}
