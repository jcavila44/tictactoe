import 'package:flutter_test/flutter_test.dart';
import 'package:tictactoe/bloc/bord_bloc.dart';

void main() {
  test('Prueba unitaria', () {
    final counter = BordBloc();

    counter.updateBord(1);

    expect(counter.playerOneTurn, true);
  });
}
