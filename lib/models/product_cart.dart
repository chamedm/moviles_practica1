import 'package:estructura_practica_1/models/product_cup.dart';
import 'package:estructura_practica_1/models/product_hot_drinks.dart';
import 'package:estructura_practica_1/models/product_grains.dart';

class ProductCart {
  List<ProductHotDrinks> drinks = new List<ProductHotDrinks>();
  List<ProductGrains> grains;
  List<ProductCup> cups = new List<ProductCup>();

  ProductCart({this.drinks, this.grains, this.cups});
}
