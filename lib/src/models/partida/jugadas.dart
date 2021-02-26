import '../jugador/jugador_model.dart';
import 'partida_model.dart';

class Jugadas {
  int id;
  Partida partida;
  Jugador jugador;
  String posicion;
  int turno;

  Jugadas({this.id, this.partida, this.jugador, this.posicion, this.turno});
}
