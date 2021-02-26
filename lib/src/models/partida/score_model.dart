import 'package:tictactoe/src/models/jugador/jugador_model.dart';
import 'package:tictactoe/src/models/partida/partida_model.dart';

class Score {
  int id;
  Partida partida;
  Jugador jugador;
  int puntaje;

  Score({this.id, this.partida, this.jugador, this.puntaje});

  factory Score.fromJson(Map<String, dynamic> parsedJson) {
    return Score(
      id: parsedJson['id'],
      partida: Partida.fromJson(parsedJson['partida']),
      jugador: Jugador.fromJson(parsedJson['jugador']),
      puntaje: parsedJson['puntaje'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'partida': partida,
        'jugador': jugador,
        'puntaje': puntaje,
      };
}
