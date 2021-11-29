// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tienda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
=======
    return Scaffold(
      appBar: AppBar(
        title: Text('Tienda'),
      ),
      backgroundColor: Colors.amber,
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text('Playeras'),
            FlatButton(
              //Un texto con botón
              onPressed: () {},
              child: Text('Clear Cart'),
            ),
          ],
        ),
      ),
    );
    Expanded(
      child: Container(
        color: Colors.green,
        child: buildCardItems(context),
      ),
    );
    SizedBox(height: 16);
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total:',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        Text(
          '\$120.00',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 24),
        Container(
            width: double.infinity, //estira el boton todo lo ancho de la pantalla cuidando los margenes
            height: 50,
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              shape: StadiumBorder(),
              child: Text(
                'Next',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ))
      ],
>>>>>>> 831fa8bd79fedccf5da268ad9dc35fa9181bcb38
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

<<<<<<< HEAD
            ), //Para que las imagenes y texto tengan un margen dentro del contenedor
      );
}
=======
Widget buildCardItems(BuildContext context) {
  return buildCardItem();
}

Widget buildCardItem() => ListTile(
      leading: CircleAvatar(
          backgroundImage: AssetImage('assets/img/pl.jpg')), //Widget circular
      title: Row(
        children: [
          Text(
            '1x',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(width: 10),
          Expanded(
            // para que el texto no se corte
            child: Text(
              'Gender is a social construct, AR',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );

/*Widget imageSection() {
  return Center(
    child: Image.asset(
      'assets/img/pl.jpg',
      width: 600,
      height: 400,
      fit: BoxFit.cover,
    ),
  );
}*/

//MIN 18:00
>>>>>>> 831fa8bd79fedccf5da268ad9dc35fa9181bcb38
