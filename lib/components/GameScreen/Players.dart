import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/bloc/bord_bloc.dart';
import 'package:tictactoe/helpers/CustomTheme.dart';

class Players extends StatefulWidget {
  final String nickPlayer1;
  final String nickPlayer2;

  Players({@required this.nickPlayer1, @required this.nickPlayer2});
  @override
  _PlayersState createState() => _PlayersState();
}

class _PlayersState extends State<Players> with CustomTheme {
  BordBloc bordBloc;
  String playerTwoAvatar;
  String playerTwoName;
  String playerOneName;

  @override
  void initState() {
    playerTwoAvatar = 'assets/p1.jpg';
    playerOneName = widget.nickPlayer1;
    playerTwoName = widget.nickPlayer2;

    super.initState();
  }

  @override
  void dispose() {
    bordBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bordBloc = BlocProvider.of<BordBloc>(context);

    return BlocBuilder<BordBloc, BordState>(
      bloc: bordBloc,
      builder: (context, state) {
        Color color1;
        Color color2;
        if (bordBloc.playerOneTurn) {
          color1 = Colors.yellow;
          color2 = Colors.transparent;
        } else {
          color1 = Colors.transparent;
          color2 = Colors.red;
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildPlayerBox(color1, true),
            buildPlayerBox(color2, false),
          ],
        );
      },
    );
  }

  Widget buildPlayerBox(Color color, bool isPlayerOne) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: color, width: 4),
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff28175D),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Padding(
              padding: (isPlayerOne) ? EdgeInsets.all(0) : EdgeInsets.all(10),
              child: Image.asset(
                (isPlayerOne) ? 'assets/p1.jpg' : playerTwoAvatar,
                scale: 1.8,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            (isPlayerOne) ? playerOneName : playerTwoName,
            style: TextStyle(
              fontFamily: "acme",
              fontSize: 20,
              color: playerText,
            ),
          ),
          (isPlayerOne)
              ? Image.asset(
                  'assets/py.jpg',
                  scale: 1.7,
                )
              : Image.asset(
                  'assets/px.jpg',
                  scale: 2,
                ),
        ],
      ),
    );
  }
}
