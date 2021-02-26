import 'package:tictactoe/src/models/utils/tablero_model.dart';

class Partida {
  int id;
  Tablero tablero;
  DateTime fechaReg;

  Partida({this.id, this.tablero, this.fechaReg});

  factory Partida.fromJson(Map<String, dynamic> parsedJson) {
    return Partida(
        id: parsedJson['id'],
        tablero: Tablero.fromJson(parsedJson['tablero']),
        fechaReg: parsedJson['fechaReg']);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'tablero': tablero,
        'fechaReg': fechaReg,
      };
}
