class Partida {
  int id_partida;
  String nombre;

  Partida({this.id_partida, this.nombre});

  factory Partida.fromJson(Map<String, dynamic> parsedJson) {
    return Partida(
        id_partida: parsedJson['id_partida'], nombre: parsedJson['nombre']);
  }

  Map<String, dynamic> toJson() => {
        'id_partida': id_partida,
        'nombre': nombre,
      };
}
