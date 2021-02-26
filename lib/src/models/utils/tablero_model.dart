class Tablero {
  int id;
  String dimension;

  Tablero({this.id, this.dimension});

  factory Tablero.fromJson(Map<String, dynamic> parsedJson) {
    return Tablero(id: parsedJson['id'], dimension: parsedJson['dimension']);
  }

  Map<String, dynamic> toJson() => {'id': id, 'dimension': dimension};
}
