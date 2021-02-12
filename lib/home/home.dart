import 'package:estructura_practica_1/cart/cart.dart';
import 'package:estructura_practica_1/models/product_item_cart.dart';
import 'package:flutter/material.dart';
import '../cups/cups_page.dart';
import '../drinks//hot_drinks_page.dart';
import '../grains/grains_page.dart';
import '../models/product_repository.dart';
import '../home/item_home.dart';
import '../profile.dart';

class Home extends StatefulWidget {
  final String title;
  Home({Key key, this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).push(
                // TODO: Eliminar este boton y adaptar todo el contenido de la pagina de perfil en un Drawer aqui en la pantalla Home
                MaterialPageRoute(builder: (_) => Profile()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder : (_) => Cart(productsList: [
                      ProductItemCart(productTitle: "ProductoA", productPrice: 100, productAmount: 1 ),
                      ProductItemCart(productTitle: "ProductoB", productPrice: 50, productAmount: 2 ),
                      ProductItemCart(productTitle: "ProductoC", productPrice: 75, productAmount: 4 ),
                    ]
                  )
                )
              );
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: _openHotDrinksPage,
            child: ItemHome(
              title: "Bebidas calientes",
              image:
                  "https://images.unsplash.com/photo-1535403396060-dd9daec50b74?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
            ),
          ),
          GestureDetector(
            onTap: _openCupsPage,
            child: ItemHome(
              title: "Tazas",
              image:
                  "https://images.unsplash.com/photo-1599225401144-5cc67ac7aa6b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
            ),
          ),
          GestureDetector(
            onTap: _openGrainsPage,
            child: ItemHome(
              title: "Granos",
              image:
                  "https://images.unsplash.com/photo-1611691934391-5a8805e0bd1a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
            ),
          ),
          ItemHome(
            title: "Postres",
            image:
                "https://images.unsplash.com/photo-1558395872-85709c6d3639?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
          ),
        ],
      ),
    );
  }

  void _openHotDrinksPage() {
    final hotDrinksList = ProductRepository.loadProducts(ProductType.BEBIDAS);
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HotDrinksPage(drinksList: hotDrinksList)));
  }

  void _openGrainsPage() {
    final grainsList = ProductRepository.loadProducts(ProductType.GRANO);
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => GrainsPage(grainsList: grainsList)));
  }

  void _openCupsPage() {
    final cupList = ProductRepository.loadProducts(ProductType.TAZAS);

    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => CupsPage(cupsList: cupList)));
  }
}
