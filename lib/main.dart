import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aprendiendo GridView',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage());
  }
}

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
    "assets/images/ciber1.jpg",
    "assets/images/ciber2.jpg",
    "assets/images/ciber3.jpg",
    "assets/images/ciber1.jpg",
    "assets/images/ciber2.jpg",
    "assets/images/ciber3.jpg",
    "assets/images/ciber1.jpg",
    "assets/images/ciber2.jpg",
    "assets/images/ciber3.jpg",
    "assets/images/ciber1.jpg",
    "assets/images/ciber2.jpg",
    "assets/images/ciber3.jpg",
    "assets/images/ciber1.jpg",
    "assets/images/ciber2.jpg",
    "assets/images/ciber3.jpg",
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
