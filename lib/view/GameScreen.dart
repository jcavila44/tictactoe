import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/bloc/bord_bloc.dart';
import 'package:tictactoe/components/GameScreen/Bord.dart';
import 'package:tictactoe/components/GameScreen/Players.dart';
import 'package:tictactoe/helpers/CustomTheme.dart';
import 'package:tictactoe/helpers/particles.dart';

class GameScreen extends StatefulWidget {
  final String secondPlayer;
  final String nickPlayer1;
  final String nickPlayer2;
  final bool botPlayer;
  final int difficultyLevel;
  GameScreen(
      {this.secondPlayer,
      this.botPlayer,
      this.difficultyLevel,
      this.nickPlayer1,
      this.nickPlayer2});

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> with CustomTheme {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () => showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            title: Text('Warning'),
            content: Text('Do you really want to quit?'),
            actions: [
              FlatButton(
                child: Text('Yes'),
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  return true;
                },
              ),
              FlatButton(
                child: Text('No'),
                onPressed: () => Navigator.pop(context, false),
              ),
            ],
          );
        },
      ),
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
                      isPlayerTwoBot: widget.botPlayer,
                      difficulty: widget.difficultyLevel,
                      nickPlayer1: widget.nickPlayer1,
                      nickPlayer2: widget.nickPlayer2),
                  SizedBox(
                    width: size.width,
                  ),
                  Bord(
                    widget.botPlayer,
                    widget.nickPlayer1,
                    widget.nickPlayer2,
                    difficultyLevel: widget.difficultyLevel,
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
