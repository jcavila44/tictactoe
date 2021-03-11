import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/helpers/CustomTheme.dart';
import 'package:tictactoe/helpers/particles.dart';
import 'package:tictactoe/view/HomeScreen.dart';

class Results extends StatefulWidget {
  final int result;
  final bool turn;
  final String nickPlayer1;
  final String nickPlayer2;

  Results(
      {@required this.result, this.turn, this.nickPlayer1, this.nickPlayer2});
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> with CustomTheme {
  String winningImage;
  String winningText;

  @override
  void initState() {
    print("resultado" + widget.result.toString());
    if (widget.result == 1) {
      winningImage = "assets/win.png";
      winningText = "Ganador: " + widget.nickPlayer1;
    } else if (widget.result == -1) {
      winningImage = "assets/win.png";
      winningText = "Ganador: " + widget.nickPlayer2;
    } else {
      winningImage = "assets/draw.png";
      winningText = "Empate!";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: size.width),
              Image.asset(
                winningImage,
                scale: 3,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                winningText,
                style: TextStyle(
                  fontFamily: "Acme",
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  // Navigator.of(context).popUntil(
                  //   (route) => route.isFirst,
                  // );

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xfff5af19),
                        Color(0xfff12711),
                      ],
                    ),
                  ),
                  child: Icon(
                    Icons.replay,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}