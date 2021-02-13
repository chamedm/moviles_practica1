import 'package:flutter/foundation.dart';
import 'package:estructura_practica_1/models/product_repository.dart';

class ProductItemCart {
  String productTitle;
  int productAmount;
  double productPrice;
  String productImage;
  String typeOfProduct;

  ProductItemCart(
      {this.typeOfProduct,
      @required this.productTitle,
      @required this.productAmount,
      @required this.productPrice,
      this.productImage});
}
