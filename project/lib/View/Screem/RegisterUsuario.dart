import 'package:flutter/material.dart';
import 'package:project/Data/UsuarioData.dart';
import 'package:project/Model/Usuario.dart';
import 'package:project/View/Screem/LoginPage.dart';
import 'package:project/View/Widget/AppBarW.dart';

class RegisterUsuario extends StatefulWidget {
  const RegisterUsuario({Key? key}) : super(key: key);
  static const String nombre = 'RegisterUsuario';

  @override
  State<RegisterUsuario> createState() => _RegisterUsuarioState();
}

class _RegisterUsuarioState extends State<RegisterUsuario> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contrasenaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW(
        title: 'Registrar Usuario',
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _nombreController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                icon: Icon(Icons.person),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu nombre';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu email';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _contrasenaController,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Por favor ingresa tu contraseña';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_nombreController.text.isNotEmpty &&
                    _emailController.text.isNotEmpty &&
                    _contrasenaController.text.isNotEmpty) {
                  int nextId = usuarios.length + 1;
                  Usuario nuevoUsuario = Usuario(
                    id: nextId,
                    nombre: _nombreController.text,
                    email: _emailController.text,
                    contrasena: _contrasenaController.text,
                    puntuacion: 0.0,
                    comentarios: [],
                  );

                  usuarios.add(nuevoUsuario);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Usuario registrado exitosamente'),
                    ),
                  );
                  Navigator.of(context).pushNamed(LoginPage.nombre);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Por favor completa todos los campos'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: Text('Registrar'),
            ),
          ],
        ),
      ),
    );
  }
}
