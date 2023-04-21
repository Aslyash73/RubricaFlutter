import 'package:flutter/material.dart';

class SearchScreens extends StatelessWidget {
  final List<String> tematicas = [
    '1.1 Introduccion a Android',
    '1.2 Introduccion a la computacion',
    '1.3 Computacion con otras plataformas',
    '1.5 Versiones',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 32.0),
          Text(
            'Mi lista Asly',
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView.builder(
              itemCount: tematicas.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(tematicas[index]),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // TODO: Implementar acción al hacer tap en un elemento
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

