import 'package:estructura_practica_1/drinks/hot_drinks_page.dart';
import 'package:estructura_practica_1/models/product_repository.dart';
import 'package:flutter/material.dart';
import 'package:estructura_practica_1/home/home.dart';
import 'package:estructura_practica_1/utils/constants.dart';
import 'identity.dart';
import 'register.dart';
import 'log_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final hotDrinksList = ProductRepository.loadProducts(ProductType.BEBIDAS);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      theme: ThemeData(
        primarySwatch: PRIMARY_COLOR,
      ),
      // home: Home(title: APP_TITLE),
      home: Identity(),
      routes: {
        "/home": (context) => Home(title: APP_TITLE),
        "/register": (context) => Register(),
        "/logIn": (context) => LogIn(),
        "/hotDrinks": (context) => HotDrinksPage(drinksList: hotDrinksList),
        // TODO: Add routes for coffeeGrains and Cups when they have pages
      },
    );
  }
}
