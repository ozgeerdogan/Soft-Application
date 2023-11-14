// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_new_project/screens/home.dart';
import 'package:my_new_project/login_screens/sign_in.dart';

//SIGN UP/////
createUserWithEmailAndPassword(
    String emailAddress, String password, BuildContext context) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );
    User? user = credential.user;
    if (user != null) {
      // ignore: use_build_context_synchronously
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SignInScreen()));
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Succesfull Registered."),
          backgroundColor: Colors.green));
    } else {}
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("The password provided is too weak."),
        backgroundColor: Colors.red,
      ));
      // ignore: avoid_print
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("The account already exists for that email."),
        backgroundColor: Colors.red,
      ));
      // ignore: avoid_print
      print('The account already exists for that email.');
    }
  } catch (e) {
    // ignore: avoid_print
    print(e);
  }
}

//SIGN IN///////////////
signInWithEmailAndPassword(
    String emailAddress, String password, BuildContext context) async {
  try {
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: emailAddress, password: password);
    User? user = credential.user;
    if (user != null) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const PinterestPage()));
    } else {}
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("No user found for that email."),
        backgroundColor: Colors.red,
      ));
      // ignore: avoid_print
      print('No user found for that email.');
    } else if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Wrong password provided for that user."),
        backgroundColor: Colors.red,
      ));
      // ignore: avoid_print
      print('Wrong password provided for that user.');
    }
  }
}

//LOG OUT
signOut(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  // ignore: use_build_context_synchronously
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const SignInScreen(),
      ));
}
