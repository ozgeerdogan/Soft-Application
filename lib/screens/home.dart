// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_new_project/const/reusable.dart';
import '../const/detay.dart';

class PinterestPage extends StatefulWidget {
  const PinterestPage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _PinterestPageState createState() => _PinterestPageState();
}

class _PinterestPageState extends State<PinterestPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return SafeArea(child: Builder(builder: (context) {
      return Scaffold(
          bottomNavigationBar: navBar(context, 1),
          body: SafeArea(
            child: LayoutBuilder(builder:
                (BuildContext contex, BoxConstraints viewportConstraints) {
              return Container(
                color: Color(0xFFFFBBFF),
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Column(
                    //***********************************İMAGE 1-2******************
                    children: [
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                    imgPath: "assets/images/a1.jpeg",
                                    linkUrl: "https://ty.gl/rnb4zikpwf",
                                  )));
                        },
                        child: Hero(
                          tag: "assets/images/a1.jpeg",
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/a1.jpeg",
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                    imgPath: "assets/images/High.jpeg",
                                    linkUrl: "https://ty.gl/rnb4zikpwf",
                                  )));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(100, 30, 0, 0),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/High.jpeg",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //************************İMAGE3*****************
                    children: [
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                    imgPath: "assets/images/1.jpg",
                                    linkUrl: "https://ty.gl/rnb4zikpwf",
                                  )));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 150, 20, 0),
                          width: 250,
                          height: 350,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/1.jpg",
                                  ),
                                  fit: BoxFit.fill)),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                              190,
                              0,
                              0,
                              280,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //***********************************İMAGE 4-5******************
                    children: [
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                    imgPath: "assets/images/2.jpg",
                                    linkUrl: "https://ty.gl/rnb4zikpwf",
                                  )));
                        },
                        child: Hero(
                          tag: "assets/images/2.jpg",
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 30, 0),
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/2.jpg",
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                    imgPath: "assets/images/6.jpg",
                                    linkUrl: "https://ty.gl/rnb4zikpwf",
                                  )));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(80, 30, 0, 0),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/6.jpg",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //************************İMAGE6*****************
                    children: [
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                    imgPath: "assets/images/11.jpg",
                                    linkUrl: "https://ty.gl/rnb4zikpwf",
                                  )));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 150, 20, 0),
                          width: 250,
                          height: 350,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/11.jpg",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //***********************************İMAGE 7-8******************
                    children: [
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                    imgPath: "assets/images/7.jpg",
                                    linkUrl: "https://ty.gl/rnb4zikpwf",
                                  )));
                        },
                        child: Hero(
                          tag: "assets/images/7.jpg",
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 30, 0),
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/7.jpg",
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                  imgPath: "assets/images/10.jpg",
                                  linkUrl: "https://ty.gl/rnb4zikpwf")));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(80, 30, 0, 0),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/10.jpg",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //************************İMAGE9*****************
                    children: [
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                    imgPath: "assets/images/12.jpg",
                                    linkUrl: "https://ty.gl/rnb4zikpwf",
                                  )));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 150, 20, 0),
                          width: 250,
                          height: 350,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/12.jpg",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //***********************************İMAGE 10-11******************
                    children: [
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                    imgPath: "assets/images/16.jpg",
                                    linkUrl: "https://ty.gl/rnb4zikpwf",
                                  )));
                        },
                        child: Hero(
                          tag: "assets/images/16.jpg",
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 30, 0),
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/16.jpg",
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                    imgPath: "assets/images/13.jpg",
                                    linkUrl: "https://ty.gl/rnb4zikpwf",
                                  )));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(80, 30, 0, 0),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/13.jpg",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //************************İMAGE12*****************
                    children: [
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                    imgPath: "assets/images/14.jpg",
                                    linkUrl: "https://ty.gl/rnb4zikpwf",
                                  )));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20, 150, 20, 0),
                          width: 250,
                          height: 350,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/14.jpg",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //***********************************İMAGE 13-14******************
                    children: [
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                    imgPath: "assets/images/15.jpg",
                                    linkUrl: "https://ty.gl/rnb4zikpwf",
                                  )));
                        },
                        child: Hero(
                          tag: "assets/images/a4.jpeg",
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 30, 0),
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/15.jpg",
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          debugPrint("Resme Basıldı");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Detay(
                                    imgPath: "assets/images/17.jpg",
                                    linkUrl: "https://ty.gl/rnb4zikpwf",
                                  )));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(80, 30, 0, 0),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/17.jpg",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ],
                  ),
                ]),
              );
            }),
          ));
    }));
  }
}
