import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = const [
    // [linkUrl, imagePath]
    ["https://ty.gl/rnb4zikpwf", "assets/images/1.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/2.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/3.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/4.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/5.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/6.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/7.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/8.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/9.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/10.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/11.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/12.jpg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/13.jpeg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/14.jpeg"],
    ["https://ty.gl/rnb4zikpwf", "assets/images/15.jpeg"],
  ];

  // ignore: prefer_final_fields
  List _cartItems = [];

  bool isLike = false;

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    isLike = true;
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    isLike = false;
    notifyListeners();
  }
}
