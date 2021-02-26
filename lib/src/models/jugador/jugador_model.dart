class Jugador {
  int id;
  String nombre;
  DateTime fechaReg;

  Jugador({this.id, this.nombre, this.fechaReg});

  factory Jugador.fromJson(Map<String, dynamic> parsedJson) {
    return Jugador(
        id: parsedJson['id'],
        nombre: parsedJson['nombre'],
        fechaReg: parsedJson['fechaReg']);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaReg': fechaReg,
      };
}
