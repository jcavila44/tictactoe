class Puntos {
  int idPuntos;
  String codigo;
  int valor;

  Puntos({this.idPuntos, this.codigo, this.valor});

  factory Puntos.fromJson(Map<String, dynamic> parsedJson) {
    return Puntos(
        idPuntos: parsedJson['idPuntos'],
        codigo: parsedJson['codigo'],
        valor: parsedJson['valor']);
  }

  Map<String, dynamic> toJson() =>
      {'idPuntos': idPuntos, 'codigo': codigo, 'valor': valor};
}
