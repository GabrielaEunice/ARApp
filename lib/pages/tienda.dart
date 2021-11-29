import 'package:flutter/material.dart';
import 'package:proyectoflutter_02/pages/home.dart';
import '../app.dart';

class Tienda extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        //crea una pantalla que pueda ser escroleable
        padding: EdgeInsets.all(32), //margen
        children: [
          buildBackgroundCard(),
          Center(child: buildIconCard()), //icono en el centro
          Center(child: buildArbuilder()),
          Center(child: buildArbuilders()),
          Center(child: buildArbuilders0()),
          Center(child: buildArbuilders01()),
        ],
      );

  Widget buildArbuilder() {
    final urlPlayeraAR =
        "https://images-na.ssl-images-amazon.com/images/I/61MvAPA87lL._AC_UX466_.jpg";

    return ClipRRect(
      //tiene la propiedad de border radius
      borderRadius: BorderRadius.circular(20), //bordes circulares
      child: Container(
        padding: EdgeInsets.all(12), //espacio al rededro de el widget
        color: Color(0xFF010101), //color de fondo negro
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment:
              CrossAxisAlignment.start, //columna pegada a la izquierda
          children: [
            Image.network(
                urlPlayeraAR, //para que la imagen entre en el container
                width: 200,
                height: 200,
                fit: BoxFit.cover), //Tamaño de imagen
            Text(
              'Wood', //Texto de titulo de la playera
              style: TextStyle(
                //estilo de texto
                fontWeight: FontWeight.bold, //Texto en negritas
                color: Colors.white, //texto color blanco
                fontSize: 20, //tamaño de texto
              ),
            ),
            const SizedBox(height: 8), //separacion de texto
            Text(
              'Playera de algodon, M', //Texto descriptivo
              style: TextStyle(
                  color: Colors.white, fontSize: 16), //estilo de texto
            ),
            const SizedBox(height: 8), //separacion de texto
            Text(
              '\$240.00', //Precio de la playera
              style: TextStyle(
                //estilo de texto
                fontWeight: FontWeight.bold, //texto en negritas
                color: Colors.white, //texto de color blanco
                fontSize: 16, //tamaño de texto
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildArbuilders() {
    final urlPlayeraAR =
        "https://i.pinimg.com/originals/bc/dd/1d/bcdd1d32becc7406c59245c754f260cf.jpg";

    return ClipRRect(
      //tiene la propiedad de border radius
      borderRadius: BorderRadius.circular(20), //bordes circulares
      child: Container(
        padding: EdgeInsets.all(12), //espacio al rededro de el widget
        color: Color(0xFF010101), //color de fondo negro
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment:
              CrossAxisAlignment.start, //columna pegada a la izquierda
          children: [
            Image.network(
                urlPlayeraAR, //para que la imagen entre en el container
                width: 200,
                height: 200,
                fit: BoxFit.cover), //Tamaño de imagen
            Text(
              'MakingTCut', //Texto de titulo de la playera
              style: TextStyle(
                //estilo de texto
                fontWeight: FontWeight.bold, //Texto en negritas
                color: Colors.white, //texto color blanco
                fontSize: 20, //tamaño de texto
              ),
            ),
            const SizedBox(height: 8), //separacion de texto
            Text(
              'Playera de algodon, M', //Texto descriptivo
              style: TextStyle(
                  color: Colors.white, fontSize: 16), //estilo de texto
            ),
            const SizedBox(height: 8), //separacion de texto
            Text(
              '\$240.00', //Precio de la playera
              style: TextStyle(
                //estilo de texto
                fontWeight: FontWeight.bold, //texto en negritas
                color: Colors.white, //texto de color blanco
                fontSize: 16, //tamaño de texto
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildArbuilders0() {
    final urlPlayeraAR =
        "https://images-na.ssl-images-amazon.com/images/I/81klmej5j6L._AC_SX466_.jpg";

    return ClipRRect(
      //tiene la propiedad de border radius
      borderRadius: BorderRadius.circular(20), //bordes circulares
      child: Container(
        padding: EdgeInsets.all(12), //espacio al rededro de el widget
        color: Color(0xFF010101), //color de fondo negro
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment:
              CrossAxisAlignment.start, //columna pegada a la izquierda
          children: [
            Image.network(
                urlPlayeraAR, //para que la imagen entre en el container
                width: 200,
                height: 200,
                fit: BoxFit.cover), //Tamaño de imagen
            Text(
              'DeerJ', //Texto de titulo de la playera
              style: TextStyle(
                //estilo de texto
                fontWeight: FontWeight.bold, //Texto en negritas
                color: Colors.white, //texto color blanco
                fontSize: 20, //tamaño de texto
              ),
            ),
            const SizedBox(height: 8), //separacion de texto
            Text(
              'Playera de algodon, M', //Texto descriptivo
              style: TextStyle(
                  color: Colors.white, fontSize: 16), //estilo de texto
            ),
            const SizedBox(height: 8), //separacion de texto
            Text(
              '\$240.00', //Precio de la playera
              style: TextStyle(
                //estilo de texto
                fontWeight: FontWeight.bold, //texto en negritas
                color: Colors.white, //texto de color blanco
                fontSize: 16, //tamaño de texto
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildArbuilders01() {
    final urlPlayeraAR =
        "https://cdn.shopify.com/s/files/1/1944/3961/products/Gnarly-Glitch-Tree-Black-T-Shirt-_273426_600x.jpg?v=1567281032";

    return ClipRRect(
      //tiene la propiedad de border radius
      borderRadius: BorderRadius.circular(20), //bordes circulares
      child: Container(
        padding: EdgeInsets.all(12), //espacio al rededro de el widget
        color: Color(0xFF010101), //color de fondo negro
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment:
              CrossAxisAlignment.start, //columna pegada a la izquierda
          children: [
            Image.network(
                urlPlayeraAR, //para que la imagen entre en el container
                width: 200,
                height: 200,
                fit: BoxFit.cover), //Tamaño de imagen
            Text(
              'Toxic Masculinity', //Texto de titulo de la playera
              style: TextStyle(
                //estilo de texto
                fontWeight: FontWeight.bold, //Texto en negritas
                color: Colors.white, //texto color blanco
                fontSize: 20, //tamaño de texto
              ),
            ),
            const SizedBox(height: 8), //separacion de texto
            Text(
              'Playera de algodon, M', //Texto descriptivo
              style: TextStyle(
                  color: Colors.white, fontSize: 16), //estilo de texto
            ),
            const SizedBox(height: 8), //separacion de texto
            Text(
              '\$240.00', //Precio de la playera
              style: TextStyle(
                //estilo de texto
                fontWeight: FontWeight.bold, //texto en negritas
                color: Colors.white, //texto de color blanco
                fontSize: 16, //tamaño de texto
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildBackgroundCard() {}

  buildIconCard() {}
}
