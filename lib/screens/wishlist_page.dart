import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_new_project/const/reusable.dart';
import 'package:my_new_project/model/cart_model.dart';
import 'package:my_new_project/screens/home_page.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFBBFF),
      bottomNavigationBar: navBar(context, 0),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Your Wishlist",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color(0xFF810947)),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xFFFFBBFF),
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          return value.cartItems.length != 0 ? 
          Column(
            children: [
              Expanded(
                child: MasonryGridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: value.cartItems.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 7, left: 15, right: 15),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(18.0)),
                            child: Image.asset(value.cartItems[index][1]),
                          ),
                        ),
                        Row(
                          children: [
                            titleLink(value, index),
                            const Spacer(),
                            _deleteIcon(context, index),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ) : Column(children: [
        const SizedBox(height: 100),
        const Center(
          child: SizedBox(
              height: 200,
              child: Image(image: AssetImage("assets/images/wish.png"))),
        ),
        const Text(
          "My Wishlist is Empty!",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF810947)),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "Tab heart button to start saving \n             your favorite items.",
          style: TextStyle(
            color: Color(0xFF810947),
          ),
        ),
        const SizedBox(height: 30),
        Container(
          width: 300,
          height: 50,
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.black26;
                  }
                  return Colors.white;
                }),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
            child: const Text(
              "EXPORT",
              style: TextStyle(
                  color: Color(0xFF810947),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        )
      ]);
        },
      ),

      
    );
  }

  IconButton _deleteIcon(BuildContext context, int index) {
    return IconButton(
      onPressed: () {
        Provider.of<CartModel>(context, listen: false)
            .removeItemFromCart(index);
      },
      icon: const Icon(
        Icons.delete,
        color: Color(0xFF810947),
        size: 22,
      ),
    );
  }

  Row titleLink(CartModel value, int index) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            Icons.link,
            color: Color(0xFF810947),
          ),
        ),
        Hero(
          tag: value.cartItems[index][0],
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: '  TY.GL',
              style: const TextStyle(
                  fontFamily: "monster",
                  color: Color(0xFF810947),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // ignore: deprecated_member_use
                  launch(value.cartItems[index][0]);
                },
            ),
          ])),
        ),
      ],
    );
  }

  
}
