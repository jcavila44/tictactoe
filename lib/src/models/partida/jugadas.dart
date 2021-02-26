class jugadas {
  int id_jugadas;
  int id_partida;
  int id_jugador;
  String posicion;
  int turno;


  jugadas({this.id_jugadas, this.id_partida, this.id_jugador, this.posicion, this.turno});

  factory jugadas.fromJson(Map<String, dynamic> parsedJson) {
    return jugadas(
        id_jugadas: parsedJson['id_jugadas'], id_partida: parsedJson['id_partida'], id_jugador: parsedJson['id_jugador'], posicion: parsedJson['posicion'], turno: parsedJson['turno']);
  }

  Map<String, dynamic> toJson() => {
        'id_jugadas': id_jugadas,
        'id_partida': id_partida,
        'id_jugador': id_jugador,
        'posicion': posicion,
        'turno': turno,
      };
}
