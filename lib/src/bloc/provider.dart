import 'package:get_it/get_it.dart';
import 'package:tictactoe/src/bloc/alert.dart';
import 'package:tictactoe/src/bloc/board.dart';
import 'package:tictactoe/src/bloc/sound.dart';

GetIt locator = new GetIt();

void setupLocator() {
  locator.registerSingleton(BoardService());
  locator.registerSingleton(SoundService());
  locator.registerSingleton(AlertService());
}
