import 'package:flutter/material.dart';

import '../app.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: columnContent(),
      drawer: drawerMenu(context),
    );
  }
}

Widget columnContent() {
  return Column(
    children: [
      imageSection(),
      buttonSection(),
      textoBody(),
    ],
  );
}

Widget imageSection() {
  return Center(
    child: Image.asset(
      'assets/img/playeraAR_01.jpg',
      width: 600,
      height: 400,
      fit: BoxFit.cover,
    ),
  );
}

Widget textoBody() {
  return Container(
    padding: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 50),
    alignment: Alignment.center,
    child: Text(
      'VR App reinventa el uso de la moda, nuestro objetivo es elevar el arte de artistas nuevos',
      softWrap: true,
    ),
  );
}

Widget buttonSection() {
  Color color = Colors.redAccent;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _bottonsRow(color, Icons.call, 'LLAMAR'),
      _bottonsRow(color, Icons.near_me, 'RUTA'),
      _bottonsRow(color, Icons.share, 'COMPARTIR'),
    ],
  );
}

Widget _bottonsRow(Color color, IconData icon, String label) {
  Color color = Colors.redAccent;
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ),
    ],
  );
}

Widget titleSection() {
  final _textStyle =
      TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 24);

  return Container(
    padding: EdgeInsets.all(32),
    alignment: Alignment.center,
    decoration: BoxDecoration(
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
                padding: const EdgeInsets.only(bottom: 8),
                child: Text('Oeschinen Lake Campground', style: _textStyle),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );
}
