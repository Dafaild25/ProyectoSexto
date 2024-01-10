import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('imagenes/bat.jpg'),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Info',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 49, 54, 107),
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Bat Alert',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Alertas Generadas',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Tutorados',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Salir',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 226, 100, 69),
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
