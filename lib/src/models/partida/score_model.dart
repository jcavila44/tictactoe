import 'package:tictactoe/src/models/jugador/jugador_model.dart';
import 'package:tictactoe/src/models/partida/partida_model.dart';
import 'package:tictactoe/src/models/utils/puntos.dart';

class Score {
  int id;
  Partida partida;
  Jugador jugador;
  Puntos puntos;

  Score({this.id, this.partida, this.jugador, this.puntos});
}
