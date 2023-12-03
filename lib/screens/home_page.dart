import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_new_project/const/reusable.dart';
import 'package:my_new_project/model/cart_model.dart';
import 'package:my_new_project/screens/grocery_item_tile.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Builder(
        builder: (context) {
          return Scaffold(
              bottomNavigationBar: navBar(context, 1),
              body: SafeArea(
                  child: Container(
                      color: const Color(0xFFFFBBFF),
                      child: Expanded(child: Consumer<CartModel>(
                        builder: (BuildContext context, CartModel value,
                            Widget? child) {
                          return MasonryGridView.builder(
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                                const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                            itemCount: value.shopItems.length,
                            itemBuilder: (context, index) {
                              return GroceryItemTile(
                                linkUrl: value.shopItems[index][0],
                                imagePath: value.shopItems[index][1],
                                onPressed: () => Provider.of<CartModel>(context,
                                        listen: false)
                                    .addItemToCart(index),
                              );
                            },
                          );
                        },
                      )))));
        },
      ),
    );
  }
}
