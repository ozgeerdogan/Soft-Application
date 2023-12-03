import 'package:flutter/material.dart';
import 'package:my_new_project/const/reusable.dart';
import 'package:my_new_project/screens/home_page.dart';

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
      body: Column(children: [
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
      ]),
    );
  }
}
