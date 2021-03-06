import 'package:tictactoe/model/jugador/jugador_model.dart';
import 'package:tictactoe/model/partida/partida_model.dart';
import 'package:tictactoe/model/utils/puntos.dart';

class Score {
  int id;
  Partida partida;
  Jugador jugador;
  Puntos puntos;

  Score({this.id, this.partida, this.jugador, this.puntos});
}
