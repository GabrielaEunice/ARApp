import 'package:flutter/material.dart';
import 'package:proyectoflutter_02/pages/home.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('App Prueba'),
    ),
    body: Home(),
  );
}

Widget drawerMenu(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Soy header')),
        ListTile(
          title: const Text('Home'),
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
        ListTile(
          title: const Text('CameraScreen'),
          onTap: () {
            Navigator.pushNamed(context, '/camera_screen');
          },
        ),
        ListTile(
          title: const Text('Galeria'),
          onTap: () {
            Navigator.pushNamed(context, '/galeria');
          },
        ),
        ListTile(
          title: const Text('Tienda'),
          onTap: () {
            Navigator.pushNamed(context, '/tienda');
          },
        ),
      ],
    ),
  );
}
