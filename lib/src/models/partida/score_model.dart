import 'package:tictactoe/src/models/jugador/jugador_model.dart';
import 'package:tictactoe/src/models/partida/partida_model.dart';
import 'package:tictactoe/src/models/puntos/puntos.dart';

class Score {
  int id;
  Partida partida;
  Jugador jugador;
  Puntos puntos;

  Score({this.id, this.partida, this.jugador, this.puntos});

  factory Score.fromJson(Map<String, dynamic> parsedJson) {
    return Score(
      id: parsedJson['id'],
      partida: Partida.fromJson(parsedJson['partida']),
      jugador: Jugador.fromJson(parsedJson['jugador']),
      puntos: Puntos.fromJson(parsedJson['puntos']),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'partida': partida,
        'jugador': jugador,
        'puntos': puntos,
      };
}
