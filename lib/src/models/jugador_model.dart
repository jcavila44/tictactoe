class Jugador {
  int id;
  String nombre;
  int edad;
  String correo;

  Jugador({this.id, this.nombre, this.edad, this.correo});

  factory Jugador.fromJson(Map<String, dynamic> parsedJson) {
    return Jugador(
        id: parsedJson['id'],
        nombre: parsedJson['nombre'],
        edad: parsedJson['edad'],
        correo: parsedJson['correo']);
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'edad': edad,
        'correo': correo,
      };
}
