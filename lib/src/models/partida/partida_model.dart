import 'package:tictactoe/src/models/utils/tablero_model.dart';

class Partida {
  int id;
  Tablero tablero;
  DateTime fechaReg;

  Partida({this.id, this.tablero, this.fechaReg});
}
