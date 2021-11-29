// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:proyectoflutter_02/pages/home.dart';
import '../app.dart';

class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.all(32),
        children: [
          buildBackgroundCard(),
        ],
      );

  Widget buildBackgroundCard() {
    final urlBackgroundImage = //Imagen desde el internet
        'https://th.bing.com/th/id/R.d527acad3d02fc0e93077f685d354b73?rik=erKoXfcChOx3rg&riu=http%3a%2f%2fwww.peelinteractive.co.uk%2fwp-content%2fuploads%2f2018%2f02%2fYMH-Mock-shard-filter.jpg&ehk=5T0WQ9sOAkC9VnlEbYFq3Vbji1Auk%2bnBqfU35EQqib4%3d&risl=&pid=ImgRaw&r=0';

    return Container(
      padding: EdgeInsets.all(24), //los margenes del contenedor
      width: double.infinity, //tamaño del contenedor en horizontal
      height: 200, //tamaño de contenedor en vertical
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(32), //para que las esquinas sean redondas
        image: DecorationImage(
          //Una imagen de fondo
          image: NetworkImage(urlBackgroundImage),
          fit: BoxFit.cover, //la imagen cubre el la pantalla en horizontal
          colorFilter: ColorFilter.mode(
            //Filtro a la imagen
            Colors.black.withOpacity(
                0.25), //opacidad de la imagen para que el texto resalte
            BlendMode
                .darken, //En la opacidad el numero 1 es 100% entonces el .25 es el 25%
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, //para que el texto este pegado a la izq
        children: [
          Text(
            'Perla693', //texto (Nombre del usuario)
            style: TextStyle(
              //estilo de texto
              fontSize: 24, //tamaño de texto
              fontWeight: FontWeight.bold, //tipo
              color: Colors.black, //color de texto
            ),
          ),
        ],
      ),
    );

    // ignore: dead_code
    Widget buildBackgroundCard() {
      final urlBackgroundImage = //Imagen desde el internet
          'https://th.bing.com/th/id/R.b93b078f568d351d5481a987ddd4869b?rik=5Dt83J1eB5fjJA&pid=ImgRaw&r=0';
      return Container(
        padding: EdgeInsets.all(24), //los margenes del contenedor
        width: double.infinity, //tamaño del contenedor en horizontal
        height: 200, //tamaño de contenedor en vertical
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(32), //para que las esquinas sean redondas
          image: DecorationImage(
            //Una imagen de fondo
            image: NetworkImage(urlBackgroundImage),
            fit: BoxFit.cover, //la imagen cubre el la pantalla en horizontal
            colorFilter: ColorFilter.mode(
              //Filtro a la imagen
              Colors.black.withOpacity(
                  0.25), //opacidad de la imagen para que el texto resalte
              BlendMode
                  .darken, //En la opacidad el numero 1 es 100% entonces el .25 es el 25%
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, //para que el texto este pegado a la izq
          children: [
            Text(
              'Lalola_01', //texto
              style: TextStyle(
                //estilo de texto
                fontSize: 24, //tamaño de texto
                fontWeight: FontWeight.bold, //tipo
                color: Colors.black, //color de texto
              ),
            ),
          ],
        ),
      );

      Widget buildBackgroundCard() {
        final urlBackgroundImage = //Imagen desde el internet
            'https://www.scientificanimations.com/wp-content/uploads/2018/04/Heart-Augmented-Reality.jpg';

        return Container(
          padding: EdgeInsets.all(24), //los margenes del contenedor
          width: double.infinity, //tamaño del contenedor en horizontal
          height: 200, //tamaño de contenedor en vertical
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(32), //para que las esquinas sean redondas
            image: DecorationImage(
              //Una imagen de fondo
              image: NetworkImage(urlBackgroundImage),
              fit: BoxFit.cover, //la imagen cubre el la pantalla en horizontal
              colorFilter: ColorFilter.mode(
                //Filtro a la imagen
                Colors.black.withOpacity(
                    0.25), //opacidad de la imagen para que el texto resalte
                BlendMode
                    .darken, //En la opacidad el numero 1 es 100% entonces el .25 es el 25%
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .start, //para que el texto este pegado a la izq
            children: [
              Text(
                'PTerryCrews', //texto
                style: TextStyle(
                  //estilo de texto
                  fontSize: 24, //tamaño de texto
                  fontWeight: FontWeight.bold, //tipo
                  color: Colors.black, //color de texto
                ),
              ),
            ],
          ),
        );

        Widget buildBackgroundCard() {
          final urlBackgroundImage = //Imagen desde el internet
              'https://miro.medium.com/max/1200/0*xGjwERFj8zdjdCDR.jpg';

          return Container(
            padding: EdgeInsets.all(24), //los margenes del contenedor
            width: double.infinity, //tamaño del contenedor en horizontal
            height: 200, //tamaño de contenedor en vertical
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  32), //para que las esquinas sean redondas
              image: DecorationImage(
                //Una imagen de fondo
                image: NetworkImage(urlBackgroundImage),
                fit:
                    BoxFit.cover, //la imagen cubre el la pantalla en horizontal
                colorFilter: ColorFilter.mode(
                  //Filtro a la imagen
                  Colors.black.withOpacity(
                      0.25), //opacidad de la imagen para que el texto resalte
                  BlendMode
                      .darken, //En la opacidad el numero 1 es 100% entonces el .25 es el 25%
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, //para que el texto este pegado a la izq
              children: [
                Text(
                  'EliLu', //texto
                  style: TextStyle(
                    //estilo de texto
                    fontSize: 24, //tamaño de texto
                    fontWeight: FontWeight.bold, //tipo
                    color: Colors.black, //color de texto
                  ),
                ),
              ],
            ),
          );

          Widget buildBackgroundCard() {
            final urlBackgroundImage = //Imagen desde el internet
                'https://th.bing.com/th/id/OIP.qF2MpDVndu8CVa9jcLGGHQHaEH?pid=ImgDet&rs=1';

            return Container(
              padding: EdgeInsets.all(24), //los margenes del contenedor
              width: double.infinity, //tamaño del contenedor en horizontal
              height: 200, //tamaño de contenedor en vertical
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    32), //para que las esquinas sean redondas
                image: DecorationImage(
                  //Una imagen de fondo
                  image: NetworkImage(urlBackgroundImage),
                  fit: BoxFit
                      .cover, //la imagen cubre el la pantalla en horizontal
                  colorFilter: ColorFilter.mode(
                    //Filtro a la imagen
                    Colors.black.withOpacity(
                        0.25), //opacidad de la imagen para que el texto resalte
                    BlendMode
                        .darken, //En la opacidad el numero 1 es 100% entonces el .25 es el 25%
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, //para que el texto este pegado a la izq
                children: [
                  Text(
                    'LHUGO_20', //texto
                    style: TextStyle(
                      //estilo de texto
                      fontSize: 24, //tamaño de texto
                      fontWeight: FontWeight.bold, //tipo
                      color: Colors.black, //color de texto
                    ),
                  ),
                ],
              ),
            );
          }

          /*Widget buildBackgroundCard() {
    return Column( //crea una columna
      crossAxisAlignment: CrossAxisAlignment.start,//para que el texto este pegado a la izq
      children: [
        Text(
          'Perla693' //texto
          style: TextStyle( //estilo de texto
            fontSize: 24, //tamaño de texto
            fontWeight: FontWeight.bold,//tipo
            color: Colors.black,//color de texto
          ),
        ),
      ],
    );
  }*/ // codigo previo

          /* {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria'),
      
      body: Column(
        children: [
          Text('Galeria'),
          imageSection(),
        ],
      ),
      drawer: drawerMenu(context),
    );
  }*/

/*Widget imageSection() {
  return Center(
    child: Image.asset(
      'assets/img/R.jpg',
      // 'assets/img/playeraAR_01.jpg'
      width: 600,
      height: 400,
      fit: BoxFit.cover,
    ),
  );
}*/
        }
      }
    }
  }
}
