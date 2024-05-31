import 'package:project/Model/Equipo.dart';

final List<Equipo> equipos = [
  Equipo(
    id: 1,
    nombreDeporte: 'Fútbol',
    nombreEquipo: 'Junior FC',
    fecha: DateTime.now(),
    hora: DateTime.now(),
    lugar: 'Cancha 1',
    creadorId: 101,
    jugadoresNecesarios: 10,
    buscajugadores: true,
    jugadoresIds: [201, 202, 203],
  ),
  Equipo(
    id: 2,
    nombreDeporte: 'Baloncesto',
    nombreEquipo: 'Los toñistas Humor FC',
    fecha: DateTime.now(),
    hora: DateTime.now(),
    lugar: 'Cancha 2',
    creadorId: 102,
    jugadoresNecesarios: 5,
    buscajugadores: false,
    jugadoresIds: [204, 205],
  ),
  Equipo(
    id: 20,
    nombreDeporte: 'Voleibol',
    nombreEquipo: 'Riveristas FC',
    fecha: DateTime.now(),
    hora: DateTime.now(),
    lugar: 'Cancha 3',
    creadorId: 103,
    jugadoresNecesarios: 6,
    buscajugadores: true,
    jugadoresIds: [206, 207, 208],
  ),
  // Agregando 5 equipos adicionales
  Equipo(
    id: 3,
    nombreDeporte: 'Tenis',
    nombreEquipo: 'Tenistas Profesionales',
    fecha: DateTime.now(),
    hora: DateTime.now(),
    lugar: 'Cancha 4',
    creadorId: 104,
    jugadoresNecesarios: 2,
    buscajugadores: true,
    jugadoresIds: [209, 210],
  ),
  Equipo(
    id: 4,
    nombreDeporte: 'Atletismo',
    nombreEquipo: 'Corredores Veloces',
    fecha: DateTime.now(),
    hora: DateTime.now(),
    lugar: 'Pista 1',
    creadorId: 105,
    jugadoresNecesarios: 4,
    buscajugadores: false,
    jugadoresIds: [211, 212, 213, 214],
  ),
  Equipo(
    id: 5,
    nombreDeporte: 'Natación',
    nombreEquipo: 'Nadadores Estrella',
    fecha: DateTime.now(),
    hora: DateTime.now(),
    lugar: 'Piscina Olímpica',
    creadorId: 106,
    jugadoresNecesarios: 8,
    buscajugadores: true,
    jugadoresIds: [215, 216, 217, 218, 219, 220, 221, 222],
  ),
  Equipo(
    id: 6,
    nombreDeporte: 'Ciclismo',
    nombreEquipo: 'Ciclistas Rápidos',
    fecha: DateTime.now(),
    hora: DateTime.now(),
    lugar: 'Ruta 1',
    creadorId: 107,
    jugadoresNecesarios: 3,
    buscajugadores: false,
    jugadoresIds: [223, 224, 225],
  ),
  Equipo(
    id: 7,
    nombreDeporte: 'Golf',
    nombreEquipo: 'Golfistas Pro',
    fecha: DateTime.now(),
    hora: DateTime.now(),
    lugar: 'Campo de Golf',
    creadorId: 108,
    jugadoresNecesarios: 4,
    buscajugadores: true,
    jugadoresIds: [226, 227, 228, 229],
  ),
];
