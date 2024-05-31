import 'package:flutter/material.dart';
import 'package:project/Data/EquipoData.dart';
import 'package:project/View/Widget/AppBarW.dart';
import 'package:project/View/Widget/drawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static const String nombre = 'MyHomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW(title: 'Bienvenido'),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: equipos.length,
        itemBuilder: (context, index) {
          final equipo = equipos[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 85,
            shadowColor: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.sports_soccer),
                    radius: 30,
                  ),
                  SizedBox(height: 8),
                  Text(
                    equipo.nombreDeporte ?? "",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Equipo: ${equipo.nombreEquipo}',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Lugar: ${equipo.lugar}',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Jugadores necesarios: ${equipo.jugadoresNecesarios}',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      drawer: DrawerW(user: "Martin", correo: "Martin@gmail.com"),
    );
  }
}
