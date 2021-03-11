import 'package:flutter_test/flutter_test.dart';
import 'package:tictactoe/bloc/bord_bloc.dart';

void main() {
  group('Players', () {
    test('Test turno jugador X', () {
      final player = BordBloc();

      player.playerOneTurn = false;
      player.updateBord(2);

      expect(player.playerOneTurn, true);
    });

    test('Test turno jugador O', () {
      final player = BordBloc();

      player.updateBord(1);

      expect(player.playerOneTurn, false);
    });
  });
}
