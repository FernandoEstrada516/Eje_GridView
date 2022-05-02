import 'package:flutter/material.dart';
import 'package:estrada/gridviewempleados.dart';

void main() {
  runApp(CiberCafe());
}

class CiberCafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aprendiendo GridView',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PaginaInicial());
  }
}
