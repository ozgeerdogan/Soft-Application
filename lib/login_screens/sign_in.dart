// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_new_project/login_screens/firebase_function.dart';
import 'package:my_new_project/const/reusable.dart';
import 'package:my_new_project/login_screens/sign_up.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Color(0xFFFFBBFF)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo.png"),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    emailController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(
                    "Enter Password", Icons.lock_outline, true, passController),
                const SizedBox(
                  height: 15,
                ),
                firebaseUIButton(context, "LOGIN", () {
                  signInWithEmailAndPassword(
                      emailController.text, passController.text, context);
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Color(0xFF887BAF))),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(
                color: Color(0xFF887BAF), fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
