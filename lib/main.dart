import 'package:flutter/material.dart';
import 'package:flutter_01/creacion.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BatAlert Login',
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
