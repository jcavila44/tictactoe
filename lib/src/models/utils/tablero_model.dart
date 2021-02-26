class Jugador {
  int id;
  String dimencion;

  Jugador({this.id, this.dimencion});

  factory Jugador.fromJson(Map<String, dynamic> parsedJson) {
    return Jugador(id: parsedJson['id'], dimencion: parsedJson['dimencion']);
  }

  Map<String, dynamic> toJson() => {'id': id, 'dimencion': dimencion};
}
