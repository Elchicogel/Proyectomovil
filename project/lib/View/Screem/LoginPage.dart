import 'package:flutter/material.dart';
import 'package:project/View/Screem/MyHomePage.dart';
import 'package:project/View/Screem/RegisterUsuario.dart';
import 'package:project/View/component/MyButton.dart';
import 'package:project/View/component/MyTextField.dart';
import 'package:project/View/component/SquareTile.dart';
import 'package:project/localstore/sharepreference.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  static const String nombre = 'login';
  final prefs = PrefernciaUsuario();

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn(BuildContext context) {
    prefs.nombreusuario = usernameController.text;
    prefs.contrasena = passwordController.text;
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      _showVerificationDialog(context);
    } else {
      Navigator.of(context).pushNamed(MyHomePage.nombre);
    }
  }

  void _showVerificationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Por favor Verifica',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
              fontFamily: 'RobotoMono',
            ),
          ),
          content: Text(
            'Por favor verifica la información ingresada.',
            style: TextStyle(
              fontFamily: 'RobotoMono',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'OK',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: 'RobotoMono',
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              // logo
              const Icon(
                Icons.person,
                size: 120,
                color: Colors.black,
              ),

              const SizedBox(height:0 ),

              // welcome back
              Text(
                'Bienvenido!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoMono',
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // sign in button
              MyButton(
                onTap: () {
                  signUserIn(context); // Pasa el contexto
                },
              ),

              const SizedBox(height: 20),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                   
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

            

              const SizedBox(height: 20),

             
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(RegisterUsuario.nombre);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.black),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
