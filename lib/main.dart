import 'package:flutter/material.dart';
import 'pages/galeria.dart';
import 'pages/tienda.dart';
import 'pages/home.dart';
import 'pages/camera_screen.dart';
import 'package:camara_flutter/src/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        "/camera_screen": (BuildContext context) => camera_screen(),
        "/galeria": (BuildContext context) => Galeria(),
        "/tienda": (BuildContext context) => Tienda(),
      },
      initialRoute: '/home',
    );
  }
}

camera_screen() {}
