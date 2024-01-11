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
  final TextEditingController _capturaTexto = TextEditingController(); // Declaramos la variable que obtiene el texto
  List<String> listaContactos = ['Mamá', 'Leodan', 'Papá', 'Daniel'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                // Caja de texto
                controller: _capturaTexto,
                decoration: InputDecoration(
                  hintText: 'Nombre',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      // Limpiar la caja de texto
                      _capturaTexto.clear();
                    },
                    icon: const Icon(Icons.clear),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: DropdownButton(
                  hint: const Text("Contactos"), // Combo Box con los contactos
                  dropdownColor: Colors.white, // Color de los items
                  icon: const Icon(Icons.arrow_drop_down), // Icono de la flechita hacia abajo
                  iconSize: 36, // Tamaño del icono
                  isExpanded: true, // Permite expandir los items
                  underline: const SizedBox(),
                  style: const TextStyle(
                    // Estilos para las letras
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  items: listaContactos.map((name) {
                    return DropdownMenuItem(
                      child: Text(name),
                      value: name,
                    );
                  }).toList(),
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}