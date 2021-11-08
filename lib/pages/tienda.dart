import 'package:flutter/material.dart';
import 'package:proyectoflutter_02/app.dart';

class Tienda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    );
  }

  Widget buildCardItems(BuildContext context) {
    return Center(
      child: Text(
        'Lo nuevo del año',
        style: TextStyle(color: Colors.red, fontSize: 20),
      ),
    );
  }
}

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
