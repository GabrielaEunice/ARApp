import 'package:flutter/material.dart';
import 'package:proyectoflutter_02/pages/home.dart';

import '../app.dart';

class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tu galeria'),
      ),
      body: Column(
        children: [
          Text('soy Galeria'),
          imageSection(),
        ],
      ),
      drawer: drawerMenu(context),
    );
  }
}

Widget imageSection() {
  return Center(
    child: Image.asset(
      'assets/img/R.jpg',
      width: 600,
      height: 400,
      fit: BoxFit.cover,
    ),
  );
}
