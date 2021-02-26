class Jugador {
  int id;
  String nombre;

  Jugador({this.id, this.nombre});

  factory Jugador.fromJson(Map<String, dynamic> parsedJson) {
    return Jugador(id: parsedJson['id'], nombre: parsedJson['nombre']);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
      };
}
