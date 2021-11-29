// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tienda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFFEBF5E9), //color de fondo
          appBar: AppBar(
            title: const Text(
              "AR APP",
              style: TextStyle(color: Colors.black),
            ), //Texto de titlulo
            centerTitle: true, //centrar el titulo,
            backgroundColor: Colors.transparent,
            elevation: 0, //hace que no se vea el appbar
          ),
          body: Column(children: [
            //Columna para las imagenes y que esten organizadas
            buildProduct("Equal pay for equal work", "120",
                "assets\img\Tienda\imgAR_02.png"), //sección uno de imagen
            buildProduct("Toxic Masculinity", "120",
                "assets\img\Tienda\imgAR_03.png"), //sección dos de imagen
            buildProduct("Women´s Day", "120",
                "assets\img\Tienda\imgAR_04.png"), //sección tres de imagen
            buildProduct("Some Records", "120",
                "assets\img\Tienda\imgAR_05.png"), //sección cuatro de imagen
            buildProduct("Dinosaur", "120",
                "assets\img\Tienda\imgAR_06.png"), //sección cinco de imagen
            buildProduct("Our planet is Dying", "120",
                "assets\img\Tienda\imgAR_08.png"), //sección seis de imagen
            buildProduct("Gender is a Social Construct", "120",
                "assets\img\Tienda\imgAR_09.png"), //sección siete de imagen
          ])),
    );
  }

/*Widget build(BuildContext context) => Scaffold(                                          
      backgroundColor: Color(0xFFf6f5ee),//color de fondo 
      appBar: AppBar(
        title: Text(
          MyApp.title,
          style: TextStyle(color: Colors.black),
   ), //Texto de titlulo
   centerTitle: true, //centrar el titulo,
   backgroundColor: Colors.transparent,
   elevation: 0, //hace que no se vea el appbar
    ), 
    );
*/
  Widget buildProduct(String titulo, String precio, String img) => Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(
                16))), //Los contenedores de las imagegnes con esqinas redondas
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Image.asset(img), Text(titulo), Text(precio)],
            ) //Contenido de los contenedores

            ), //Para que las imagenes y texto tengan un margen dentro del contenedor
      );
}
