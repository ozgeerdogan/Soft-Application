import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = const [
    // [linkUrl, imagePath]
    ["https://ty.gl/rnb4zikpwf", "assets/images/1.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/2.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/6.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/7.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/10.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/11.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/12.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/13.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/14.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/15.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/16.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/17.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/a1.jpeg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/a4.jpeg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/High.jpeg"],
  ];

  // ignore: prefer_final_fields
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
}
