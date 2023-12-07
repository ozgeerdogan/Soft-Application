// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_new_project/model/cart_model.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class DetayPage extends StatefulWidget {
  String imgPath;
  var linkUrl;
  int detayIndex;

  DetayPage(
      {Key? key,
      required this.imgPath,
      required this.linkUrl,
      required this.detayIndex})
      : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _DetayPageState createState() => _DetayPageState();
}

class _DetayPageState extends State<DetayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(widget.imgPath),
              fit: BoxFit.cover,
            )),
          ),
        ),
        Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Container(
              width: 85,
              height: 85,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [linkButton(), favIcon()],
              ),
            ))
      ]),
    );
  }

  Widget favIcon() {
    return Container(
        margin: const EdgeInsets.fromLTRB(220, 0, 0, 0),
        child: IconButton(
          onPressed: () {
            setState(() {
              Provider.of<CartModel>(context, listen: false).isLike =
                  !Provider.of<CartModel>(context, listen: false).isLike;
            });
            if (Provider.of<CartModel>(context, listen: false).isLike == true) {
              Provider.of<CartModel>(context, listen: false)
                  .addItemToCart(widget.detayIndex);
            }
            if (Provider.of<CartModel>(context, listen: false).isLike ==
                false) {
              Provider.of<CartModel>(context, listen: false)
                  .removeItemFromCart(widget.detayIndex);
            }
          },
          icon: Icon(
            (Provider.of<CartModel>(context, listen: false).isLike == false
                ? Icons.favorite_border
                : Icons.favorite),
            color: const Color(0xFF810947),
          ),
        ));
  }

  

  Widget linkButton() {
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
          tag: widget.linkUrl,
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: '  TY.GL',
              style: const TextStyle(
                  fontFamily: "monster",
                  color: Color(0xFF810947),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // ignore: deprecated_member_use
                  launch(widget.linkUrl);
                },
            ),
          ])),
        ),
      ],
    );
  }
}
