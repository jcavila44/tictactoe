import '../jugador/jugador_model.dart';
import 'partida_model.dart';

class Jugadas {
  int id;
  Partida partida;
  Jugador jugador;
  String posicion;
  int turno;


  Jugadas({this.id, this.partida, this.jugador, this.posicion, this.turno});

  factory Jugadas.fromJson(Map<String, dynamic> parsedJson) {
    return Jugadas(
        id: parsedJson['id'], partida: Partida.fromJson(parsedJson['partida']), jugador: Jugador.fromJson(parsedJson['jugador']), posicion: parsedJson['posicion'], turno: parsedJson['turno']);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'partida': partida,
        'jugador': jugador,
        'posicion': posicion,
        'turno': turno,
      };
}
