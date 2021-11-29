import 'package:flutter/material.dart';
import 'pages/galeria.dart';
import 'pages/tienda.dart';
import 'pages/home.dart';
import 'pages/camera_screen02.dart';

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
        "/camera_screen": (BuildContext context) => CameraScreen(),
        "/galeria": (BuildContext context) => Galeria(),
        "/tienda": (BuildContext context) => Tienda(),
      },
      initialRoute: '/home',
    );
  }
}
