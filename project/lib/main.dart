import 'package:flutter/material.dart';
import 'package:project/View/Widget/MyApp.dart';
import 'package:project/localstore/sharepreference.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = PrefernciaUsuario();
  await prefs.initPrefs();
  runApp(const MyApp());
}
