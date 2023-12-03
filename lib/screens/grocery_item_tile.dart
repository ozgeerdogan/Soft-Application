import 'package:flutter/material.dart';
import 'package:my_new_project/const/detay.dart';

// ignore: must_be_immutable
class GroceryItemTile extends StatelessWidget {
  final String linkUrl;
  final String imagePath;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.onPressed,
    required this.linkUrl,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Detay(
                  imgPath: imagePath,
                  linkUrl: linkUrl,
                  onPressedDetay: onPressed,
                )));
      },
      child: Padding(
        padding:
            const EdgeInsets.only(top: 25, bottom: 25, left: 15, right: 15),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(18.0)),
          child: Image.asset(imagePath),
        ),
      ),
    );
  }
}
