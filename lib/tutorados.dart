import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_01/principal.dart';

class Tutorados extends StatefulWidget {
  Tutorados({Key? key}) : super(key: key);
  @override
  _TutoradosState createState() => _TutoradosState();
}

class _TutoradosState extends State<Tutorados> {
  List<Contact> contacts = [
    Contact('Contacto 1', 'Tutor 1'),
    Contact('Contacto 2', 'Tutor 2'),
    Contact('Contacto 3', 'Tutor 3'),
  ];

  Contact? selectedContact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solicitud de Tutorados'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xff5ac18e),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: contacts.length,
                      itemBuilder: (context, index) {
                        final contact = contacts[index];
                        return ListTile(
                          title: Text(contact.name),
                          subtitle: Text('Tutor: ${contact.tutor}'),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  print('Añadir contacto: ${contact.name}');
                                },
                                child: Text('Añadir'),
                              ),
                              SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () {
                                  print('Rechazar contacto: ${contact.name}');
                                },
                                child: Text('Rechazar'),
                              ),
                            ],
                          ),
                          onTap: () {
                            setState(() {
                              selectedContact = contact;
                            });
                          },
                        );
                      },
                    ),
                  ),
                  if (selectedContact != null)
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 214, 234, 244),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Información del Tutor', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                            SizedBox(height: 8),
                            Text('Nombre: ${selectedContact!.tutor}'),
                            SizedBox(height: 8),
                            Text('Información Adicional'),
                          ],
                        ),
                      ),
                    ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => principal(),
                        ),
                      );
                    },
                    child: Text('Retroceder'),
                    style: ElevatedButton.styleFrom(
                      //primary: const Color.fromARGB(255, 214, 234, 244),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Contact {
  final String name;
  final String tutor;

  Contact(this.name, this.tutor);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tutorados(),
    );
  }
}

void main() {
  runApp(MyApp());
}
