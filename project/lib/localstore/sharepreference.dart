import 'package:shared_preferences/shared_preferences.dart';

class PrefernciaUsuario {
  static final PrefernciaUsuario _instancia = PrefernciaUsuario._internal();

  factory PrefernciaUsuario() {
    return _instancia;
  }

  PrefernciaUsuario._internal();

  late SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  set nombreusuario(String value) {
    _prefs.setString('nombreusuario', value);
  }

  String get contrasena {
    return _prefs.getString('contrasena') ?? "contrasena incorrecta";
  }

  String get nombreusuario {
    return _prefs.getString('nombreusuario') ?? "usuario no encontrado";
  }

  set contrasena(String value) {
    _prefs.setString('contrasena', value);
  }
}
