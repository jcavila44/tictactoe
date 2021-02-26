class Jugador {
  int idJugador;
  String nombre;
  DateTime fechaReg;

  Jugador({this.idJugador, this.nombre, this.fechaReg});

  factory Jugador.fromJson(Map<String, dynamic> parsedJson) {
    return Jugador(
        idJugador: parsedJson['idJugador'],
        nombre: parsedJson['nombre'],
        fechaReg: parsedJson['fechaReg']);
  }

  Map<String, dynamic> toJson() => {
        'idJugador': idJugador,
        'nombre': nombre,
        'fechaReg': fechaReg,
      };
}
