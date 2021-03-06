import 'dart:async';
//import 'dart:math';
import '../bloc/helpers.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bord_event.dart';
part 'bord_state.dart';

class BordBloc extends Bloc<BordEvent, BordState> {
  final List<int> _bordState = [5, 5, 5, 5, 5, 5, 5, 5, 5];
  bool playerOneTurn = true;
  int currentMove = 0;
  int winner;

  List<int> get getBordState => _bordState;

  @override
  BordInitial get initialState => BordInitial();

  @override
  Stream<BordState> mapEventToState(
    BordEvent event,
  ) async* {
    if (event is Tap) {
      currentMove++;
      updateBord(event.index);
      winner = checkWinner(_bordState);
      if (winner != null) {
        yield GameResult(_bordState, result: winner);
      } else {
        yield UpdateBord(bordState: _bordState);
      }
    }
  }

  void updateBord(int index) {
    if (_bordState[index] != 0 && _bordState[index] != 1) {
      _bordState[index] = 1;
      playerOneTurn = true;
    }
  }
}
