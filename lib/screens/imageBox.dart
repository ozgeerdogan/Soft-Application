// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_new_project/screens/detay_page.dart';

// ignore: must_be_immutable
class ImageBox extends StatelessWidget {
  final String? linkUrl;
  final String imagePath;
  final int index;

  const ImageBox({
    super.key,
    required this.index,
    required this.linkUrl,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetayPage(
                  imgPath: imagePath,
                  linkUrl: linkUrl,
                  detayIndex: index,
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
