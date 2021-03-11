import 'package:flutter_test/flutter_test.dart';
import 'package:tictactoe/bloc/bord_bloc.dart';

void main() {
  group('Players', () {
    test('Test un jugador', () {
      final player = BordBloc();

      player.updateBord(0);

      expect(player.playerOneTurn, true);
    });

    test('Test dos jugadores', () {
      final player = BordBloc();

      player.updateBord(2);

      expect(player.playerOneTurn, false);
    });
  });
}
