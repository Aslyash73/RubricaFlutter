import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bienvenido a mi aplicación',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Movil',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            IconButton(
              onPressed: () {
                // Acción a realizar al presionar el botón
              },
              icon: Icon(Icons.favorite),
              iconSize: 36.0,
              color: Colors.amber,
            ),
            SizedBox(height: 8.0),
            Text(
              'Elija qué opción quiere navegar',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
