import 'package:flutter/material.dart';
import 'package:proyectoflutter_02/pages/home.dart';

import '../app.dart';

class Ar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AR'),
      ),
      body: Column(
        children: [
          Text('AR'),
          imageSection(),
        ],
      ),
      drawer: drawerMenu(context),
      bottomNavigationBar: bottomBarNav(),
    );
  }

  bottomBarNav() {}

  servicios() {}
}
