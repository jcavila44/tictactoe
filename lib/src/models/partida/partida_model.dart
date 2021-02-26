class Partida {
  int idPartida;
  String idDimension;
  DateTime fechaReg;

  Partida({this.idPartida, this.idDimension, this.fechaReg});

  factory Partida.fromJson(Map<String, dynamic> parsedJson) {
    return Partida(
        idPartida: parsedJson['idPartida'],
        idDimension: parsedJson['idDimension'],
        fechaReg: parsedJson['fechaReg']);
  }

  Map<String, dynamic> toJson() => {
        'idPartida': idPartida,
        'idDimension': idDimension,
        'fechaReg': fechaReg,
      };
}
