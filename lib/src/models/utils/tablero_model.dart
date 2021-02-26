class Tablero {
  int id;
  String dimencion;

  Tablero({this.id, this.dimencion});

  factory Tablero.fromJson(Map<String, dynamic> parsedJson) {
    return Tablero(id: parsedJson['id'], dimencion: parsedJson['dimencion']);
  }

  Map<String, dynamic> toJson() => {'id': id, 'dimencion': dimencion};
}
