import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/ciber1.jpg",
    "assets/images/ciber2.jpg",
    "assets/images/ciber3.jpg",
    "assets/images/ciber4.jpg",
    "assets/images/ciber6.jpg",
    "assets/images/ciber5.jpg",
    "assets/images/ciber3.jpg",
    "assets/images/ciber2.jpg",
    "assets/images/ciber6.jpg",
    "assets/images/ciber1.jpg",
    "assets/images/ciber4.jpg",
    "assets/images/ciber3.jpg",
    "assets/images/ciber1.jpg",
    "assets/images/ciber4.jpg",
    "assets/images/ciber6.jpg",
    "assets/images/ciber1.jpg",
    "assets/images/ciber2.jpg",
    "assets/images/ciber1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
