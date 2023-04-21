import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 30.0,
            ),
            title: Text(
              'Configuración',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
          CheckboxListTile(
            title: Text('Notificación'),
            value: isChecked1,
            onChanged: (bool? value) {
              setState(() {
                isChecked1 = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Vibración'),
            value: isChecked2,
            onChanged: (bool? value) {
              setState(() {
                isChecked2 = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Sonido'),
            value: isChecked3,
            onChanged: (bool? value) {
              setState(() {
                isChecked3 = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text('Cambiar configuración predeterminada'),
            value: isChecked4,
            onChanged: (bool? value) {
              setState(() {
                isChecked4 = value!;
              });
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/003/782/159/non_2x/image-of-a-filled-jar-with-amber-contents-cartoon-style-eps-10-free-vector.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}

