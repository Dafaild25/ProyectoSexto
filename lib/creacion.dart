//import 'dart:ffi';
import 'dart:html';

import 'package:flutter/material.dart' show Alignment, AnnotatedRegion, AppBar, Border, BorderRadius, BoxDecoration, BoxShadow, BuildContext, Center, Color, Colors, Column, Container, CrossAxisAlignment, DropdownButton, DropdownButtonFormField, DropdownMenuItem, EdgeInsets, ElevatedButton, GestureDetector, Icon, IconButton, Icons, InputBorder, InputDecoration, LinearGradient, MainAxisAlignment, MaterialPageRoute, Padding, RoundedRectangleBorder, Scaffold, SizedBox, Stack, State, StatefulWidget, Text, TextEditingController, TextField, TextStyle, Widget;
import 'package:flutter/services.dart';
import 'package:flutter_01/principal.dart';

//void main() => runApp(MyApp());

// ignore: camel_case_types
class creacion extends StatefulWidget {
  const creacion({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CreacionState createState() => _CreacionState();
}
final TextEditingController _capturaTexto = TextEditingController(); // Declaramos la variable que obtiene el texto

// NOMBRE DE ALERTA
Widget alerta(){ 
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget> [
      Text( //Primera solicitud
        'Nombre de Alerta',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontFamily: 'TimeNewRoman',//Tipo letra Label
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2)
            )
          ]
        ),
        height: 60,
        child: TextField(
          controller: _capturaTexto, //llamado a la variable
          //keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20, //Tamaño de letra del TextField
            fontFamily: 'Arial',//Tipo de letra del TextField 
          ),
          decoration: InputDecoration(//Color de icono alerta
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.warning_rounded,
              color: Colors.yellow
            ),
            suffixIcon: IconButton( // Limpiar la caja de texto con icono de cruz
              onPressed: () {
                _capturaTexto.clear();
              },
              icon: const Icon(Icons.clear),
            ),
          ),
        )
      )
    ],
  );
}
//ESCOGER TUTOR
List<String> listaContactos = ['Mamá', 'Leodan', 'Papá', 'Daniel'];//Lista de Contactos
String seleccionContacto="";
Widget tutor(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Escoger Tutor',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontFamily: 'TimeNewRoman',//Tipo letra Label
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        decoration: BoxDecoration(//Color del combo Box
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        child: DropdownButton( //CAJA
          hint: const Text("Contactos",style: TextStyle( //Estilos del texto Contactos
            color: Colors.grey,
            fontFamily: 'Arial',
            fontSize: 22,
            fontWeight: FontWeight.bold,
          )), // Combo Box con los contactos
          dropdownColor: Colors.white, // Color de los items
          icon: const Icon(Icons.arrow_drop_down), // Icono de la flechita hacia abajo
          iconSize: 36, // Tamaño del icono
          isExpanded: true, // Permite expandir los items
          underline: const SizedBox(),
          style: const TextStyle( // Estilo de lista de contactos
            color: Colors.black,
            fontSize: 20, //Tamaño de texto del comboBox
            fontFamily: 'Arial', //Tipo de texto
          ),
          items: listaContactos.map((name) {
            return DropdownMenuItem(
              value: name,
              child: Text(name),
            );
          }).toList(),
          onChanged: (value) {
            seleccionContacto = value.toString();
            print(value);
          },
        )
      ),
    ],
  );
}

//UBICACIÓN
/*Widget ubicacion(){
  return Scaffold(

  );
}*/

//DESCRIPCION
final TextEditingController _detalle = TextEditingController();
Widget descripcion(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Descripción',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontFamily: 'TimeNewRoman',//Tipo letra Label
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2)
            )
          ]
        ),
        height: 120,
        child: TextField(
          controller: _detalle, //llamado a la variable
          //keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20, //Tamaño de letra del TextField
            fontFamily: 'Arial',//Tipo de letra del TextField 
          ),
          decoration: InputDecoration(//Color de icono alerta
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            suffixIcon: IconButton( // Limpiar la caja de texto con icono de cruz
              onPressed: () {
                _detalle.clear();
              },
              icon: const Icon(Icons.clear),
            ),
          ),
        )
      )
    ],
  );
}
//CLASE PRINCIPAL
class _CreacionState extends State<creacion>{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>( //Fondo Gradiante
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [ //Color del degradado
                      Color(0x665ac18e),Color(0x995ac18e),Color(0xcc5ac18e),Color(0xff5ac18e),
                    ]
                  )
                ),
                child: Column(//Añadir un texto con estilo
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(//Nombre de la App
                      'BATALERT',
                      style: TextStyle(
                        color: Colors.black,//Color de letras
                        fontSize: 40, //Tamaño de la letra
                        fontFamily: 'Impact', //Tipo letra del nombre de la app
                        fontWeight: FontWeight.bold //Grosor de las letras
                      ),
                    ),
                    SizedBox(height: 50),
                    alerta(),
                    SizedBox(height: 20),
                    tutor(),
                    //SizedBox(height: 20),
                    //ubicacion(),
                    SizedBox(height: 20),
                    descripcion(),
                    SizedBox(height: 20),
                  ],
                ),
              )
            ],
          )
        )
      ),
    );
  }
}
