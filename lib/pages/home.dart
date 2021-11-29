import 'package:flutter/material.dart';
import '../app.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'), //titulo de la pagina
      ),
      body: columnContent(), //columna para menu
      drawer: drawerMenu(context),
    );
  }
}

Widget columnContent() {
  //contenido de la columna
  return Column(
    children: [
      imageSection(),
      buttonSection(),
      textoBody(),
    ],
  );
}

Widget imageSection() {
  //seccion de imagen
  return Center(
    child: Image.asset(
      'assets/img/playeraAR_01.jpg', //imagen
      width: 600, //dimencion de imagen
      height: 400,
      fit: BoxFit.cover,
    ),
  );
}

Widget textoBody() {
  //texto central
  return Container(
    padding: EdgeInsets.only(
        top: 30, left: 20, right: 20, bottom: 50), //margen de texto
    alignment: Alignment.center, //centrar texto
    child: Text(
      'VR App reinventa el uso de la moda, nuestro objetivo es elevar el arte de artistas nuevos', //texto
      softWrap: true,
    ),
  );
}

Widget buttonSection() {
  //boton
  Color color = Colors.redAccent;

  return Row(
    //iconos
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _bottonsRow(color, Icons.call, 'LLAMAR'), //icono llamada
      _bottonsRow(color, Icons.near_me, 'RUTA'), //icono rut
      _bottonsRow(color, Icons.share, 'COMPARTIR'), //icono compartir
    ],
  );
}

Widget _bottonsRow(Color color, IconData icon, String label) {
  //ajustes de botones
  Color color = Colors.redAccent; //color de botones
  return Column(
    mainAxisSize: MainAxisSize.min, //espacio que ocupa en la pantalla
    mainAxisAlignment: MainAxisAlignment.center, //centrar
    children: [
      Icon(icon, color: color), //icono
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            //estilo de texto
            fontSize: 12, //tamaño de texto
            fontWeight: FontWeight.w400, //font
            color: color, //color de texto
          ),
        ),
      ),
    ],
  );
}

Widget titleSection() {
  const _textStyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontSize: 24); //ajustos de texto

  return Container(
    //contenedor de texto
    padding: const EdgeInsets.all(32), //margen del contenedor
    alignment: Alignment.center, //centrar
    decoration: BoxDecoration(
      //diseño de contenedor
      color: Colors.red.shade500,
    ),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding:
                    const EdgeInsets.only(bottom: 8), //rmargen de contenedor
                child: const Text(
                    'Realidad aumentada en tus manos', //texto dentro del contenedor
                    style: _textStyle),
              ),
              Text(
                'Galeria de diseños / Ar / Tienda',
                style: TextStyle(
                  //estilo de letra
                  color: Colors.grey[500], //color
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          //icono
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );
}
