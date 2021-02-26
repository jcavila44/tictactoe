class Puntos {
  int id;
  String codigo;
  int valor;

  Puntos({this.id, this.codigo, this.valor});

  factory Puntos.fromJson(Map<String, dynamic> parsedJson) {
    return Puntos(
        id: parsedJson['id'],
        codigo: parsedJson['codigo'],
        valor: parsedJson['valor']);
  }

  Map<String, dynamic> toJson() => {'id': id, 'codigo': codigo, 'valor': valor};
}
