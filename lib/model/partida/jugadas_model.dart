import 'package:tictactoe/model/jugador/jugador_model.dart';
import 'package:tictactoe/model/partida/partida_model.dart';

class Jugadas {
  int id;
  Partida partida;
  Jugador jugador;
  String posicion;
  int turno;

  Jugadas({this.id, this.partida, this.jugador, this.posicion, this.turno});
}
