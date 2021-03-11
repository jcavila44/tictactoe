import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/bloc/bord_bloc.dart';
import 'package:tictactoe/components/GameView/Bord.dart';
import 'package:tictactoe/components/GameView/Players.dart';
import 'package:tictactoe/helpers/CustomTheme.dart';
import 'package:tictactoe/helpers/particles.dart';

class GameView extends StatefulWidget {
  final String secondPlayer;
  final String nickPlayer1;
  final String nickPlayer2;
  GameView({this.secondPlayer, this.nickPlayer1, this.nickPlayer2});

  @override
  _GameViewState createState() => _GameViewState();
}

class _GameViewState extends State<GameView> with CustomTheme {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {},
      child: Material(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: sbgColor,
                ),
              ),
            ),
            Particle(size.height, size.width),
            BlocProvider<BordBloc>(
              create: (context) => BordBloc(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Players(
                      nickPlayer1: widget.nickPlayer1,
                      nickPlayer2: widget.nickPlayer2),
                  SizedBox(
                    width: size.width,
                  ),
                  Bord(
                    widget.nickPlayer1,
                    widget.nickPlayer2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}