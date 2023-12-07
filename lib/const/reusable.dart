import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_new_project/screens/home_page.dart';
import 'package:my_new_project/screens/wishlist_page.dart';
import 'package:my_new_project/screens/profile_page.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 300,
    height: 300,
  );
}

TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: const Color.fromARGB(255, 165, 162, 162),
    style: const TextStyle(color: Color.fromARGB(255, 165, 162, 162)),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: const Color.fromARGB(255, 165, 162, 162),
      ),
      labelText: text,
      labelStyle: const TextStyle(color: Color.fromARGB(255, 165, 162, 162)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.7),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Container firebaseUIButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      // ignore: sort_child_properties_last
      child: Text(
        title,
        style: const TextStyle(
            color: Color(0xFF810947),
            fontWeight: FontWeight.bold,
            fontSize: 16),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}

CurvedNavigationBar navBar(context, index) {
  return CurvedNavigationBar(
      index: index,
      height: 50,
      color: Colors.white,
      backgroundColor: const Color(0xFFFFBBFF),
      animationDuration: const Duration(milliseconds: 400),
      onTap: (index) {
        if (index == 0) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const WishList()));
        }
        if (index == 1) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        }
        if (index == 2) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ProfilePage()));
        }
      },
      items: const [
        Icon(
          Icons.favorite,
          color: Color(0xFF810947),
        ),
        Icon(Icons.home, color: Color(0xFF810947)),
        Icon(Icons.person, color: Color(0xFF810947)),
      ]);
}

// ignore: non_constant_identifier_names
Container profileButton(
    // ignore: non_constant_identifier_names
    BuildContext context, String title, Function onTap, IconData IconName) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    height: 55,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      // ignore: sort_child_properties_last
      child: Row(
        children: [
          Icon(
            IconName,
            color: const Color(0xFF810947),
          ),
          const SizedBox(width: 15),
          Text(
            title,
            style: const TextStyle(
                color: Color(0xFF810947),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const Spacer(),
          const Icon(
            Icons.chevron_right,
            color: Color(0xFF810947),
          )
        ],
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}

