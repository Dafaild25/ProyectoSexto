import 'package:flutter/material.dart';
//import 'package:flutter_01/main.dart';
//import 'package:flutter/services.dart';

//void main() => runApp(MyApp());

class creacion extends StatefulWidget {
  creacion({super.key});

  @override
  _CreacionState createState() => _CreacionState();
}

class _CreacionState extends State<creacion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi App"),
      ),
      body: Center(
        child: Text("Contenedor"),
      ),
    );
  }
}
