import 'package:flutter/material.dart';

import 'pages/galeria.dart';
import 'pages/tienda.dart';
import 'pages/home.dart';
import 'pages/ar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'TIENDA - PLAYERAS';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        ///Cambiar color de boton en el carrito
        primaryColor: Colors.deepOrange,
      ),
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => Home(),
        "/ar": (BuildContext context) => Ar(),
        "/galeria": (BuildContext context) => Galeria(),
        "/tienda": (BuildContext context) => Tienda(),
      },
      initialRoute: '/home',
    );
  }
}
